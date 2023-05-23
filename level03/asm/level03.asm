main:
    0x0804885a <+0>:	push   %ebp                         ; Push the base pointer (BP) onto the stack
    0x0804885b <+1>:	mov    %esp,%ebp                    ; Move the stack pointer (SP) to the base pointer (BP)
    0x0804885d <+3>:	and    $0xfffffff0,%esp             ; Align the stack pointer (SP) to a multiple of 16
    0x08048860 <+6>:	sub    $0x20,%esp                   ; Allocate 32 bytes of space on the stack
    0x08048863 <+9>:	push   %eax                         ; Push the value of EAX register onto the stack
    0x08048864 <+10>:	xor    %eax,%eax                    ; XOR the EAX register with itself (set EAX to 0)
    0x08048866 <+12>:	je     0x804886b <main+17>          ; Jump to the address 0x804886b if the zero flag is set (unlikely)
    0x08048868 <+14>:	add    $0x4,%esp                    ; Add 4 to the stack pointer (SP) to deallocate the pushed value (unlikely)
    0x0804886b <+17>:	pop    %eax                         ; Pop the value from the top of the stack into the EAX register
    0x0804886c <+18>:	movl   $0x0,(%esp)                   ; Move the value 0 into the memory location pointed by the stack pointer (SP)
    0x08048873 <+25>:	call   0x80484b0 <time@plt>          ; Call the function "time" from the PLT (Procedure Linkage Table)
    0x08048878 <+30>:	mov    %eax,(%esp)                   ; Move the returned value of "time" to the top of the stack
    0x0804887b <+33>:	call   0x8048500 <srand@plt>         ; Call the function "srand" from the PLT to seed the random number generator
    0x08048880 <+38>:	movl   $0x8048a48,(%esp)             ; Move the address of a string to the top of the stack
    0x08048887 <+45>:	call   0x80484d0 <puts@plt>          ; Call the function "puts" from the PLT to print the string
    0x0804888c <+50>:	movl   $0x8048a6c,(%esp)             ; Move the address of a string to the top of the stack
    0x08048893 <+57>:	call   0x80484d0 <puts@plt>          ; Call the function "puts" from the PLT to print the string
    0x08048898 <+62>:	movl   $0x8048a48,(%esp)             ; Move the address of a string to the top of the stack
    0x0804889f <+69>:	call   0x80484d0 <puts@plt>          ; Call the function "puts" from the PLT to print the string
    0x080488a4 <+74>:	mov    $0x8048a7b,%eax               ; Move the address of a string to the EAX register
    0x080488a9 <+79>:	mov    %eax,(%esp)                   ; Move the value in EAX to the top of the stack
    0x080488ac <+82>:	call   0x8048480 <printf@plt>        ; Call the function "printf" from the PLT to print the string
    0x080488b1 <+87>:	mov    $0x8048a85,%eax               ; Move the address of a format string to the EAX register
    0x080488b6 <+92>:	lea    0x1c(%esp),%edx               ; Load the effective address of (ESP + 0x1c) into the EDX register
    0x080488ba <+96>:	mov    %edx,0x4(%esp)                ; Move the value in EDX to the memory location (ESP + 4)
    0x080488be <+100>:	mov    %eax,(%esp)                   ; Move the value in EAX to the top of the stack
    0x080488c1 <+103>:	call   0x8048530 <__isoc99_scanf@plt> ; Call the function "__isoc99_scanf" from the PLT to read input from the user
    0x080488c6 <+108>:	mov    0x1c(%esp),%eax               ; Move the value at (ESP + 0x1c) into the EAX register
    0x080488ca <+112>:	movl   $0x1337d00d,0x4(%esp)         ; Move the value 0x1337d00d to the memory location (ESP + 4)
    0x080488d2 <+120>:	mov    %eax,(%esp)                   ; Move the value in EAX to the top of the stack
    0x080488d5 <+123>:	call   0x8048747 <test>              ; Call the function "test"
    0x080488da <+128>:	mov    $0x0,%eax                     ; Move the value 0 to the EAX register
    0x080488df <+133>:	leave                                ; Set the stack pointer (SP) to the base pointer (BP) and pop the previous base pointer value from the stack
    0x080488e0 <+134>:	ret                                  ; Return from the function


test:
    0x08048747 <+0>:	push   %ebp                        ; Push the value of the base pointer (BP) onto the stack
    0x08048748 <+1>:	mov    %esp,%ebp                   ; Set the base pointer (BP) to the current stack pointer (SP)
    0x0804874a <+3>:	sub    $0x28,%esp                  ; Allocate space on the stack for local variables
    0x0804874d <+6>:	mov    0x8(%ebp),%eax              ; Move the value at the memory address pointed by BP+8 into the register EAX
    0x08048750 <+9>:	mov    0xc(%ebp),%edx              ; Move the value at the memory address pointed by BP+12 into the register EDX
    0x08048753 <+12>:	mov    %edx,%ecx                   ; Move the value in EDX to ECX
    0x08048755 <+14>:	sub    %eax,%ecx                   ; Subtract the value in EAX from the value in ECX
    0x08048757 <+16>:	mov    %ecx,%eax                   ; Move the value in ECX to EAX
    0x08048759 <+18>:	mov    %eax,-0xc(%ebp)             ; Move the value in EAX to the memory address pointed by BP-12
    0x0804875c <+21>:	cmpl   $0x15,-0xc(%ebp)            ; Compare the value at the memory address pointed by BP-12 with 0x15
    0x08048760 <+25>:	ja     0x804884a <test+259>        ; Jump if above to the address 0x804884a (end of function)
    0x08048766 <+31>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x08048769 <+34>:	shl    $0x2,%eax                   ; Shift the bits of EAX to the left by 2 (multiply by 4)
    0x0804876c <+37>:	add    $0x80489f0,%eax             ; Add the value 0x80489f0 to the value in EAX
    0x08048771 <+42>:	mov    (%eax),%eax                 ; Move the value at the memory address pointed by EAX into the register EAX
    0x08048773 <+44>:	jmp    *%eax                       ; Jump to the address contained in EAX
    
    0x08048775 <+46>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x08048778 <+49>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x0804877b <+52>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x08048780 <+57>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x08048785 <+62>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x08048788 <+65>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x0804878b <+68>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x08048790 <+73>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x08048795 <+78>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x08048798 <+81>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x0804879b <+84>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x080487a0 <+89>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x080487a5 <+94>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x080487a8 <+97>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x080487ab <+100>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x080487b0 <+105>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x080487b5 <+110>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x080487b8 <+113>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x080487bb <+116>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x080487c0 <+121>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x080487c5 <+126>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x080487c8 <+129>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x080487cb <+132>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x080487d0 <+137>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x080487d5 <+142>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x080487d8 <+145>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x080487db <+148>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x080487e0 <+153>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x080487e2 <+155>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x080487e5 <+158>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x080487e8 <+161>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x080487ed <+166>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x080487ef <+168>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x080487f2 <+171>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x080487f5 <+174>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x080487fa <+179>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x080487fc <+181>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x080487ff <+184>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x08048802 <+187>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x08048807 <+192>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x08048809 <+194>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x0804880c <+197>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x0804880f <+200>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x08048814 <+205>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x08048816 <+207>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x08048819 <+210>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x0804881c <+213>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x08048821 <+218>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x08048823 <+220>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x08048826 <+223>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x08048829 <+226>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x0804882e <+231>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x08048830 <+233>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x08048833 <+236>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x08048836 <+239>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x0804883b <+244>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    0x0804883d <+246>:	mov    -0xc(%ebp),%eax             ; Move the value at the memory address pointed by BP-12 into the register EAX
    0x08048840 <+249>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x08048843 <+252>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x08048848 <+257>:	jmp    0x8048858 <test+273>        ; Jump to the address 0x8048858 (end of function)
    
    0x0804884a <+259>:	call   0x8048520 <rand@plt>        ; Call the function "rand"
    0x0804884f <+264>:	mov    %eax,(%esp)                 ; Move the value in EAX to the top of the stack
    0x08048852 <+267>:	call   0x8048660 <decrypt>         ; Call the function "decrypt" with the value at the top of the stack as argument
    0x08048857 <+272>:	nop                                ; Do nothing
    0x08048858 <+273>:	leave                              ; Restore the value of the base pointer and the stack pointer
    0x08048859 <+274>:	ret                                ; Return from the function

decrypt:
    0x08048660 <+0>:	push   %ebp                     ; Save the value of the base pointer on the stack
    0x08048661 <+1>:	mov    %esp,%ebp                ; Set the base pointer to the current stack pointer
    0x08048663 <+3>:	push   %edi                     ; Save the value of the destination index register on the stack
    0x08048664 <+4>:	push   %esi                     ; Save the value of the source index register on the stack
    0x08048665 <+5>:	sub    $0x40,%esp               ; Allocate 64 bytes of memory on the stack
    0x08048668 <+8>:	mov    %gs:0x14,%eax            ; Retrieve the value of the thread-local storage segment
    0x0804866e <+14>:	mov    %eax,-0xc(%ebp)          ; Store the retrieved value in a local variable
    0x08048671 <+17>:	xor    %eax,%eax                ; Set the value of EAX register to 0
    0x08048673 <+19>:	movl   $0x757c7d51,-0x1d(%ebp)  ; Store the constant value 0x757c7d51 in a local variable
    0x0804867a <+26>:	movl   $0x67667360,-0x19(%ebp)  ; Store the constant value 0x67667360 in a local variable
    0x08048681 <+33>:	movl   $0x7b66737e,-0x15(%ebp)  ; Store the constant value 0x7b66737e in a local variable
    0x08048688 <+40>:	movl   $0x33617c7d,-0x11(%ebp)  ; Store the constant value 0x33617c7d in a local variable
    0x0804868f <+47>:	movb   $0x0,-0xd(%ebp)          ; Store the value 0 in a local variable
    0x08048693 <+51>:	push   %eax                     ; Push the value of EAX register onto the stack
    0x08048694 <+52>:	xor    %eax,%eax                ; Set the value of EAX register to 0
    0x08048696 <+54>:	je     0x804869b <decrypt+59>   ; Jump if EAX is equal to 0
    0x08048698 <+56>:	add    $0x4,%esp                ; Add 4 bytes to the stack pointer
    0x0804869b <+59>:	pop    %eax                     ; Pop the top value from the stack into EAX register
    0x0804869c <+60>:	lea    -0x1d(%ebp),%eax         ; Calculate the address of a memory location relative to the base pointer
    0x0804869f <+63>:	movl   $0xffffffff,-0x2c(%ebp)  ; Store the constant value 0xffffffff in a local variable
    0x080486a6 <+70>:	mov    %eax,%edx                ; Move the value of EAX register to EDX register
    0x080486a8 <+72>:	mov    $0x0,%eax                ; Set the value of EAX register to 0
    0x080486ad <+77>:	mov    -0x2c(%ebp),%ecx         ; Move the value of a local variable into ECX register
    0x080486b0 <+80>:	mov    %edx,%edi                ; Move the value of EDX register to the destination index register
    0x080486b2 <+82>:	repnz scas %es:(%edi),%al       ; Compare AL register with the byte at ES:[(E)DI] and update flags and (E)DI
    0x080486b4 <+84>:	mov    %ecx,%eax                ; Move the value of ECX register to EAX register
    0x080486b6 <+86>:	not    %eax                     ; Perform bitwise negation on EAX register
    0x080486b8 <+88>:	sub    $0x1,%eax                ; Subtract 1 from the value of EAX register
    0x080486bb <+91>:	mov    %eax,-0x24(%ebp)         ; Store the value of EAX register in a local variable
    0x080486be <+94>:	movl   $0x0,-0x28(%ebp)         ; Store the value 0 in a local variable
    0x080486c5 <+101>:	jmp    0x80486e5 <decrypt+133>  ; Unconditional jump to the specified address
    0x080486c7 <+103>:	lea    -0x1d(%ebp),%eax         ; Calculate the address of a memory location relative to the base pointer
    0x080486ca <+106>:	add    -0x28(%ebp),%eax         ; Add the value of a local variable to the address in EAX register
    0x080486cd <+109>:	movzbl (%eax),%eax              ; Move zero-extended byte from the memory location specified by EAX into EAX register
    0x080486d0 <+112>:	mov    %eax,%edx                ; Move the value of EAX register to EDX register
    0x080486d2 <+114>:	mov    0x8(%ebp),%eax           ; Move the value at [EBP+8] into EAX register
    0x080486d5 <+117>:	xor    %edx,%eax                ; Perform bitwise XOR operation between EAX and EDX and store the result in EAX register
    0x080486d7 <+119>:	mov    %eax,%edx                ; Move the value of EAX register to EDX register
    0x080486d9 <+121>:	lea    -0x1d(%ebp),%eax         ; Calculate the address of a memory location relative to the base pointer
    0x080486dc <+124>:	add    -0x28(%ebp),%eax         ; Add the value of a local variable to the address in EAX register
    0x080486df <+127>:	mov    %dl,(%eax)               ; Move the low byte of EDX register to the memory location specified by EAX
    0x080486e1 <+129>:	addl   $0x1,-0x28(%ebp)         ; Add 1 to the value of a local variable
    0x080486e5 <+133>:	mov    -0x28(%ebp),%eax         ; Move the value of a local variable to EAX register
    0x080486e8 <+136>:	cmp    -0x24(%ebp),%eax         ; Compare the value of a local variable with EAX register
    0x080486eb <+139>:	jb     0x80486c7 <decrypt+103>  ; Jump if below (unsigned)
    0x080486ed <+141>:	lea    -0x1d(%ebp),%eax         ; Calculate the address of a memory location relative to the base pointer
    0x080486f0 <+144>:	mov    %eax,%edx                ; Move the value of EAX register to EDX register
    0x080486f2 <+146>:	mov    $0x80489c3,%eax          ; Move the address 0x80489c3 to EAX register
    0x080486f7 <+151>:	mov    $0x11,%ecx               ; Move the value 0x11 to ECX register
    0x080486fc <+156>:	mov    %edx,%esi                ; Move the value of EDX register to the source index register
    0x080486fe <+158>:	mov    %eax,%edi                ; Move the value of EAX register to the destination index register
    0x08048700 <+160>:	repz cmpsb %es:(%edi),%ds:(%esi) ; Compare bytes at ES:(E)DI and DS:(E)SI and update flags and (E)DI/(E)SI
    0x08048702 <+162>:	seta   %dl                      ; Set the low byte of EDX register if above (unsigned)
    0x08048705 <+165>:	setb   %al                      ; Set the low byte of EAX register if below (unsigned)
    0x08048708 <+168>:	mov    %edx,%ecx                ; Move the value of EDX register to ECX register
    0x0804870a <+170>:	sub    %al,%cl                  ; Subtract the low byte of EAX register from the low byte of ECX register and store the result in ECX register
    0x0804870c <+172>:	mov    %ecx,%eax                ; Move the value of ECX register to EAX register
    0x0804870e <+174>:	movsbl %al,%eax                 ; Move the signed byte in AL register to EAX register
    0x08048711 <+177>:	test   %eax,%eax                ; Perform bitwise AND operation on EAX register with itself and update flags
    0x08048713 <+179>:	jne    0x8048723 <decrypt+195>  ; Jump if not equal (ZF=0)
    0x08048715 <+181>:	movl   $0x80489d4,(%esp)        ; Move the address 0x80489d4 onto the stack
    0x0804871c <+188>:	call   0x80484e0 <system@plt>   ; Call the system function
    0x08048721 <+193>:	jmp    0x804872f <decrypt+207>  ; Unconditional jump to the specified address
    0x08048723 <+195>:	movl   $0x80489dc,(%esp)        ; Move the address 0x80489dc onto the stack
    0x0804872a <+202>:	call   0x80484d0 <puts@plt>     ; Call the puts function
    0x0804872f <+207>:	mov    -0xc(%ebp),%esi          ; Move the value of a local variable to ESI register
    0x08048732 <+210>:	xor    %gs:0x14,%esi            ; Perform bitwise XOR operation between the value at GS:0x14 and ESI register
    0x08048739 <+217>:	je     0x8048740 <decrypt+224>  ; Jump if equal (ZF=1)
    0x0804873b <+219>:	call   0x80484f0 <__stack_chk_fail@plt> ; Call the __stack_chk_fail function
    0x08048740 <+224>:	lea    -0x8(%ebp),%esp          ; Restore the stack pointer to its previous value
    0x08048743 <+227>:	pop    %esi                     ; Restore the value of the source index register from the stack
    0x08048744 <+228>:	pop    %edi                     ; Restore the value of the destination index register from the stack
    0x08048745 <+229>:	pop    %ebp                     ; Restore the value of the base pointer from the stack
    0x08048746 <+230>:	ret                            ; Return from the function


prog_timeout:
    0x0804864f <+0>:	push   %ebp           ; Save the value of the base pointer on the stack
    0x08048650 <+1>:	mov    %esp,%ebp      ; Set the base pointer to the current stack pointer value
    0x08048652 <+3>:	mov    $0x1,%eax      ; Move the value 0x1 into the EAX register
    0x08048657 <+8>:	mov    $0x1,%ebx      ; Move the value 0x1 into the EBX register
    0x0804865c <+13>:	int    $0x80          ; Trigger a software interrupt to make a system call
    0x0804865e <+15>:	pop    %ebp           ; Restore the value of the base pointer from the stack
    0x0804865f <+16>:	ret                   ; Return from the subroutine

clear_stdin:
    0x080485f4 <+0>:	push   %ebp           ; Save the value of the base pointer on the stack
    0x080485f5 <+1>:	mov    %esp,%ebp      ; Set the base pointer to the current stack pointer value
    0x080485f7 <+3>:	sub    $0x18,%esp     ; Allocate 24 bytes of space on the stack
    0x080485fa <+6>:	movb   $0x0,-0x9(%ebp) ; Move the value 0x0 into the byte at [EBP-9]
    0x080485fe <+10>:	jmp    0x8048601 <clear_stdin+13> ; Jump to address 0x8048601
    0x08048600 <+12>:	nop                   ; No operation
    0x08048601 <+13>:	call   0x80484a0 <getchar@plt> ; Call the 'getchar' function
    0x08048606 <+18>:	mov    %al,-0x9(%ebp) ; Move the value in AL (lower 8 bits of EAX) into the byte at [EBP-9]
    0x08048609 <+21>:	cmpb   $0xa,-0x9(%ebp) ; Compare the byte at [EBP-9] with the value 0xa (newline character)
    0x0804860d <+25>:	je     0x8048615 <clear_stdin+33> ; Jump to address 0x8048615 if the comparison is equal (newline found)
    0x0804860f <+27>:	cmpb   $0xff,-0x9(%ebp) ; Compare the byte at [EBP-9] with the value 0xff
    0x08048613 <+31>:	jne    0x8048600 <clear_stdin+12> ; Jump to address 0x8048600 if the comparison is not equal (not end of input)
    0x08048615 <+33>:	leave                 ; Restore the stack frame
    0x08048616 <+34>:	ret                   ; Return from the subroutine

get_unum:
    0x08048617 <+0>:	push   %ebp           ; Save the value of the base pointer on the stack
    0x08048618 <+1>:	mov    %esp,%ebp      ; Set the base pointer to the current stack pointer value
    0x0804861a <+3>:	sub    $0x28,%esp     ; Allocate 40 bytes of space on the stack
    0x0804861d <+6>:	movl   $0x0,-0xc(%ebp) ; Move the value 0x0 into the double word at [EBP-12]
    0x08048624 <+13>:	mov    0x804a040,%eax ; Move the value at memory address 0x804a040 into EAX register
    0x08048629 <+18>:	mov    %eax,(%esp)    ; Move the value in EAX onto the top of the stack
    0x0804862c <+21>:	call   0x8048490 <fflush@plt> ; Call the 'fflush' function
    0x08048631 <+26>:	mov    $0x80489c0,%eax ; Move the value 0x80489c0 into the EAX register
    0x08048636 <+31>:	lea    -0xc(%ebp),%edx ; Calculate the effective address of [EBP-12] and store it in EDX
    0x08048639 <+34>:	mov    %edx,0x4(%esp) ; Move the value in EDX onto the stack at offset 4
    0x0804863d <+38>:	mov    %eax,(%esp)    ; Move the value in EAX onto the top of the stack
    0x08048640 <+41>:	call   0x8048530 <__isoc99_scanf@plt> ; Call the 'scanf' function
    0x08048645 <+46>:	call   0x80485f4 <clear_stdin> ; Call the 'clear_stdin' subroutine
    0x0804864a <+51>:	mov    -0xc(%ebp),%eax ; Move the value at [EBP-12] into the EAX register
    0x0804864d <+54>:	leave                 ; Restore the stack frame
    0x0804864e <+55>:	ret                   ; Return from the subroutine

/**
 * Comments are generated by Chat-GPT 3.5
 */