## LEVEL 03
---
### For a better understanding of the levels and the solutions, I recommend you to read the [disassemble file](./asm/level03.asm) and the [source file](./src/level03.c). This README only contains the most important parts to solve the level.
---
### Security

```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      FILE
Partial RELRO   Canary found      NX enabled    No PIE          No RPATH   No RUNPATH   /home/users/level03/level03
```
For this level, the NX security is enabled. NX security is a security mechanism that protects the executable space and prevents the execution of code from the stack. The second security mechanism is the stack canary. It is a random value of padding set at compilation time to avoid exploiting a specific address. These two security measures prevent us from using techniques such as buffer overflow or shellcode injection. Therefore, we will need to find an alternative approach.
---

This level has a lengthy and complex disassembled code, making it challenging to decompile. However, after hard work, I have realized that the solution is surprisingly simple.

I recommend that you read the entire source code because I will only show you the most important parts necessary to solve the level.

First I need to know how I will get the flag.

```c
if (strncmp((char *)&t[0], "Congratulations!", 17) == 0)
{
    system("/bin/sh");
}
```

Perfect, the code can execute a shell if the string "Congratulations!" is equal to the string in the variable t. Now I need to know what is `t`.

```c
uint32_t t[4] = {
    0x757c7d51, // -0x1d(%ebp)
    0x67667360, // -0x19(%ebp)
    0x7b66737e, // -0x15(%ebp)
    0x33617c7d // -0x11(%ebp)
};
```

`t` is an array of 4 integers. That can be convert in string like this : ```Q}|u`sfg~sf{}|a3``` and this string will be compared to `Congratulations!`. So how can I change the buffer `t` to `Congratulations!`?

```c
len = strlen((char *)&t[0]);
while (k != len)
{
    *(t+k) = *(t+k) ^ n;
    k++;
}
```

Before to compare the string, the code will XOR each character of the buffer `t` with the value of the variable `n`. So maybe `t` can be transform with the perfect `n` value.

By using [this website]("https://www.dcode.fr/xor-cipher") I found if `n` = 0x12 then `t` will be equal to `Congratulations!`. So now I need to have `n` equal to 0x12.

Let's see where this `n` value comes from.

```c
int32_t main (__attribute__((unused))int32_t argc, __attribute__((unused))char **argv)
{
    uint32_t n;
[...]
    scanf("%d", &n);
    test(n, 0x1337d00d);
[...]

void test (uint32_t i, uint32_t j)
{
    uint32_t n = j - i;
[...]
    decrypt(n);
[...]}
}
```
Perfect so if we want to have the perfect `n` value I need to solve this basic equation : `322424845 - x = 18`. So `x` will be equal to `322424827` and this is the value that I need to give to the program.

```shell
$ ./level03
***********************************
*		level03		**
***********************************
Password:322424827
$ whoami
level04
$ cat /home/users/level04/.pass
kgv3tkEb9h2mLkRsPkXRfc2mHbjMxQzvb2FrgKkf
```