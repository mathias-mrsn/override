verify_user_name:
    0x08048464 <+0>:	push   %ebp           ; Push the value of the base pointer onto the stack
    0x08048465 <+1>:	mov    %esp,%ebp      ; Set the base pointer to the current stack pointer
    0x08048467 <+3>:	push   %edi           ; Push the value of the edi register onto the stack
    0x08048468 <+4>:	push   %esi           ; Push the value of the esi register onto the stack
    0x08048469 <+5>:	sub    $0x10,%esp     ; Allocate 16 bytes of space on the stack
    0x0804846c <+8>:	movl   $0x8048690,(%esp)  ; Move the value 0x8048690 to the stack
    0x08048473 <+15>:	call   0x8048380 <puts@plt>  ; Call the function "puts" with the argument on the stack
    0x08048478 <+20>:	mov    $0x804a040,%edx  ; Move the value 0x804a040 to the register edx
    0x0804847d <+25>:	mov    $0x80486a8,%eax  ; Move the value 0x80486a8 to the register eax
    0x08048482 <+30>:	mov    $0x7,%ecx       ; Move the value 0x7 to the register ecx
    0x08048487 <+35>:	mov    %edx,%esi      ; Move the value in edx to the register esi
    0x08048489 <+37>:	mov    %eax,%edi      ; Move the value in eax to the register edi
    0x0804848b <+39>:	repz cmpsb %es:(%edi),%ds:(%esi)  ; Compare strings by performing repeated comparisons of bytes
    0x0804848d <+41>:	seta   %dl            ; Set the lower byte of edx to 1 if above condition is true
    0x08048490 <+44>:	setb   %al            ; Set the lower byte of eax to 1 if below condition is true
    0x08048493 <+47>:	mov    %edx,%ecx      ; Move the value in edx to the register ecx
    0x08048495 <+49>:	sub    %al,%cl        ; Subtract the value in al from cl
    0x08048497 <+51>:	mov    %ecx,%eax      ; Move the value in ecx to eax
    0x08048499 <+53>:	movsbl %al,%eax      ; Move the signed byte in al to eax
    0x0804849c <+56>:	add    $0x10,%esp     ; Deallocate 16 bytes from the stack
    0x0804849f <+59>:	pop    %esi           ; Pop the value from the stack into esi
    0x080484a0 <+60>:	pop    %edi           ; Pop the value from the stack into edi
    0x080484a1 <+61>:	pop    %ebp           ; Pop the value from the stack into ebp
    0x080484a2 <+62>:	ret                   ; Return from the function

verify_user_pass :
    0x080484a3 <+0>:	push   %ebp           ; Push the value of the base pointer onto the stack
    0x080484a4 <+1>:	mov    %esp,%ebp      ; Set the base pointer to the current stack pointer
    0x080484a6 <+3>:	push   %edi           ; Push the value of the edi register onto the stack
    0x080484a7 <+4>:	push   %esi           ; Push the value of the esi register onto the stack
    0x080484a8 <+5>:	mov    0x8(%ebp),%eax  ; Move the value at ebp+8 to the eax register
    0x080484ab <+8>:	mov    %eax,%edx      ; Move the value in eax to the edx register
    0x080484ad <+10>:	mov    $0x80486b0,%eax  ; Move the value 0x80486b0 to the eax register
    0x080484b2 <+15>:	mov    $0x5,%ecx       ; Move the value 0x5 to the ecx register
    0x080484b7 <+20>:	mov    %edx,%esi      ; Move the value in edx to the esi register
    0x080484b9 <+22>:	mov    %eax,%edi      ; Move the value in eax to the edi register
    0x080484bb <+24>:	repz cmpsb %es:(%edi),%ds:(%esi)  ; Compare strings by performing repeated comparisons of bytes
    0x080484bd <+26>:	seta   %dl            ; Set the lower byte of edx to 1 if above condition is true
    0x080484c0 <+29>:	setb   %al            ; Set the lower byte of eax to 1 if below condition is true
    0x080484c3 <+32>:	mov    %edx,%ecx      ; Move the value in edx to the ecx register
    0x080484c5 <+34>:	sub    %al,%cl        ; Subtract the value in al from cl
    0x080484c7 <+36>:	mov    %ecx,%eax      ; Move the value in ecx to eax
    0x080484c9 <+38>:	movsbl %al,%eax      ; Move the signed byte in al to eax
    0x080484cc <+41>:	pop    %esi           ; Pop the value from the stack into esi
    0x080484cd <+42>:	pop    %edi           ; Pop the value from the stack into edi
    0x080484ce <+43>:	pop    %ebp           ; Pop the value from the stack into ebp
    0x080484cf <+44>:	ret                   ; Return from the function

main :
    0x080484d0 <+0>:	push   %ebp                 ; Push the value of the base pointer onto the stack
    0x080484d1 <+1>:	mov    %esp,%ebp            ; Set the base pointer to the current stack pointer
    0x080484d3 <+3>:	push   %edi                 ; Push the value of the edi register onto the stack
    0x080484d4 <+4>:	push   %ebx                 ; Push the value of the ebx register onto the stack
    0x080484d5 <+5>:	and    $0xfffffff0,%esp     ; Align the stack pointer to a 16-byte boundary
    0x080484d8 <+8>:	sub    $0x60,%esp           ; Allocate 96 bytes of space on the stack
    0x080484db <+11>:	lea    0x1c(%esp),%ebx      ; Load the effective address of 0x1c offset from esp into ebx
    0x080484df <+15>:	mov    $0x0,%eax            ; Move the value 0x0 to the eax register
    0x080484e4 <+20>:	mov    $0x10,%edx           ; Move the value 0x10 to the edx register
    0x080484e9 <+25>:	mov    %ebx,%edi            ; Move the value in ebx to the edi register
    0x080484eb <+27>:	mov    %edx,%ecx            ; Move the value in edx to the ecx register
    0x080484ed <+29>:	rep stos %eax,%es:(%edi)    ; Fill memory with the value in eax starting at the address in edi, for ecx times
    0x080484ef <+31>:	movl   $0x0,0x5c(%esp)      ; Move the value 0x0 to the memory location 0x5c offset from esp
    0x080484f7 <+39>:	movl   $0x80486b8,(%esp)    ; Move the value 0x80486b8 to the memory location pointed by esp
    0x080484fe <+46>:	call   0x8048380 <puts@plt> ; Call the function puts()
    0x08048503 <+51>:	mov    $0x80486df,%eax      ; Move the value 0x80486df to the eax register
    0x08048508 <+56>:	mov    %eax,(%esp)          ; Move the value in eax to the memory location pointed by esp
    0x0804850b <+59>:	call   0x8048360 <printf@plt> ; Call the function printf()
    0x08048510 <+64>:	mov    0x804a020,%eax      ; Move the value at memory location 0x804a020 to the eax register
    0x08048515 <+69>:	mov    %eax,0x8(%esp)      ; Move the value in eax to the memory location 0x8 offset from esp
    0x08048519 <+73>:	movl   $0x100,0x4(%esp)    ; Move the value 0x100 to the memory location 0x4 offset from esp
    0x08048521 <+81>:	movl   $0x804a040,(%esp)    ; Move the value 0x804a040 to the memory location pointed by esp
    0x08048528 <+88>:	call   0x8048370 <fgets@plt> ; Call the function fgets()
    0x0804852d <+93>:	call   0x8048464 <verify_user_name> ; Call the function verify_user_name()
    0x08048532 <+98>:	mov    %eax,0x5c(%esp)     ; Move the value in eax to the memory location 0x5c offset from esp
    0x08048536 <+102>:	cmpl   $0x0,0x5c(%esp)     ; Compare the value at memory location 0x5c offset from esp with 0x0
    0x0804853b <+107>:	je     0x8048550 <main+128> ; Jump to address 0x8048550 if the previous comparison is equal
    0x0804853d <+109>:	movl   $0x80486f0,(%esp)   ; Move the value 0x80486f0 to the memory location pointed by esp
    0x08048544 <+116>:	call   0x8048380 <puts@plt> ; Call the function puts()
    0x08048549 <+121>:	mov    $0x1,%eax           ; Move the value 0x1 to the eax register
    0x0804854e <+126>:	jmp    0x80485af <main+223> ; Jump to address 0x80485af
    0x08048550 <+128>:	movl   $0x804870d,(%esp)   ; Move the value 0x804870d to the memory location pointed by esp
    0x08048557 <+135>:	call   0x8048380 <puts@plt> ; Call the function puts()
    0x0804855c <+140>:	mov    0x804a020,%eax     ; Move the value at memory location 0x804a020 to the eax register
    0x08048561 <+145>:	mov    %eax,0x8(%esp)     ; Move the value in eax to the memory location 0x8 offset from esp
    0x08048565 <+149>:	movl   $0x64,0x4(%esp)    ; Move the value 0x64 to the memory location 0x4 offset from esp
    0x0804856d <+157>:	lea    0x1c(%esp),%eax    ; Load the effective address of 0x1c offset from esp into eax
    0x08048571 <+161>:	mov    %eax,(%esp)        ; Move the value in eax to the memory location pointed by esp
    0x08048574 <+164>:	call   0x8048370 <fgets@plt> ; Call the function fgets()
    0x08048579 <+169>:	lea    0x1c(%esp),%eax    ; Load the effective address of 0x1c offset from esp into eax
    0x0804857d <+173>:	mov    %eax,(%esp)        ; Move the value in eax to the memory location pointed by esp
    0x08048580 <+176>:	call   0x80484a3 <verify_user_pass> ; Call the function verify_user_pass()
    0x08048585 <+181>:	mov    %eax,0x5c(%esp)    ; Move the value in eax to the memory location 0x5c offset from esp
    0x08048589 <+185>:	cmpl   $0x0,0x5c(%esp)    ; Compare the value at memory location 0x5c offset from esp with 0x0
    0x0804858e <+190>:	je     0x8048597 <main+199> ; Jump to address 0x8048597 if the previous comparison is equal
    0x08048590 <+192>:	cmpl   $0x0,0x5c(%esp)    ; Compare the value at memory location 0x5c offset from esp with 0x0
    0x08048595 <+197>:	je     0x80485aa <main+218> ; Jump to address 0x80485aa if the previous comparison is equal
    0x08048597 <+199>:	movl   $0x804871e,(%esp)  ; Move the value 0x804871e to the memory location pointed by esp
    0x0804859e <+206>:	call   0x8048380 <puts@plt> ; Call the function puts()
    0x080485a3 <+211>:	mov    $0x1,%eax          ; Move the value 0x1 to the eax register
    0x080485a8 <+216>:	jmp    0x80485af <main+223> ; Jump to address 0x80485af
    0x080485aa <+218>:	mov    $0x0,%eax          ; Move the value 0x0 to the eax register
    0x080485af <+223>:	lea    -0x8(%ebp),%esp    ; Load the effective address of -0x8 offset from ebp into esp
    0x080485b2 <+226>:	pop    %ebx               ; Pop the value from the top of the stack into the ebx register
    0x080485b3 <+227>:	pop    %edi               ; Pop the value from the top of the stack into the edi register
    0x080485b4 <+228>:	pop    %ebp               ; Pop the value from the top of the stack into the ebp register
    0x080485b5 <+229>:	ret                      ; Return from the function

/**
 * Comments are generated by Chat-GPT 3.5
 */