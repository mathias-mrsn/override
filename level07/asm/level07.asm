main:
    0x08048723 <+0>:	push   %ebp             ; Save the value of the base pointer on the stack
    0x08048724 <+1>:	mov    %esp,%ebp        ; Set the base pointer to the current stack pointer
    0x08048726 <+3>:	push   %edi             ; Save the value of the destination index register on the stack
    0x08048727 <+4>:	push   %esi             ; Save the value of the source index register on the stack
    0x08048728 <+5>:	push   %ebx             ; Save the value of the base register on the stack
    0x08048729 <+6>:	and    $0xfffffff0,%esp ; Align the stack pointer to a 16-byte boundary
    0x0804872c <+9>:	sub    $0x1d0,%esp      ; Allocate 0x1d0 bytes of space on the stack
    0x08048732 <+15>:	mov    0xc(%ebp),%eax   ; Move the value at ebp+0xc into the eax register
    0x08048735 <+18>:	mov    %eax,0x1c(%esp)  ; Move the value in eax to the address esp+0x1c
    0x08048739 <+22>:	mov    0x10(%ebp),%eax  ; Move the value at ebp+0x10 into the eax register
    0x0804873c <+25>:	mov    %eax,0x18(%esp)  ; Move the value in eax to the address esp+0x18
    0x08048740 <+29>:	mov    %gs:0x14,%eax   ; Move the value at the address gs:0x14 into the eax register
    0x08048746 <+35>:	mov    %eax,0x1cc(%esp) ; Move the value in eax to the address esp+0x1cc
    0x0804874d <+42>:	xor    %eax,%eax        ; Set eax to 0
    0x0804874f <+44>:	movl   $0x0,0x1b4(%esp) ; Move the value 0x0 to the address esp+0x1b4
    0x0804875a <+55>:	movl   $0x0,0x1b8(%esp) ; Move the value 0x0 to the address esp+0x1b8
    0x08048765 <+66>:	movl   $0x0,0x1bc(%esp) ; Move the value 0x0 to the address esp+0x1bc
    0x08048770 <+77>:	movl   $0x0,0x1c0(%esp) ; Move the value 0x0 to the address esp+0x1c0
    0x0804877b <+88>:	movl   $0x0,0x1c4(%esp) ; Move the value 0x0 to the address esp+0x1c4
    0x08048786 <+99>:	movl   $0x0,0x1c8(%esp) ; Move the value 0x0 to the address esp+0x1c8
    0x08048791 <+110>:	lea    0x24(%esp),%ebx  ; Load the effective address of esp+0x24 into the ebx register
    0x08048795 <+114>:	mov    $0x0,%eax        ; Move the value 0x0 into the eax register
    0x0804879a <+119>:	mov    $0x64,%edx       ; Move the value 0x64 into the edx register
    0x0804879f <+124>:	mov    %ebx,%edi        ; Move the value in ebx to the destination index register
    0x080487a1 <+126>:	mov    %edx,%ecx        ; Move the value in edx to the count register
    0x080487a3 <+128>:	rep stos %eax,%es:(%edi) ; Fill the memory starting at the address es:(edi) with eax, ecx times
    0x080487a5 <+130>:	jmp    0x80487ea <main+199> ; Jump to the address 0x80487ea (main+199)
    0x080487a7 <+132>:	mov    0x1c(%esp),%eax  ; Move the value at esp+0x1c into the eax register
    0x080487ab <+136>:	mov    (%eax),%eax      ; Move the value at the address in eax to the eax register
    0x080487ad <+138>:	movl   $0xffffffff,0x14(%esp) ; Move the value 0xffffffff to the address esp+0x14
    0x080487b5 <+146>:	mov    %eax,%edx        ; Move the value in eax to the edx register
    0x080487b7 <+148>:	mov    $0x0,%eax        ; Move the value 0x0 into the eax register
    0x080487bc <+153>:	mov    0x14(%esp),%ecx  ; Move the value at esp+0x14 into the ecx register
    0x080487c0 <+157>:	mov    %edx,%edi        ; Move the value in edx to the destination index register
    0x080487c2 <+159>:	repnz scas %es:(%edi),%al ; Scan the memory starting at the address es:(edi) for the first occurrence of al (edx), ecx times
    0x080487c4 <+161>:	mov    %ecx,%eax        ; Move the value in ecx to the eax register
    0x080487c6 <+163>:	not    %eax             ; Bitwise negate the value in eax
    0x080487c8 <+165>:	lea    -0x1(%eax),%edx  ; Compute the effective address of -1 + eax and store it in the edx register
    0x080487cb <+168>:	mov    0x1c(%esp),%eax  ; Move the value at esp+0x1c into the eax register
    0x080487cf <+172>:	mov    (%eax),%eax      ; Move the value at the address in eax to the eax register
    0x080487d1 <+174>:	mov    %edx,0x8(%esp)   ; Move the value in edx to the address esp+0x8
    0x080487d5 <+178>:	movl   $0x0,0x4(%esp)  ; Move the value 0x0 to the address esp+0x4
    0x080487dd <+186>:	mov    %eax,(%esp)      ; Move the value in eax to the address in esp
    0x080487e0 <+189>:	call   0x80484f0 <memset@plt> ; Call the memset function at the address 0x80484f0
    0x080487e5 <+194>:	addl   $0x4,0x1c(%esp) ; Add 0x4 to the value at esp+0x1c
    0x080487ea <+199>:	mov    0x1c(%esp),%eax  ; Move the value at esp+0x1c into the eax register
    0x080487ee <+203>:	mov    (%eax),%eax        ; Move the value at the address in eax to the eax register
    0x080487f0 <+205>:	test   %eax,%eax          ; Perform a bitwise AND between eax and eax to set the zero flag
    0x080487f2 <+207>:	jne    0x80487a7 <main+132> ; Jump to the address 0x80487a7 if the zero flag is not set (eax is not zero)
    0x080487f4 <+209>:	jmp    0x8048839 <main+278> ; Unconditional jump to the address 0x8048839
    0x080487f6 <+211>:	mov    0x18(%esp),%eax    ; Move the value at esp+0x18 into the eax register
    0x080487fa <+215>:	mov    (%eax),%eax        ; Move the value at the address in eax to the eax register
    0x080487fc <+217>:	movl   $0xffffffff,0x14(%esp) ; Move the value 0xffffffff to the address esp+0x14
    0x08048804 <+225>:	mov    %eax,%edx          ; Move the value in eax to the edx register
    0x08048806 <+227>:	mov    $0x0,%eax          ; Move the value 0x0 into the eax register
    0x0804880b <+232>:	mov    0x14(%esp),%ecx    ; Move the value at esp+0x14 into the ecx register
    0x0804880f <+236>:	mov    %edx,%edi          ; Move the value in edx to the destination index register
    0x08048811 <+238>:	repnz scas %es:(%edi),%al ; Scan the memory starting at the address es:(edi) for the first occurrence of al (edx), ecx times
    0x08048813 <+240>:	mov    %ecx,%eax          ; Move the value in ecx to the eax register
    0x08048815 <+242>:	not    %eax               ; Bitwise negate the value in eax
    0x08048817 <+244>:	lea    -0x1(%eax),%edx    ; Compute the effective address of -1 + eax and store it in the edx register
    0x0804881a <+247>:	mov    0x18(%esp),%eax    ; Move the value at esp+0x18 into the eax register
    0x0804881e <+251>:	mov    (%eax),%eax        ; Move the value at the address in eax to the eax register
    0x08048820 <+253>:	mov    %edx,0x8(%esp)     ; Move the value in edx to the address esp+0x8
    0x08048824 <+257>:	movl   $0x0,0x4(%esp)    ; Move the value 0x0 to the address esp+0x4
    0x0804882c <+265>:	mov    %eax,(%esp)        ; Move the value in eax to the address in esp
    0x0804882f <+268>:	call   0x80484f0 <memset@plt> ; Call the memset function at the address 0x80484f0
    0x08048834 <+273>:	addl   $0x4,0x18(%esp)   ; Add 0x4 to the value at esp+0x18
    0x08048839 <+278>:	mov    0x18(%esp),%eax    ; Move the value at esp+0x18 into the eax register
    0x0804883d <+282>:	mov    (%eax),%eax        ; Move the value at the address in eax to the eax register
    0x0804883f <+284>:	test   %eax,%eax          ; Perform a bitwise AND between eax and eax to set the zero flag
    0x08048841 <+286>:	jne    0x80487f6 <main+211> ; Jump to the address 0x80487f6 if the zero flag is not set (eax is not zero)
    0x08048843 <+288>:	movl   $0x8048b38,(%esp) ; Move the value 0x8048b38 to the address in esp
    0x0804884a <+295>:	call   0x80484c0 <puts@plt> ; Call the puts function at the address 0x80484c0
    0x0804884f <+300>:	mov    $0x8048d4b,%eax    ; Move the value 0x8048d4b to the eax register
    0x08048854 <+305>:	mov    %eax,(%esp)        ; Move the value in eax to the address in esp
    0x08048857 <+308>:	call   0x8048470 <printf@plt> ; Call the printf function at the address 0x8048470
    0x0804885c <+313>:	movl   $0x1,0x1b4(%esp)  ; Move the value 0x1 to the address esp+0x1b4
    0x08048867 <+324>:	mov    0x804a040,%eax    ; Move the value at address 0x804a040 into the eax register
    0x0804886c <+329>:	mov    %eax,0x8(%esp)     ; Move the value in eax to the address esp+0x8
    0x08048870 <+333>:	movl   $0x14,0x4(%esp)   ; Move the value 0x14 to the address esp+0x4
    0x08048878 <+341>:	lea    0x1b8(%esp),%eax  ; Compute the effective address of esp+0x1b8 and store it in the eax register
    0x0804887f <+348>:	mov    %eax,(%esp)        ; Move the value in eax to the address in esp
    0x08048882 <+351>:	call   0x80484a0 <fgets@plt> ; Call the fgets function at the address 0x80484a0
    0x08048887 <+356>:	lea    0x1b8(%esp),%eax  ; Compute the effective address of esp+0x1b8 and store it in the eax register
    0x0804888e <+363>:	movl   $0xffffffff,0x14(%esp) ; Move the value 0xffffffff to the address esp+0x14
    0x08048896 <+371>:	mov    %eax,%edx          ; Move the value in eax to the edx register
    0x08048898 <+373>:	mov    $0x0,%eax          ; Move the value 0x0 into the eax register
    0x0804889d <+378>:	mov    0x14(%esp),%ecx    ; Move the value at esp+0x14 into the ecx register
    0x080488a1 <+382>:	mov    %edx,%edi          ; Move the value in edx to the destination index register
    0x080488a3 <+384>:	repnz scas %es:(%edi),%al ; Scan the memory starting at the address es:(edi) for the first occurrence of al (edx), ecx times
    0x080488a5 <+386>:	mov    %ecx,%eax          ; Move the value in ecx to the eax register
    0x080488a7 <+388>:	not    %eax               ; Bitwise negate the value in eax
    0x080488a9 <+390>:	sub    $0x1,%eax          ; Subtract 1 from the value in eax
    0x080488ac <+393>:	sub    $0x1,%eax          ; Subtract 1 from the value in eax
    0x080488af <+396>:	movb   $0x0,0x1b8(%esp,%eax,1) ; Move the value 0x0 to the address esp+(eax*1)+0x1b8
    0x080488b7 <+404>:	lea    0x1b8(%esp),%eax    ; Load effective address of 0x1b8 + esp into eax
    0x080488be <+411>:	mov    %eax,%edx          ; Move the value of eax into edx
    0x080488c0 <+413>:	mov    $0x8048d5b,%eax    ; Move the value 0x8048d5b into eax
    0x080488c5 <+418>:	mov    $0x5,%ecx          ; Move the value 0x5 into ecx
    0x080488ca <+423>:	mov    %edx,%esi          ; Move the value of edx into esi
    0x080488cc <+425>:	mov    %eax,%edi          ; Move the value of eax into edi
    0x080488ce <+427>:	repz cmpsb %es:(%edi),%ds:(%esi)  ; Compare string byte by byte
    0x080488d0 <+429>:	seta   %dl               ; Set dl (lower byte of edx) if above (unsigned)
    0x080488d3 <+432>:	setb   %al               ; Set al (lower byte of eax) if below (unsigned)
    0x080488d6 <+435>:	mov    %edx,%ecx          ; Move the value of edx into ecx
    0x080488d8 <+437>:	sub    %al,%cl            ; Subtract al from cl
    0x080488da <+439>:	mov    %ecx,%eax          ; Move the value of ecx into eax
    0x080488dc <+441>:	movsbl %al,%eax          ; Move signed byte al to signed dword eax
    0x080488df <+444>:	test   %eax,%eax          ; Perform bitwise AND between eax and eax
    0x080488e1 <+446>:	jne    0x80488f8 <main+469>  ; Jump if the result of the test is not zero
    0x080488e3 <+448>:	lea    0x24(%esp),%eax    ; Load effective address of 0x24 + esp into eax
    0x080488e7 <+452>:	mov    %eax,(%esp)        ; Move the value of eax into the memory at the address pointed by esp
    0x080488ea <+455>:	call   0x8048630 <store_number>  ; Call the function at address 0x8048630
    0x080488ef <+460>:	mov    %eax,0x1b4(%esp)  ; Move the value of eax into the memory at the address 0x1b4 + esp
    0x080488f6 <+467>:	jmp    0x8048965 <main+578>     ; Unconditional jump to the address 0x8048965
    0x080488f8 <+469>:	lea    0x1b8(%esp),%eax    ; Load effective address of 0x1b8 + esp into eax
    0x080488ff <+476>:	mov    %eax,%edx          ; Move the value of eax into edx
    0x08048901 <+478>:	mov    $0x8048d61,%eax    ; Move the value 0x8048d61 into eax
    0x08048906 <+483>:	mov    $0x4,%ecx          ; Move the value 0x4 into ecx
    0x0804890b <+488>:	mov    %edx,%esi          ; Move the value of edx into esi
    0x0804890d <+490>:	mov    %eax,%edi          ; Move the value of eax into edi
    0x0804890f <+492>:	repz cmpsb %es:(%edi),%ds:(%esi)  ; Compare string byte by byte
    0x08048911 <+494>:	seta   %dl               ; Set dl (lower byte of edx) if above (unsigned)
    0x08048914 <+497>:	setb   %al               ; Set al (lower byte of eax) if below (unsigned)
    0x08048917 <+500>:	mov    %edx,%ecx          ; Move the value of edx into ecx
    0x08048919 <+502>:	sub    %al,%cl            ; Subtract al from cl
    0x0804891b <+504>:	mov    %ecx,%eax          ; Move the value of ecx into eax
    0x0804891d <+506>:	movsbl %al,%eax          ; Move signed byte al to signed dword eax
    0x08048920 <+509>:	test   %eax,%eax          ; Perform bitwise AND between eax and eax
    0x08048922 <+511>:	jne    0x8048939 <main+534>  ; Jump if the result of the test is not zero
    0x08048924 <+513>:	lea    0x24(%esp),%eax    ; Load effective address of 0x24 + esp into eax
    0x08048928 <+517>:	mov    %eax,(%esp)        ; Move the value of eax into the memory at the address pointed by esp
    0x0804892b <+520>:	call   0x80486d7 <read_number>  ; Call the function at address 0x80486d7
    0x08048930 <+525>:	mov    %eax,0x1b4(%esp)  ; Move the value of eax into the memory at the address 0x1b4 + esp
    0x08048937 <+532>:	jmp    0x8048965 <main+578>     ; Unconditional jump to the address 0x8048965
    0x08048939 <+534>:	lea    0x1b8(%esp),%eax    ; Load effective address of 0x1b8 + esp into eax
    0x08048940 <+541>:	mov    %eax,%edx          ; Move the value of eax into edx
    0x08048942 <+543>:	mov    $0x8048d66,%eax    ; Move the value 0x8048d66 into eax
    0x08048947 <+548>:	mov    $0x4,%ecx          ; Move the value 0x4 into ecx
    0x0804894c <+553>:	mov    %edx,%esi          ; Move the value of edx into esi
    0x0804894e <+555>:	mov    %eax,%edi          ; Move the value of eax into edi
    0x08048950 <+557>:	repz cmpsb %es:(%edi),%ds:(%esi)  ; Compare string byte by byte
    0x08048952 <+559>:	seta   %dl               ; Set dl (lower byte of edx) if above (unsigned)
    0x08048955 <+562>:	setb   %al               ; Set al (lower byte of eax) if below (unsigned)
    0x08048958 <+565>:	mov    %edx,%ecx          ; Move the value of edx into ecx
    0x0804895a <+567>:	sub    %al,%cl            ; Subtract al from cl
    0x0804895c <+569>:	mov    %ecx,%eax          ; Move the value of ecx into eax
    0x0804895e <+571>:	movsbl %al,%eax          ; Move signed byte al to signed dword eax
    0x08048961 <+574>:	test   %eax,%eax          ; Perform bitwise AND between eax and eax
    0x08048963 <+576>:	je     0x80489cf <main+684>     ; Jump if the result of the test is zero
    0x08048965 <+578>:	cmpl   $0x0,0x1b4(%esp)  ; Compare the value at the address 0x1b4 + esp with 0x0
    0x0804896d <+586>:	je     0x8048989 <main+614>     ; Jump if the previous comparison is equal
    0x0804896f <+588>:	mov    $0x8048d6b,%eax    ; Move the value 0x8048d6b into eax
    0x08048974 <+593>:	lea    0x1b8(%esp),%edx    ; Load effective address of 0x1b8 + esp into edx
    0x0804897b <+600>:	mov    %edx,0x4(%esp)    ; Move the value of edx into the memory at the address pointed by esp + 0x4
    0x0804897f <+604>:	mov    %eax,(%esp)        ; Move the value of eax into the memory at the address pointed by esp
    0x08048982 <+607>:	call   0x8048470 <printf@plt>  ; Call the function at address 0x8048470
    0x08048987 <+612>:	jmp    0x80489a1 <main+638>     ; Unconditional jump to the address 0x80489a1
    0x08048989 <+614>:	mov    $0x8048d88,%eax    ; Move the value 0x8048d88 into eax
    0x0804898e <+619>:	lea    0x1b8(%esp),%edx    ; Load effective address of 0x1b8 + esp into edx
    0x08048995 <+626>:	mov    %edx,0x4(%esp)    ; Move the value of edx into the memory at the address pointed by esp + 0x4
    0x08048999 <+630>:	mov    %eax,(%esp)        ; Move the value of eax into the memory at the address pointed by esp
    0x0804899c <+633>:	call   0x8048470 <printf@plt>  ; Call the function at address 0x8048470
    0x080489a1 <+638>:	lea    0x1b8(%esp),%eax    ; Load effective address of 0x1b8 + esp into eax
    0x080489a8 <+645>:	movl   $0x0,(%eax)        ; Move the value 0x0 into the memory at the address pointed by eax
    0x080489ae <+651>:	movl   $0x0,0x4(%eax)    ; Move the value 0x0 into the memory at the address pointed by eax + 0x4
    0x080489b5 <+658>:	movl   $0x0,0x8(%eax)    ; Move the value 0x0 into the memory at the address pointed by eax + 0x8
    0x080489bc <+665>:	movl   $0x0,0xc(%eax)     ; Move the value 0x0 into the memory at the address pointed by eax + 0xc
    0x080489c3 <+672>:	movl   $0x0,0x10(%eax)   ; Move the value 0x0 into the memory at the address pointed by eax + 0x10
    0x080489ca <+679>:	jmp    0x804884f <main+300>     ; Unconditional jump to the address 0x804884f
    0x080489cf <+684>:	nop                              ; No operation
    0x080489d0 <+685>:	mov    $0x0,%eax                ; Move the value 0x0 into eax
    0x080489d5 <+690>:	mov    0x1cc(%esp),%esi         ; Move the value at the address 0x1cc + esp into esi
    0x080489dc <+697>:	xor    %gs:0x14,%esi           ; Perform XOR between the value at the address gs:0x14 and esi
    0x080489e3 <+704>:	je     0x80489ea <main+711>     ; Jump if the result of the previous XOR is zero
    0x080489e5 <+706>:	call   0x80484b0 <__stack_chk_fail@plt>  ; Call the function at address 0x80484b0
    0x080489ea <+711>:	lea    -0xc(%ebp),%esp         ; Load effective address of -0xc + ebp into esp
    0x080489ed <+714>:	pop    %ebx                    ; Pop the top value from the stack into ebx
    0x080489ee <+715>:	pop    %esi                    ; Pop the top value from the stack into esi
    0x080489ef <+716>:	pop    %edi                    ; Pop the top value from the stack into edi
    0x080489f0 <+717>:	pop    %ebp                    ; Pop the top value from the stack into ebp
    0x080489f1 <+718>:	ret                            ; Return from the function

read_number:
    0x080486d7 <+0>:	push   %ebp                  ; Push the value of ebp onto the stack
    0x080486d8 <+1>:	mov    %esp,%ebp             ; Move the value of esp into ebp
    0x080486da <+3>:	sub    $0x28,%esp            ; Subtract 0x28 from esp to allocate space on the stack
    0x080486dd <+6>:	movl   $0x0,-0xc(%ebp)       ; Move the value 0x0 into the memory at the address ebp - 0xc
    0x080486e4 <+13>:	mov    $0x8048add,%eax      ; Move the value 0x8048add into eax
    0x080486e9 <+18>:	mov    %eax,(%esp)          ; Move the value of eax onto the top of the stack
    0x080486ec <+21>:	call   0x8048470 <printf@plt>     ; Call the function at address 0x8048470 (printf)
    0x080486f1 <+26>:	call   0x80485e7 <get_unum>       ; Call the function at address 0x80485e7 (get_unum)
    0x080486f6 <+31>:	mov    %eax,-0xc(%ebp)     ; Move the value returned by get_unum into the memory at ebp - 0xc
    0x080486f9 <+34>:	mov    -0xc(%ebp),%eax     ; Move the value from the memory at ebp - 0xc into eax
    0x080486fc <+37>:	shl    $0x2,%eax           ; Shift the value in eax to the left by 2 bits
    0x080486ff <+40>:	add    0x8(%ebp),%eax      ; Add the value at ebp + 0x8 to eax
    0x08048702 <+43>:	mov    (%eax),%edx         ; Move the value at the memory address pointed by eax into edx
    0x08048704 <+45>:	mov    $0x8048b1b,%eax     ; Move the value 0x8048b1b into eax
    0x08048709 <+50>:	mov    %edx,0x8(%esp)      ; Move the value in edx onto the stack at 0x8(%esp)
    0x0804870d <+54>:	mov    -0xc(%ebp),%edx     ; Move the value from the memory at ebp - 0xc into edx
    0x08048710 <+57>:	mov    %edx,0x4(%esp)      ; Move the value in edx onto the stack at 0x4(%esp)
    0x08048714 <+61>:	mov    %eax,(%esp)         ; Move the value of eax onto the top of the stack
    0x08048717 <+64>:	call   0x8048470 <printf@plt>     ; Call the function at address 0x8048470 (printf)
    0x0804871c <+69>:	mov    $0x0,%eax           ; Move the value 0x0 into eax
    0x08048721 <+74>:	leave                      ; Restore the value of ebp and deallocate the stack frame
    0x08048722 <+75>:	ret                        ; Return from the function

store_number:
    0x08048630 <+0>:	push   %ebp                  ; Push the value of ebp onto the stack
    0x08048631 <+1>:	mov    %esp,%ebp             ; Move the value of esp into ebp
    0x08048633 <+3>:	sub    $0x28,%esp            ; Subtract 0x28 from esp to allocate space on the stack
    0x08048636 <+6>:	movl   $0x0,-0x10(%ebp)      ; Move the value 0x0 into the memory at the address ebp - 0x10
    0x0804863d <+13>:	movl   $0x0,-0xc(%ebp)       ; Move the value 0x0 into the memory at the address ebp - 0xc
    0x08048644 <+20>:	mov    $0x8048ad3,%eax      ; Move the value 0x8048ad3 into eax
    0x08048649 <+25>:	mov    %eax,(%esp)          ; Move the value of eax onto the top of the stack
    0x0804864c <+28>:	call   0x8048470 <printf@plt>     ; Call the function at address 0x8048470 (printf)
    0x08048651 <+33>:	call   0x80485e7 <get_unum>       ; Call the function at address 0x80485e7 (get_unum)
    0x08048656 <+38>:	mov    %eax,-0x10(%ebp)     ; Move the value returned by get_unum into the memory at ebp - 0x10
    0x08048659 <+41>:	mov    $0x8048add,%eax     ; Move the value 0x8048add into eax
    0x0804865e <+46>:	mov    %eax,(%esp)         ; Move the value of eax onto the top of the stack
    0x08048661 <+49>:	call   0x8048470 <printf@plt>     ; Call the function at address 0x8048470 (printf)
    0x08048666 <+54>:	call   0x80485e7 <get_unum>       ; Call the function at address 0x80485e7 (get_unum)
    0x0804866b <+59>:	mov    %eax,-0xc(%ebp)     ; Move the value returned by get_unum into the memory at ebp - 0xc
    0x0804866e <+62>:	mov    -0xc(%ebp),%ecx     ; Move the value from the memory at ebp - 0xc into ecx
    0x08048671 <+65>:	mov    $0xaaaaaaab,%edx     ; Move the value 0xaaaaaaab into edx
    0x08048676 <+70>:	mov    %ecx,%eax           ; Move the value in ecx into eax
    0x08048678 <+72>:	mul    %edx                ; Multiply the value in eax by the value in edx
    0x0804867a <+74>:	shr    %edx                ; Right shift the value in edx
    0x0804867c <+76>:	mov    %edx,%eax           ; Move the value in edx into eax
    0x0804867e <+78>:	add    %eax,%eax           ; Add the value in eax to itself
    0x08048680 <+80>:	add    %edx,%eax           ; Add the value in edx to eax
    0x08048682 <+82>:	mov    %ecx,%edx           ; Move the value in ecx into edx
    0x08048684 <+84>:	sub    %eax,%edx           ; Subtract the value in eax from edx
    0x08048686 <+86>:	test   %edx,%edx           ; Perform logical AND of edx with itself
    0x08048688 <+88>:	je     0x8048697 <store_number+103>     ; If the result of the test is zero, jump to address 0x8048697
    0x0804868a <+90>:	mov    -0x10(%ebp),%eax    ; Move the value from the memory at ebp - 0x10 into eax
    0x0804868d <+93>:	shr    $0x18,%eax          ; Right shift the value in eax by 24 bits
    0x08048690 <+96>:	cmp    $0xb7,%eax          ; Compare the value in eax with 0xb7
    0x08048695 <+101>:	jne    0x80486c2 <store_number+146>    ; If the result of the comparison is not equal, jump to address 0x80486c2
    0x08048697 <+103>:	movl   $0x8048ae6,(%esp)   ; Move the value 0x8048ae6 onto the top of the stack
    0x0804869e <+110>:	call   0x80484c0 <puts@plt>     ; Call the function at address 0x80484c0 (puts)
    0x080486a3 <+115>:	movl   $0x8048af8,(%esp)   ; Move the value 0x8048af8 onto the top of the stack
    0x080486aa <+122>:	call   0x80484c0 <puts@plt>     ; Call the function at address 0x80484c0 (puts)
    0x080486af <+127>:	movl   $0x8048ae6,(%esp)   ; Move the value 0x8048ae6 onto the top of the stack
    0x080486b6 <+134>:	call   0x80484c0 <puts@plt>     ; Call the function at address 0x80484c0 (puts)
    0x080486bb <+139>:	mov    $0x1,%eax           ; Move the value 0x1 into eax
    0x080486c0 <+144>:	jmp    0x80486d5 <store_number+165>    ; Jump to address 0x80486d5
    0x080486c2 <+146>:	mov    -0xc(%ebp),%eax     ; Move the value from the memory at ebp - 0xc into eax
    0x080486c5 <+149>:	shl    $0x2,%eax           ; Shift the value in eax to the left by 2 bits
    0x080486c8 <+152>:	add    0x8(%ebp),%eax      ; Add the value at ebp + 0x8 to eax
    0x080486cb <+155>:	mov    -0x10(%ebp),%edx    ; Move the value from the memory at ebp - 0x10 into edx
    0x080486ce <+158>:	mov    %edx,(%eax)         ; Move the value in edx into the memory at the address pointed by eax
    0x080486d0 <+160>:	mov    $0x0,%eax           ; Move the value 0x0 into eax
    0x080486d5 <+165>:	leave                     ; Restore
    0x080486d6 <+166>:	ret                      ; Return

/**
 * Comments are generated by Chat-GPT 3.5
 */