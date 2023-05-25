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