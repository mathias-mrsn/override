## LEVEL 09
---
### For a better understanding of the levels and the solutions, I recommend you to read the [disassemble file](./asm/level09.asm) and the [source file](./src/level09.c). This README only contains the most important parts to solve the level.
---
### Security
```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      FILE
Partial RELRO   No canary found   NX enabled    PIE enabled     No RPATH   No RUNPATH   /home/users/level09/level09
```
For this bonus level, NX is enabled. This means that we can't execute external code but the stack canary is disabled. And PIE is enabled, so the addresses of the functions are randomized.
---
