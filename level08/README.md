## LEVEL 08
---
### For a better understanding of the levels and the solutions, I recommend you to read the [disassemble file](./asm/level08.asm) and the [source file](./src/level08.c). This README only contains the most important parts to solve the level.
---
### Security
```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      FILE
Full RELRO      Canary found      NX disabled   No PIE          No RPATH   No RUNPATH   /home/users/level08/level08
```
In this level NX is disabled, so we can execute shellcode from the stack. But we not going to need it.
---

It seems that the last level is one of the easiest levels. I will take the time to explain what this binary does.

This executable is a backup program. It takes a file as an argument and copies it to the `./backups/` directory. The program first checks if the number of arguments is 2. If it's not, it prints the usage and exits. Then, it opens the `./backups/.log` file and writes `Starting back up: <argument>` to it. The `<argument>` part is a format string, indicating the presence of a vulnerability. After that, it opens the file provided as an argument and copies it to a file in the `./backups/` directory with the same name.

Perfect! Let's proceed with the first input that comes to my mind, using the path of the `pass` file from `level09` as the first argument.

```
$ ./level08 /home/users/level09/.pass
ERROR: Failed to open ./backups//home/users/level09/.pass
```

Ok so we cannot open the file because the directory `./backups/home/users/level09/` does not exist. And we cannot create it because we don't have the permission to do so. To solve this error we need to focus on a line in the source code.

```c
strcpy(local_70, "./backups/");
```

This line shows us that the third open use a relative path not a absolute path. So if we can a directory like this : `./backups/home/users/level09/`.
Then we can run this executable with the argument `/home/users/level09/.pass` and it will create the file `./backups/home/users/level09/.pass`. This would work because our argument is a absolute path.

```shell
$ mkdir -p /tmp/backups/home/users/level09
$ cd /tmp
$ ~/level08 /home/users/level09/.pass
$ cat backups/home/users/level09/.pass
fjAwpJNs2vvkFLRebEvAQ2hFZ4uQBWfHRsP62d8S
```
