## LEVEL 06
---
### For a better understanding of the levels and the solutions, I recommend you to read the [disassemble file](./asm/level06.asm) and the [source file](./src/level06.c). This README only contains the most important parts to solve the level.
---
### Security
```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      FILE
Partial RELRO   Canary found      NX enabled    No PIE          No RPATH   No RUNPATH   /home/users/level06/level06
```

Almost every securities are activated on this level. So the usage of buffer overflow or any technique based on changing addresses is impossible.
---

The most difficult part of this level is to dissassemble the code. Indeed, the code is very long and complex. I recommend that you read the entire source code because I will only show you how to solve this level.

This level is pretty simple. The `main` function asks us two inputs, the first one is a string and the second one is a number. Then it will calls the function `auth` this function has a `n` variable that is compute depending on the string by a unknown algorithm. If `n` is equal to the number we entered, then the function return `0` and `main` calls `system`.

If we look the code, `auth` does not have any `rand` calls to randomize the `n` value. So the `n` value will always be the same for the same string. So if we use GDB we can see the result of the algorithm for a defined string.

The last thing to do but not the least, is that `auth` calls `ptrace` to prevent debugging. So we need to jump over this call to be able see the variable `n` value.

```shell
(gdb) b *0x080487ae
Breakpoint 1 at 0x80487ae
(gdb) b *0x08048877
Breakpoint 2 at 0x8048877
(gdb) r
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /home/users/level06/level06
***********************************
*		level06		  *
***********************************
-> Enter Login: imtheinput
***********************************
***** NEW ACCOUNT DETECTED ********
***********************************
-> Enter Serial: 1

Breakpoint 1, 0x080487ae in auth ()
```

Notice that the first input length must be greater than 5 characters. Otherwise, the program will exit.


```shell
(gdb) jump *0x080487ed
Continuing at 0x80487ed.

Breakpoint 2, 0x08048877 in auth ()
(gdb) x/d $ebp-0x10
0xffffd698:	6236473
```

Now I can try this string with the number `6236473` and it should work.

```shell
$ ./level06
***********************************
*		level06		  *
***********************************
-> Enter Login: imtheinput
***********************************
***** NEW ACCOUNT DETECTED ********
***********************************
-> Enter Serial: 6236473
Authenticated!
$ whoami
level07
$ cat /home/users/level07/.pass
GbcPDRgsFK77LNnnuh7QyFYA2942Gp8yKj9KrWD8
```