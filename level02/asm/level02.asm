main:
    0x0000000000400814 <+0>:	push   %rbp			; Pushes the value of the base pointer onto the stack
    0x0000000000400815 <+1>:	mov    %rsp,%rbp		; Moves the value of the stack pointer to the base pointer
    0x0000000000400818 <+4>:	sub    $0x120,%rsp		; Subtracts 288 bytes from the stack pointer
    0x000000000040081f <+11>:	mov    %edi,-0x114(%rbp)	; Moves the value of the destination index to the memory location at the base pointer minus 276
    0x0000000000400825 <+17>:	mov    %rsi,-0x120(%rbp)	; Moves the value of the source index to the memory location at the base pointer minus 288
    0x000000000040082c <+24>:	lea    -0x70(%rbp),%rdx	; Calculates the effective address of the memory location at the base pointer minus 112 and stores it in the destination index
    0x0000000000400830 <+28>:	mov    $0x0,%eax		; Moves the value 0 to the accumulator register
    0x0000000000400835 <+33>:	mov    $0xc,%ecx		; Moves the value 12 to the count register
    0x000000000040083a <+38>:	mov    %rdx,%rdi		; Moves the value of the destination index to the destination register
    0x000000000040083d <+41>:	rep stos %rax,%es:(%rdi)	; Fills the memory with count number of quadwords from the accumulator
    0x0000000000400840 <+44>:	mov    %rdi,%rdx		; Moves the value of the destination index to the destination register
    0x0000000000400843 <+47>:	mov    %eax,(%rdx)		; Moves the value of the accumulator to the memory location at the destination index
    0x0000000000400845 <+49>:	add    $0x4,%rdx		; Adds 4 bytes to the destination index
    0x0000000000400849 <+53>:	lea    -0xa0(%rbp),%rdx	; Calculates the effective address of the memory location at the base pointer minus 160 and stores it in the destination index
    0x0000000000400850 <+60>:	mov    $0x0,%eax		; Moves the value 0 to the accumulator register
    0x0000000000400855 <+65>:	mov    $0x5,%ecx		; Moves the value 5 to the count register
    0x000000000040085a <+70>:	mov    %rdx,%rdi		; Moves the value of the destination index to the destination register
    0x000000000040085d <+73>:	rep stos %rax,%es:(%rdi)	; Fills the memory with count number of quadwords from the accumulator
    0x0000000000400860 <+76>:	mov    %rdi,%rdx		; Moves the value of the destination index to the destination register
    0x0000000000400863 <+79>:	mov    %al,(%rdx)		; Moves the value of the accumulator to the memory location at the destination index
    0x0000000000400865 <+81>:	add    $0x1,%rdx		; Adds 1 byte to the destination index
    0x0000000000400869 <+85>:	lea    -0x110(%rbp),%rdx	; Calculates the effective address of the memory location at the base pointer minus 272 and stores it in the destination index
    0x0000000000400870 <+92>:	mov    $0x0,%eax		; Moves the value 0 to the accumulator register
    0x0000000000400875 <+97>:	mov    $0xc,%ecx		; Moves the value 12 to the count register
    0x000000000040087a <+102>:	mov    %rdx,%rdi		; Moves the value of the destination index to the destination register
    0x000000000040087d <+105>:	rep stos %rax,%es:(%rdi)	; Fills the memory with count number of quadwords from the accumulator
    0x0000000000400880 <+108>:	mov    %rdi,%rdx		; Moves the value of the destination index to the destination register
    0x0000000000400883 <+111>:	mov    %eax,(%rdx)		; Moves the value of the accumulator to the memory location at the destination index
    0x0000000000400885 <+113>:	add    $0x4,%rdx		; Adds 4 bytes to the destination index
    0x0000000000400889 <+117>:	movq   $0x0,-0x8(%rbp)	; Moves the value 0 to the memory location at the base pointer minus 8
    0x0000000000400891 <+125>:	movl   $0x0,-0xc(%rbp)	; Moves the value 0 to the memory location at the base pointer minus 12
    0x0000000000400898 <+132>:	mov    $0x400bb0,%edx	; Moves the memory address 0x400bb0 to the destination register
    0x000000000040089d <+137>:	mov    $0x400bb2,%eax	; Moves the memory address 0x400bb2 to the accumulator register
    0x00000000004008a2 <+142>:	mov    %rdx,%rsi		; Moves the value of the destination register to the source index
    0x00000000004008a5 <+145>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x00000000004008a8 <+148>:	callq  0x400700 <fopen@plt>	; Calls the fopen function with the specified arguments
    0x00000000004008ad <+153>:	mov    %rax,-0x8(%rbp)	; Moves the value of the return register to the memory location at the base pointer minus 8
    0x00000000004008b1 <+157>:	cmpq   $0x0,-0x8(%rbp)	; Compares the value at the memory location base pointer minus 8 with 0
    0x00000000004008b6 <+162>:	jne    0x4008e6 <main+210>	; Jumps to the specified address if the previous comparison is not equal
    0x00000000004008b8 <+164>:	mov    0x200991(%rip),%rax        # 0x601250 <stderr@@GLIBC_2.2.5>	; Moves the value at the specified memory location to the accumulator register
    0x00000000004008bf <+171>:	mov    %rax,%rdx		; Moves the value of the accumulator register to the destination register
    0x00000000004008c2 <+174>:	mov    $0x400bd0,%eax	; Moves the memory address 0x400bd0 to the accumulator register
    0x00000000004008c7 <+179>:	mov    %rdx,%rcx		; Moves the value of the destination register to the count register
    0x00000000004008ca <+182>:	mov    $0x24,%edx		; Moves the value 36 to the destination register
    0x00000000004008cf <+187>:	mov    $0x1,%esi		; Moves the value 1 to the source index
    0x00000000004008d4 <+192>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x00000000004008d7 <+195>:	callq  0x400720 <fwrite@plt>	; Calls the fwrite function with the specified arguments
    0x00000000004008dc <+200>:	mov    $0x1,%edi		; Moves the value 1 to the destination index
    0x00000000004008e1 <+205>:	callq  0x400710 <exit@plt>	; Calls the exit function
    0x00000000004008e6 <+210>:	lea    -0xa0(%rbp),%rax		; Calculates the effective address of the memory location at the base pointer minus 160 and stores it in the accumulator register
    0x00000000004008ed <+217>:	mov    -0x8(%rbp),%rdx		; Moves the value at the memory location base pointer minus 8 to the destination register
    0x00000000004008f1 <+221>:	mov    %rdx,%rcx		; Moves the value of the destination register to the count register
    0x00000000004008f4 <+224>:	mov    $0x29,%edx		; Moves the value 41 to the destination register
    0x00000000004008f9 <+229>:	mov    $0x1,%esi		; Moves the value 1 to the source index
    0x00000000004008fe <+234>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x0000000000400901 <+237>:	callq  0x400690 <fread@plt>	; Calls the fread function with the specified arguments  
    0x0000000000400906 <+242>:	mov    %eax,-0xc(%rbp)		; Moves the value of the return register to the memory location at the base pointer minus 12
    0x0000000000400909 <+245>:	lea    -0xa0(%rbp),%rax		; Calculates the effective address of the memory location at the base pointer minus 160 and stores it in the accumulator register
    0x0000000000400910 <+252>:	mov    $0x400bf5,%esi		; Moves the memory address 0x400bf5 to the source index
    0x0000000000400915 <+257>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x0000000000400918 <+260>:	callq  0x4006d0 <strcspn@plt>	; Calls the strcspn function with the specified arguments
    0x000000000040091d <+265>:	movb   $0x0,-0xa0(%rbp,%rax,1)	; Moves the value 0 to the memory location at the base pointer minus 160 plus the value in the accumulator register
    0x0000000000400925 <+273>:	cmpl   $0x29,-0xc(%rbp)		; Compares the value at the memory location base pointer minus 12 with 41
    0x0000000000400929 <+277>:	je     0x40097d <main+361>	; Jumps to the specified address if the previous comparison is equal
    0x000000000040092b <+279>:	mov    0x20091e(%rip),%rax        # 0x601250 <stderr@@GLIBC_2.2.5>	; Moves the value at the specified memory location to the accumulator register
    0x0000000000400932 <+286>:	mov    %rax,%rdx		; Moves the value of the accumulator register to the destination register
    0x0000000000400935 <+289>:	mov    $0x400bf8,%eax		; Moves the memory address 0x400bf8 to the accumulator register
    0x000000000040093a <+294>:	mov    %rdx,%rcx		; Moves the value of the destination register to the count register
    0x000000000040093d <+297>:	mov    $0x24,%edx		; Moves the value 36 to the destination register
    0x0000000000400942 <+302>:	mov    $0x1,%esi		; Moves the value 1 to the source index
    0x0000000000400947 <+307>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x000000000040094a <+310>:	callq  0x400720 <fwrite@plt>	; Calls the fwrite function with the specified arguments
    0x000000000040094f <+315>:	mov    0x2008fa(%rip),%rax        # 0x601250 <stderr@@GLIBC_2.2.5>	; Moves the value at the specified memory location to the accumulator register
    0x0000000000400956 <+322>:	mov    %rax,%rdx		; Moves the value of the accumulator register to the destination register
    0x0000000000400959 <+325>:	mov    $0x400bf8,%eax		; Moves the memory address 0x400bf8 to the accumulator register
    0x000000000040095e <+330>:	mov    %rdx,%rcx		; Moves the value of the destination register to the count register
    0x0000000000400961 <+333>:	mov    $0x24,%edx		; Moves the value 36 to the destination register
    0x0000000000400966 <+338>:	mov    $0x1,%esi		; Moves the value 1 to the source index
    0x000000000040096b <+343>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x000000000040096e <+346>:	callq  0x400720 <fwrite@plt>	; Calls the fwrite function with the specified arguments
    0x0000000000400973 <+351>:	mov    $0x1,%edi		; Moves the value 1 to the destination index
    0x0000000000400978 <+356>:	callq  0x400710 <exit@plt>	; Calls the exit function
    0x000000000040097d <+361>:	mov    -0x8(%rbp),%rax		; Moves the value at the memory location base pointer minus 8 to the accumulator register
    0x0000000000400981 <+365>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x0000000000400984 <+368>:	callq  0x4006a0 <fclose@plt>	; Calls the fclose function
    0x0000000000400989 <+373>:	mov    $0x400c20,%edi		; Moves the memory address 0x400c20 to the destination index
    0x000000000040098e <+378>:	callq  0x400680 <puts@plt>	; Calls the puts function with the specified argument
    0x0000000000400993 <+383>:	mov    $0x400c50,%edi		; Moves the memory address 0x400c50 to the destination index
    0x0000000000400998 <+388>:	callq  0x400680 <puts@plt>	; Calls the puts function with the specified argument
    0x000000000040099d <+393>:	mov    $0x400c80,%edi		; Moves the memory address 0x400c80 to the destination index
    0x00000000004009a2 <+398>:	callq  0x400680 <puts@plt>	; Calls the puts function with the specified argument
    0x00000000004009a7 <+403>:	mov    $0x400cb0,%edi		; Moves the memory address 0x400cb0 to the destination index
    0x00000000004009ac <+408>:	callq  0x400680 <puts@plt>	; Calls the puts function
    0x00000000004009b1 <+413>:	mov    $0x400cd9,%eax		; Moves the value 0x400cd9 to the accumulator register
    0x00000000004009b6 <+418>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x00000000004009b9 <+421>:	mov    $0x0,%eax		; Moves the value 0 to the accumulator register
    0x00000000004009be <+426>:	callq  0x4006c0 <printf@plt>	; Calls the printf function
    0x00000000004009c3 <+431>:	mov    0x20087e(%rip),%rax        # 0x601248 <stdin@@GLIBC_2.2.5>	; Moves the value at the specified memory location to the accumulator register
    0x00000000004009ca <+438>:	mov    %rax,%rdx		; Moves the value of the accumulator register to the destination register
    0x00000000004009cd <+441>:	lea    -0x70(%rbp),%rax		; Calculates the address relative to the base pointer and stores it in the accumulator register
    0x00000000004009d1 <+445>:	mov    $0x64,%esi		; Moves the value 100 to the source index
    0x00000000004009d6 <+450>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x00000000004009d9 <+453>:	callq  0x4006f0 <fgets@plt>	; Calls the fgets function with the specified arguments
    0x00000000004009de <+458>:	lea    -0x70(%rbp),%rax		; Calculates the address relative to the base pointer and stores it in the accumulator register
    0x00000000004009e2 <+462>:	mov    $0x400bf5,%esi		; Moves the memory address 0x400bf5 to the source index
    0x00000000004009e7 <+467>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x00000000004009ea <+470>:	callq  0x4006d0 <strcspn@plt>	; Calls the strcspn function with the specified arguments
    0x00000000004009ef <+475>:	movb   $0x0,-0x70(%rbp,%rax,1)	; Sets the value at the calculated memory location to 0
    0x00000000004009f4 <+480>:	mov    $0x400ce8,%eax		; Moves the value 0x400ce8 to the accumulator register
    0x00000000004009f9 <+485>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x00000000004009fc <+488>:	mov    $0x0,%eax		; Moves the value 0 to the accumulator register
    0x0000000000400a01 <+493>:	callq  0x4006c0 <printf@plt>	; Calls the printf function
    0x0000000000400a06 <+498>:	mov    0x20083b(%rip),%rax        # 0x601248 <stdin@@GLIBC_2.2.5>	; Moves the value at the specified memory location to the accumulator register
    0x0000000000400a0d <+505>:	mov    %rax,%rdx		; Moves the value of the accumulator register to the destination register
    0x0000000000400a10 <+508>:	lea    -0x110(%rbp),%rax		; Calculates the address relative to the base pointer and stores it in the accumulator register
    0x0000000000400a17 <+515>:	mov    $0x64,%esi		; Moves the value 100 to the source index
    0x0000000000400a1c <+520>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x0000000000400a1f <+523>:	callq  0x4006f0 <fgets@plt>	; Calls the fgets function with the specified arguments
    0x0000000000400a24 <+528>:	lea    -0x110(%rbp),%rax		; Calculates the address relative to the base pointer and stores it in the accumulator register
    0x0000000000400a2b <+535>:	mov    $0x400bf5,%esi		; Moves the memory address 0x400bf5 to the source index
    0x0000000000400a30 <+540>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x0000000000400a33 <+543>:	callq  0x4006d0 <strcspn@plt>	; Calls the strcspn function with the specified arguments
    0x0000000000400a38 <+548>:	movb   $0x0,-0x110(%rbp,%rax,1)	; Sets the value at the calculated memory location to 0
    0x0000000000400a40 <+556>:	mov    $0x400cf8,%edi		; Moves the memory address 0x400cf8 to the destination index
    0x0000000000400a45 <+561>:	callq  0x400680 <puts@plt>	; Calls the puts function with the specified argument
    0x0000000000400a4a <+566>:	lea    -0x110(%rbp),%rcx		; Calculates the address relative to the base pointer and stores it in the counter register
    0x0000000000400a51 <+573>:	lea    -0xa0(%rbp),%rax		; Calculates the address relative to the base pointer and stores it in the accumulator register
    0x0000000000400a58 <+580>:	mov    $0x29,%edx		; Moves the value 41 to the destination register
    0x0000000000400a5d <+585>:	mov    %rcx,%rsi		; Moves the value of the counter register to the source index
    0x0000000000400a60 <+588>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x0000000000400a63 <+591>:	callq  0x400670 <strncmp@plt>	; Calls the strncmp function with the specified arguments
    0x0000000000400a68 <+596>:	test   %eax,%eax		; Performs a logical AND operation on the accumulator register
    0x0000000000400a6a <+598>:	jne    0x400a96 <main+642>	; Jumps to the specified location if the result of the previous test is not zero
    0x0000000000400a6c <+600>:	mov    $0x400d22,%eax		; Moves the memory address 0x400d22 to the accumulator register
    0x0000000000400a71 <+605>:	lea    -0x70(%rbp),%rdx		; Calculates the address relative to the base pointer and stores it in the destination register
    0x0000000000400a75 <+609>:	mov    %rdx,%rsi		; Moves the value of the destination register to the source index
    0x0000000000400a78 <+612>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x0000000000400a7b <+615>:	mov    $0x0,%eax		; Moves the value 0 to the accumulator register
    0x0000000000400a80 <+620>:	callq  0x4006c0 <printf@plt>	; Calls the printf function with the specified arguments
    0x0000000000400a85 <+625>:	mov    $0x400d32,%edi		; Moves the memory address 0x400d32 to the destination index
    0x0000000000400a8a <+630>:	callq  0x4006b0 <system@plt>	; Calls the system function with the specified argument
    0x0000000000400a8f <+635>:	mov    $0x0,%eax		; Moves the value 0 to the accumulator register
    0x0000000000400a94 <+640>:	leaveq				; Cleans up the stack frame and restores the previous frame
    0x0000000000400a95 <+641>:	retq				; Returns from the function
    0x0000000000400a96 <+642>:	lea    -0x70(%rbp),%rax		; Calculates the address relative to the base pointer and stores it in the accumulator register
    0x0000000000400a9a <+646>:	mov    %rax,%rdi		; Moves the value of the accumulator register to the destination index
    0x0000000000400a9d <+649>:	mov    $0x0,%eax		; Moves the value 0 to the accumulator register
    0x0000000000400aa2 <+654>:	callq  0x4006c0 <printf@plt>	; Calls the printf function with the specified arguments
    0x0000000000400aa7 <+659>:	mov    $0x400d3a,%edi		; Moves the memory address 0x400d3a to the destination index
    0x0000000000400aac <+664>:	callq  0x400680 <puts@plt>	; Calls the puts function with the specified argument
    0x0000000000400ab1 <+669>:	mov    $0x1,%edi		; Moves the value 1 to the destination index
    0x0000000000400ab6 <+674>:	callq  0x400710 <exit@plt>	; Calls the exit function with the specified argument

/**
 * Comments are generated by Chat-GPT 3.5
 */