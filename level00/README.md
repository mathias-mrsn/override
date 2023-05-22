## LEVEL 00
---
### For a better understanding of the levels and the solutions, I recommend you to read the [disassemble file](./asm/level00.asm) and the [source file](./src/level00.c). This README only contains the most important parts to solve the level.
---

Before providing the explanation, I would like to mention something. When you connect to the VM, you can see this message:
```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      FILE
Partial RELRO   No canary found   NX enabled    No PIE          No RPATH   No RUNPATH   /home/users/level00/level00
```
This level has more security measures than rainfall, which means that certain attacks, such as buffer overflow, are much more complex.

Now we can solve this really easy level. Here is the few lines to understand :
```shell
0x080484de <+74>:	call   0x80483d0 <__isoc99_scanf@plt>
0x080484e7 <+83>:	cmp    $0x149c,%eax
```

In this level, `scanf` is used to get the user input then the user input is compared to `0x149c` (5276 in decimal). So we just have to enter `5276` to get the flag.

```shell
$ ./level00
***********************************
* 	     -Level00 -		  *
***********************************
Password:5276

Authenticated!
$ whoami
level01
$ cat /home/users/level01/.pass
uSq2ehEGT6c9S24zbshexZQBXUGrncxn5sD5QfGL
```
