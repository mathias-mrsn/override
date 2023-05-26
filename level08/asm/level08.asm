main:
    0x00000000004009f0 <+0>:	push   %rbp					; Save previous base pointer
    0x00000000004009f1 <+1>:	mov    %rsp,%rbp				; Set current stack frame as new base pointer
    0x00000000004009f4 <+4>:	sub    $0xb0,%rsp				; Allocate space on the stack for local variables
    0x00000000004009fb <+11>:	mov    %edi,-0x94(%rbp)		; Store the first argument (integer) on the stack
    0x0000000000400a01 <+17>:	mov    %rsi,-0xa0(%rbp)		; Store the second argument (string) on the stack
    0x0000000000400a08 <+24>:	mov    %fs:0x28,%rax			; Get the address of the current thread's local storage
    0x0000000000400a11 <+33>:	mov    %rax,-0x8(%rbp)		; Save the address in the stack frame for later use
    0x0000000000400a15 <+37>:	xor    %eax,%eax				; Set the value of EAX to 0
    0x0000000000400a17 <+39>:	movb   $0xff,-0x71(%rbp)		; Set the value at address -0x71 on the stack to 0xff
    0x0000000000400a1b <+43>:	movl   $0xffffffff,-0x78(%rbp)	; Set the value at address -0x78 on the stack to -1
    0x0000000000400a22 <+50>:	cmpl   $0x2,-0x94(%rbp)		; Compare the value at address -0x94 on the stack with 2
    0x0000000000400a29 <+57>:	je     0x400a4a <main+90>		; Jump to main+90 if the comparison is true (equal)
    0x0000000000400a2b <+59>:	mov    -0xa0(%rbp),%rax		; Move the value at address -0xa0 on the stack to RAX
    0x0000000000400a32 <+66>:	mov    (%rax),%rdx				; Move the value at the address stored in RAX to RDX
    0x0000000000400a35 <+69>:	mov    $0x400d57,%eax			; Move the address 0x400d57 to EAX
    0x0000000000400a3a <+74>:	mov    %rdx,%rsi				; Move the value in RDX to RSI
    0x0000000000400a3d <+77>:	mov    %rax,%rdi				; Move the value in EAX to RDI
    0x0000000000400a40 <+80>:	mov    $0x0,%eax				; Set the value of EAX to 0
    0x0000000000400a45 <+85>:	callq  0x400730 <printf@plt>	; Call the printf function
    0x0000000000400a4a <+90>:	mov    $0x400d6b,%edx			; Move the address 0x400d6b to EDX
    0x0000000000400a4f <+95>:	mov    $0x400d6d,%eax			; Move the address 0x400d6d to EAX
    0x0000000000400a54 <+100>:	mov    %rdx,%rsi				; Move the value in EDX to RSI
    0x0000000000400a57 <+103>:	mov    %rax,%rdi				; Move the value in EAX to RDI
    0x0000000000400a5a <+106>:	callq  0x4007c0 <fopen@plt>	; Call the fopen function
    0x0000000000400a5f <+111>:	mov    %rax,-0x88(%rbp)		; Store the result of fopen in the stack frame
    0x0000000000400a66 <+118>:	cmpq   $0x0,-0x88(%rbp)		; Compare the value at address -0x88 on the stack with 0
    0x0000000000400a6e <+126>:	jne    0x400a91 <main+161>	; Jump to main+161 if the comparison is not equal
    0x0000000000400a70 <+128>:	mov    $0x400d7c,%eax			; Move the address 0x400d7c to EAX
    0x0000000000400a75 <+133>:	mov    $0x400d6d,%esi			; Move the address 0x400d6d to ESI
    0x0000000000400a7a <+138>:	mov    %rax,%rdi				; Move the value in EAX to RDI
    0x0000000000400a7d <+141>:	mov    $0x0,%eax				; Set the value of EAX to 0
    0x0000000000400a82 <+146>:	callq  0x400730 <printf@plt>	; Call the printf function
    0x0000000000400a87 <+151>:	mov    $0x1,%edi				; Move the value 1 to EDI
    0x0000000000400a8c <+156>:	callq  0x4007d0 <exit@plt>		; Call the exit function
    0x0000000000400a91 <+161>:	mov    -0xa0(%rbp),%rax		; Move the value at address -0xa0 on the stack to RAX
    0x0000000000400a98 <+168>:	add    $0x8,%rax				; Add 8 to the value in RAX
    0x0000000000400a9c <+172>:	mov    (%rax),%rdx				; Move the value at the address stored in RAX to RDX
    0x0000000000400a9f <+175>:	mov    -0x88(%rbp),%rax		; Move the value at address -0x88 on the stack to RAX
    0x0000000000400aa6 <+182>:	mov    $0x400d96,%esi			; Move the address 0x400d96 to ESI
    0x0000000000400aab <+187>:	mov    %rax,%rdi				; Move the value in RAX to RDI
    0x0000000000400aae <+190>:	callq  0x4008c4 <log_wrapper>	; Call the log_wrapper function
    0x0000000000400ab3 <+195>:	mov    $0x400da9,%edx			; Move the address 0x400da9 to EDX
    0x0000000000400ab8 <+200>:	mov    -0xa0(%rbp),%rax		; Move the value at address -0xa0 on the stack to RAX
    0x0000000000400abf <+207>:	add    $0x8,%rax				; Add 8 to the value in RAX
    0x0000000000400ac3 <+211>:	mov    (%rax),%rax				; Move the value at the address stored in RAX to RAX
    0x0000000000400ac6 <+214>:	mov    %rdx,%rsi				; Move the value in EDX to RSI
    0x0000000000400ac9 <+217>:	mov    %rax,%rdi				; Move the value in RAX to RDI
    0x0000000000400acc <+220>:	callq  0x4007c0 <fopen@plt>	; Call the fopen function
    0x0000000000400ad1 <+225>:	mov    %rax,-0x80(%rbp)		; Store the result of fopen in the stack frame
    0x0000000000400ad5 <+229>:	cmpq   $0x0,-0x80(%rbp)		; Compare the value at address -0x80 on the stack with 0
    0x0000000000400ada <+234>:	jne    0x400b09 <main+281>	; Jump to main+281 if the comparison is not equal
    0x0000000000400adc <+236>:	mov    -0xa0(%rbp),%rax		; Move the value at address -0xa0 on the stack to RAX
    0x0000000000400ae3 <+243>:	add    $0x8,%rax				; Add 8 to the value in RAX
    0x0000000000400ae7 <+247>:	mov    (%rax),%rdx				; Move the value at the address stored in RAX to RDX
    0x0000000000400aea <+250>:	mov    $0x400d7c,%eax			; Move the address 0x400d7c to EAX
    0x0000000000400aef <+255>:	mov    %rdx,%rsi				; Move the value in RDX to RSI
    0x0000000000400af2 <+258>:	mov    %rax,%rdi				; Move the value in EAX to RDI
    0x0000000000400af5 <+261>:	mov    $0x0,%eax				; Set the value of EAX to 0
    0x0000000000400afa <+266>:	callq  0x400730 <printf@plt>	; Call the printf function
    0x0000000000400aff <+271>:	mov    $0x1,%edi				; Move the value 1 to EDI
    0x0000000000400b04 <+276>:	callq  0x4007d0 <exit@plt>		; Call the exit function
    0x0000000000400b09 <+281>:	mov    $0x400dab,%edx			; Move the address 0x400dab to EDX
    0x0000000000400b0e <+286>:	lea    -0x70(%rbp),%rax		; Calculate the address of -0x70 on the stack and store it in RAX
    0x0000000000400b12 <+290>:	mov    (%rdx),%rcx				; Move the value at the address stored in RDX to RCX
    0x0000000000400b15 <+293>:	mov    %rcx,(%rax)				; Move the value in RCX to the address stored in RAX
    0x0000000000400b18 <+296>:	movzwl 0x8(%rdx),%ecx			; Move the zero-extended word value at address 0x8 offset from RDX to ECX
    0x0000000000400b1c <+300>:	mov    %cx,0x8(%rax)			; Move the value in CX to the address 0x8 offset from RAX
    0x0000000000400b20 <+304>:	movzbl 0xa(%rdx),%edx			; Move the zero-extended byte value at address 0xa offset from RDX to EDX
    0x0000000000400b24 <+308>:	mov    %dl,0xa(%rax)			; Move the value in DL to the address 0xa offset from RAX
    0x0000000000400b27 <+311>:	lea    -0x70(%rbp),%rax		; Calculate the address of -0x70 on the stack and store it in RAX
    0x0000000000400b2b <+315>:	movq   $0xffffffffffffffff,-0xa8(%rbp)	; Move the value 0xffffffffffffffff to the address -0xa8 on the stack
    0x0000000000400b36 <+326>:	mov    %rax,%rdx				; Move the value in RAX to RDX
    0x0000000000400b39 <+329>:	mov    $0x0,%eax				; Set the value of EAX to 0
    0x0000000000400b3e <+334>:	mov    -0xa8(%rbp),%rcx		; Move the value at address -0xa8 on the stack to RCX
    0x0000000000400b45 <+341>:	mov    %rdx,%rdi				; Move the value in RDX to RDI
    0x0000000000400b48 <+344>:	repnz scas %es:(%rdi),%al		; Repeat the string scan operation comparing AL with the value at the address stored in RDI
    0x0000000000400b4a <+346>:	mov    %rcx,%rax				; Move the value in RCX to RAX
    0x0000000000400b4d <+349>:	not    %rax					; Bitwise negation of RAX
    0x0000000000400b50 <+352>:	lea    -0x1(%rax),%rdx		; Calculate the address of RAX - 1 and store it in RDX
    0x0000000000400b54 <+356>:	mov    $0x63,%eax				; Move the value 0x63 to EAX
    0x0000000000400b59 <+361>:	mov    %rax,%rcx				; Move the value in EAX to RCX
    0x0000000000400b5c <+364>:	sub    %rdx,%rcx				; Subtract the value in RDX from RCX
    0x0000000000400b5f <+367>:	mov    %rcx,%rdx				; Move the value in RCX to RDX
    0x0000000000400b62 <+370>:	mov    -0xa0(%rbp),%rax		; Move the value at address -0xa0 on the stack to RAX
    0x0000000000400b69 <+377>:	add    $0x8,%rax				; Add 8 to the value in RAX
    0x0000000000400b6d <+381>:	mov    (%rax),%rax				; Move the value at the address stored in RAX to RAX
    0x0000000000400b70 <+384>:	mov    %rax,%rcx				; Move the value in RAX to RCX
    0x0000000000400b73 <+387>:	lea    -0x70(%rbp),%rax		; Calculate the address of -0x70 on the stack and store it in RAX
    0x0000000000400b77 <+391>:	mov    %rcx,%rsi				; Move the value in RCX to RSI
    0x0000000000400b7a <+394>:	mov    %rax,%rdi				; Move the value in RAX to RDI
    0x0000000000400b7d <+397>:	callq  0x400750 <strncat@plt>	; Call the strncat function
    0x0000000000400b82 <+402>:	lea    -0x70(%rbp),%rax		; Calculate the address of -0x70 on the stack and store it in RAX
    0x0000000000400b86 <+406>:	mov    $0x1b0,%edx			; Move the value 0x1b0 to EDX
    0x0000000000400b8b <+411>:	mov    $0xc1,%esi			; Move the value 0xc1 to ESI
    0x0000000000400b90 <+416>:	mov    %rax,%rdi			; Move the value in RAX to RDI
    0x0000000000400b93 <+419>:	mov    $0x0,%eax			; Set the value of EAX to 0
    0x0000000000400b98 <+424>:	callq  0x4007b0 <open@plt>	; Call the open function
    0x0000000000400b9d <+429>:	mov    %eax,-0x78(%rbp)		; Move the value returned by open to -0x78 on the stack
    0x0000000000400ba0 <+432>:	cmpl   $0x0,-0x78(%rbp)		; Compare the value at -0x78 on the stack with 0
    0x0000000000400ba4 <+436>:	jns    0x400bed <main+509>	; Jump if the sign flag is not set (value >= 0)
    0x0000000000400ba6 <+438>:	mov    -0xa0(%rbp),%rax		; Move the value at address -0xa0 on the stack to RAX
    0x0000000000400bad <+445>:	add    $0x8,%rax			; Add 8 to the value in RAX
    0x0000000000400bb1 <+449>:	mov    (%rax),%rdx			; Move the value at the address stored in RAX to RDX
    0x0000000000400bb4 <+452>:	mov    $0x400db6,%eax		; Move the address 0x400db6 to EAX
    0x0000000000400bb9 <+457>:	mov    $0x400dab,%esi		; Move the address 0x400dab to ESI
    0x0000000000400bbe <+462>:	mov    %rax,%rdi			; Move the value in RAX to RDI
    0x0000000000400bc1 <+465>:	mov    $0x0,%eax			; Set the value of EAX to 0
    0x0000000000400bc6 <+470>:	callq  0x400730 <printf@plt>	; Call the printf function
    0x0000000000400bcb <+475>:	mov    $0x1,%edi			; Move the value 0x1 to EDI
    0x0000000000400bd0 <+480>:	callq  0x4007d0 <exit@plt>	; Call the exit function
    0x0000000000400bd5 <+485>:	lea    -0x71(%rbp),%rcx		; Calculate the address of -0x71 on the stack and store it in RCX
    0x0000000000400bd9 <+489>:	mov    -0x78(%rbp),%eax		; Move the value at -0x78 on the stack to EAX
    0x0000000000400bdc <+492>:	mov    $0x1,%edx			; Move the value 0x1 to EDX
    0x0000000000400be1 <+497>:	mov    %rcx,%rsi			; Move the value in RCX to RSI
    0x0000000000400be4 <+500>:	mov    %eax,%edi			; Move the value in EAX to EDI
    0x0000000000400be6 <+502>:	callq  0x400700 <write@plt>	; Call the write function
    0x0000000000400beb <+507>:	jmp    0x400bee <main+510>	; Jump to the next instruction
    0x0000000000400bed <+509>:	nop					; No operation
    0x0000000000400bee <+510>:	mov    -0x80(%rbp),%rax		; Move the value at -0x80 on the stack to RAX
    0x0000000000400bf2 <+514>:	mov    %rax,%rdi			; Move the value in RAX to RDI
    0x0000000000400bf5 <+517>:	callq  0x400760 <fgetc@plt>	; Call the fgetc function
    0x0000000000400bfa <+522>:	mov    %al,-0x71(%rbp)		; Move the value in AL to -0x71 on the stack
    0x0000000000400bfd <+525>:	movzbl -0x71(%rbp),%eax		; Move the zero-extended value at -0x71 on the stack to EAX
    0x0000000000400c01 <+529>:	cmp    $0xff,%al			; Compare the value in AL with 0xff
    0x0000000000400c03 <+531>:	jne    0x400bd5 <main+485>	; Jump if not equal (value != 0xff)
    0x0000000000400c05 <+533>:	mov    -0xa0(%rbp),%rax		; Move the value at address -0xa0 on the stack to RAX
    0x0000000000400c0c <+540>:	add    $0x8,%rax			; Add 8 to the value in RAX
    0x0000000000400c10 <+544>:	mov    (%rax),%rdx			; Move the value at the address stored in RAX to RDX
    0x0000000000400c13 <+547>:	mov    -0x88(%rbp),%rax		; Move the value at -0x88 on the stack to RAX
    0x0000000000400c1a <+554>:	mov    $0x400dd2,%esi		; Move the address 0x400dd2 to ESI
    0x0000000000400c1f <+559>:	mov    %rax,%rdi			; Move the value in RAX to RDI
    0x0000000000400c22 <+562>:	callq  0x4008c4 <log_wrapper>	; Call the log_wrapper function
    0x0000000000400c27 <+567>:	mov    -0x80(%rbp),%rax		; Move the value at -0x80 on the stack to RAX
    0x0000000000400c2b <+571>:	mov    %rax,%rdi			; Move the value in RAX to RDI
    0x0000000000400c2e <+574>:	callq  0x400710 <fclose@plt>	; Call the fclose function
    0x0000000000400c33 <+579>:	mov    -0x78(%rbp),%eax		; Move the value at -0x78 on the stack to EAX
    0x0000000000400c36 <+582>:	mov    %eax,%edi			; Move the value in EAX to EDI
    0x0000000000400c38 <+584>:	callq  0x400770 <close@plt>	; Call the close function
    0x0000000000400c3d <+589>:	mov    $0x0,%eax			; Move the value 0x0 to EAX
    0x0000000000400c42 <+594>:	mov    -0x8(%rbp),%rdi		; Move the value at -0x8 on the stack to RDI
    0x0000000000400c46 <+598>:	xor    %fs:0x28,%rdi		; XOR the value at the address fs:0x28 with RDI
    0x0000000000400c4f <+607>:	je     0x400c56 <main+614>	; Jump if equal (no stack smashing detected)
    0x0000000000400c51 <+609>:	callq  0x400720 <__stack_chk_fail@plt>	; Call the __stack_chk_fail function (stack smashing detected)
    0x0000000000400c56 <+614>:	leaveq				; Clean up the stack frame
    0x0000000000400c57 <+615>:	retq				; Return from the function

log_wrapper:
    0x00000000004008c4 <+0>:	push   %rbp                  ; Save the value of RBP on the stack
    0x00000000004008c5 <+1>:	mov    %rsp,%rbp             ; Set the value of RBP to the current stack pointer
    0x00000000004008c8 <+4>:	sub    $0x130,%rsp           ; Allocate 304 bytes of space on the stack for local variables
    0x00000000004008cf <+11>:	mov    %rdi,-0x118(%rbp)     ; Move the first argument (RDI) to -0x118(%rbp)
    0x00000000004008d6 <+18>:	mov    %rsi,-0x120(%rbp)     ; Move the second argument (RSI) to -0x120(%rbp)
    0x00000000004008dd <+25>:	mov    %rdx,-0x128(%rbp)     ; Move the third argument (RDX) to -0x128(%rbp)
    0x00000000004008e4 <+32>:	mov    %fs:0x28,%rax         ; Retrieve the value at fs:0x28 (can be used for stack canary)
    0x00000000004008ed <+41>:	mov    %rax,-0x8(%rbp)       ; Save the retrieved value in -0x8(%rbp)
    0x00000000004008f1 <+45>:	xor    %eax,%eax             ; Set EAX register to 0
    0x00000000004008f3 <+47>:	mov    -0x120(%rbp),%rdx     ; Move the value at -0x120(%rbp) to RDX
    0x00000000004008fa <+54>:	lea    -0x110(%rbp),%rax     ; Calculate the address -0x110(%rbp) and store it in RAX
    0x0000000000400901 <+61>:	mov    %rdx,%rsi             ; Move the value in RDX to RSI
    0x0000000000400904 <+64>:	mov    %rax,%rdi             ; Move the value in RAX to RDI
    0x0000000000400907 <+67>:	callq  0x4006f0 <strcpy@plt> ; Call the strcpy function to copy the string from RDX to RAX
    0x000000000040090c <+72>:	mov    -0x128(%rbp),%rsi     ; Move the value at -0x128(%rbp) to RSI
    0x0000000000400913 <+79>:	lea    -0x110(%rbp),%rax     ; Calculate the address -0x110(%rbp) and store it in RAX
    0x000000000040091a <+86>:	movq   $0xffffffffffffffff,-0x130(%rbp)  ; Store -1 in -0x130(%rbp)
    0x0000000000400925 <+97>:	mov    %rax,%rdx             ; Move the value in RAX to RDX
    0x0000000000400928 <+100>:	mov    $0x0,%eax             ; Set EAX register to 0
    0x000000000040092d <+105>:	mov    -0x130(%rbp),%rcx     ; Move the value at -0x130(%rbp) to RCX
    0x0000000000400934 <+112>:	mov    %rdx,%rdi             ; Move the value in RDX to RDI
    0x0000000000400937 <+115>:	repnz scas %es:(%rdi),%al    ; Search for a null byte in the memory pointed to by RDI
    0x0000000000400939 <+117>:	mov    %rcx,%rax             ; Move the value in RCX to RAX (number of iterations)
    0x000000000040093c <+120>:	not    %rax                  ; Negate the value in RAX
    0x000000000040093f <+123>:	lea    -0x1(%rax),%rdx       ; Calculate RDX as (RAX - 1)
    0x0000000000400943 <+127>:	mov    $0xfe,%eax            ; Set EAX register to 254
    0x0000000000400948 <+132>:	mov    %rax,%r8              ; Move the value in RAX to R8
    0x000000000040094b <+135>:	sub    %rdx,%r8              ; Subtract RDX from R8
    0x000000000040094e <+138>:	lea    -0x110(%rbp),%rax     ; Calculate the address -0x110(%rbp) and store it in RAX
    0x0000000000400955 <+145>:	movq   $0xffffffffffffffff,-0x130(%rbp)  ; Store -1 in -0x130(%rbp)
    0x0000000000400960 <+156>:	mov    %rax,%rdx             ; Move the value in RAX to RDX
    0x0000000000400963 <+159>:	mov    $0x0,%eax             ; Set EAX register to 0
    0x0000000000400968 <+164>:	mov    -0x130(%rbp),%rcx     ; Move the value at -0x130(%rbp) to RCX
    0x000000000040096f <+171>:	mov    %rdx,%rdi             ; Move the value in RDX to RDI
    0x0000000000400972 <+174>:	repnz scas %es:(%rdi),%al    ; Search for a null byte in the memory pointed to by RDI
    0x0000000000400974 <+176>:	mov    %rcx,%rax             ; Move the value in RCX to RAX (number of iterations)
    0x0000000000400977 <+179>:	not    %rax                  ; Negate the value in RAX
    0x000000000040097a <+182>:	lea    -0x1(%rax),%rdx       ; Calculate RDX as (RAX - 1)
    0x000000000040097e <+186>:	lea    -0x110(%rbp),%rax     ; Calculate the address -0x110(%rbp) and store it in RAX
    0x0000000000400985 <+193>:	add    %rdx,%rax             ; Add RDX to RAX
    0x0000000000400988 <+196>:	mov    %rsi,%rdx             ; Move the value in RSI to RDX
    0x000000000040098b <+199>:	mov    %r8,%rsi              ; Move the value in R8 to RSI
    0x000000000040098e <+202>:	mov    %rax,%rdi             ; Move the value in RAX to RDI
    0x0000000000400991 <+205>:	mov    $0x0,%eax             ; Set EAX register to 0
    0x0000000000400996 <+210>:	callq  0x400740 <snprintf@plt> ; Call the snprintf function to format a string
    0x000000000040099b <+215>:	lea    -0x110(%rbp),%rax     ; Calculate the address -0x110(%rbp) and store it in RAX
    0x00000000004009a2 <+222>:	mov    $0x400d4c,%esi        ; Move the address 0x400d4c to ESI
    0x00000000004009a7 <+227>:	mov    %rax,%rdi             ; Move the value in RAX to RDI
    0x00000000004009aa <+230>:	callq  0x400780 <strcspn@plt> ; Call the strcspn function to find the length of a substring
    0x00000000004009af <+235>:	movb   $0x0,-0x110(%rbp,%rax,1) ; Set the byte at -0x110(%rbp,%rax,1) to 0
    0x00000000004009b7 <+243>:	mov    $0x400d4e,%ecx        ; Move the address 0x400d4e to ECX
    0x00000000004009bc <+248>:	lea    -0x110(%rbp),%rdx     ; Calculate the address -0x110(%rbp) and store it in RDX
    0x00000000004009c3 <+255>:	mov    -0x118(%rbp),%rax     ; Move the value at -0x118(%rbp) to RAX
    0x00000000004009ca <+262>:	mov    %rcx,%rsi             ; Move the value in RCX to RSI
    0x00000000004009cd <+265>:	mov    %rax,%rdi             ; Move the value in RAX to RDI
    0x00000000004009d0 <+268>:	mov    $0x0,%eax             ; Set EAX register to 0
    0x00000000004009d5 <+273>:	callq  0x4007a0 <fprintf@plt> ; Call the fprintf function to print a formatted string
    0x00000000004009da <+278>:	mov    -0x8(%rbp),%rax       ; Move the value at -0x8(%rbp) to RAX
    0x00000000004009de <+282>:	xor    %fs:0x28,%rax         ; XOR the value at fs:0x28 with RAX
    0x00000000004009e7 <+291>:	je     0x4009ee <log_wrapper+298> ; Jump to log_wrapper+298 if zero flag is set
    0x00000000004009e9 <+293>:	callq  0x4006d0 <__stack_chk_fail@plt> ; Call the __stack_chk_fail function
    0x00000000004009ee <+298>:	leaveq                      ; Restore the value of RBP and move the value of RSP to RBP
    0x00000000004009ef <+299>:	retq                        ; Return from the function

/**
 * Comments are generated by Chat-GPT 3.5
 */
