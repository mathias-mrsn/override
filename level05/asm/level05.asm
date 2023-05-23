main:
   0x08048444 <+0>:	push   %ebp                          ; Save the value of the base pointer on the stack
   0x08048445 <+1>:	mov    %esp,%ebp                     ; Set the base pointer to the current stack pointer
   0x08048447 <+3>:	push   %edi                          ; Push the value of edi register onto the stack
   0x08048448 <+4>:	push   %ebx                          ; Push the value of ebx register onto the stack
   0x08048449 <+5>:	and    $0xfffffff0,%esp              ; Align the stack pointer to a 16-byte boundary
   0x0804844c <+8>:	sub    $0x90,%esp                    ; Allocate 144 bytes of space on the stack
   0x08048452 <+14>:	movl   $0x0,0x8c(%esp)               ; Set the value at offset 140 from the stack pointer to 0
   0x0804845d <+25>:	mov    0x80497f0,%eax                ; Move the value at address 0x80497f0 into the eax register
   0x08048462 <+30>:	mov    %eax,0x8(%esp)                ; Move the value in eax to the memory location at offset 8 from the stack pointer
   0x08048466 <+34>:	movl   $0x64,0x4(%esp)               ; Move the value 0x64 to the memory location at offset 4 from the stack pointer
   0x0804846e <+42>:	lea    0x28(%esp),%eax               ; Compute the effective address of the memory location at offset 40 from the stack pointer and store it in eax
   0x08048472 <+46>:	mov    %eax,(%esp)                   ; Move the value in eax to the memory location pointed to by the stack pointer
   0x08048475 <+49>:	call   0x8048350 <fgets@plt>         ; Call the function fgets with the arguments specified on the stack
   0x0804847a <+54>:	movl   $0x0,0x8c(%esp)               ; Set the value at offset 140 from the stack pointer to 0
   0x08048485 <+65>:	jmp    0x80484d3 <main+143>          ; Jump to the address 0x80484d3
   
   0x08048487 <+67>:	lea    0x28(%esp),%eax               ; Compute the effective address of the memory location at offset 40 from the stack pointer and store it in eax
   0x0804848b <+71>:	add    0x8c(%esp),%eax               ; Add the value at offset 140 from the stack pointer to eax
   0x08048492 <+78>:	movzbl (%eax),%eax                  ; Move the value at the memory location pointed to by eax into the lower byte of eax, zero-extending it
   0x08048495 <+81>:	cmp    $0x40,%al                     ; Compare the lower byte of eax with the value 0x40
   0x08048497 <+83>:	jle    0x80484cb <main+135>          ; Jump to the address 0x80484cb if the previous comparison was less than or equal to
   0x08048499 <+85>:	lea    0x28(%esp),%eax               ; Compute the effective address of the memory location at offset 40 from the stack pointer and store it in eax
   0x0804849d <+89>:	add    0x8c(%esp),%eax               ; Add the value at offset 140 from the stack pointer to eax
   0x080484a4 <+96>:	movzbl (%eax),%eax                  ; Move the value at the memory location pointed to by eax into the lower byte of eax, zero-extending it
   0x080484a7 <+99>:	cmp    $0x5a,%al                     ; Compare the lower byte of eax with the value 0x5a
   0x080484a9 <+101>:	jg     0x80484cb <main+135>          ; Jump to the address 0x80484cb if the previous comparison was greater than
   0x080484ab <+103>:	lea    0x28(%esp),%eax               ; Compute the effective address of the memory location at offset 40 from the stack pointer and store it in eax
   0x080484af <+107>:	add    0x8c(%esp),%eax               ; Add the value at offset 140 from the stack pointer to eax
   0x080484b6 <+114>:	movzbl (%eax),%eax                  ; Move the value at the memory location pointed to by eax into the lower byte of eax, zero-extending it
   0x080484b9 <+117>:	mov    %eax,%edx                     ; Move the value in eax to the edx register
   0x080484bb <+119>:	xor    $0x20,%edx                    ; XOR the value in edx with 0x20
   0x080484be <+122>:	lea    0x28(%esp),%eax               ; Compute the effective address of the memory location at offset 40 from the stack pointer and store it in eax
   0x080484c2 <+126>:	add    0x8c(%esp),%eax               ; Add the value at offset 140 from the stack pointer to eax
   
   0x080484c9 <+133>:	mov    %dl,(%eax)                    ; Move the lower byte of edx to the memory location pointed to by eax
   0x080484cb <+135>:	addl   $0x1,0x8c(%esp)               ; Add 1 to the value at offset 140 from the stack pointer
   
   0x080484d3 <+143>:	mov    0x8c(%esp),%ebx               ; Move the value at offset 140 from the stack pointer to the ebx register
   0x080484da <+150>:	lea    0x28(%esp),%eax               ; Compute the effective address of the memory location at offset 40 from the stack pointer and store it in eax
   0x080484de <+154>:	movl   $0xffffffff,0x1c(%esp)       ; Move the value -1 to the memory location at offset 28 from the stack pointer
   0x080484e6 <+162>:	mov    %eax,%edx                     ; Move the value in eax to the edx register
   0x080484e8 <+164>:	mov    $0x0,%eax                     ; Move the value 0 to the eax register
   0x080484ed <+169>:	mov    0x1c(%esp),%ecx               ; Move the value at offset 28 from the stack pointer to the ecx register
   0x080484f1 <+173>:	mov    %edx,%edi                     ; Move the value in edx to the edi register
   0x080484f3 <+175>:	repnz scas %es:(%edi),%al            ; Scan the memory pointed to by edi for the first occurrence of the value in al (0) and store the number of iterations in ecx
   0x080484f5 <+177>:	mov    %ecx,%eax                     ; Move the value in ecx to eax
   0x080484f7 <+179>:	not    %eax                          ; Bitwise negate the value in eax
   0x080484f9 <+181>:	sub    $0x1,%eax                     ; Subtract 1 from the value in eax
   0x080484fc <+184>:	cmp    %eax,%ebx                     ; Compare the value in ebx with the value in eax
   0x080484fe <+186>:	jb     0x8048487 <main+67>           ; Jump to the address 0x8048487 if the previous comparison was less than
   0x08048500 <+188>:	lea    0x28(%esp),%eax               ; Compute the effective address of the memory location at offset 40 from the stack pointer and store it in eax
   0x08048504 <+192>:	mov    %eax,(%esp)                   ; Move the value in eax to the memory location pointed to by the stack pointer
   0x08048507 <+195>:	call   0x8048340 <printf@plt>        ; Call the function printf with the arguments specified on the stack
   0x0804850c <+200>:	movl   $0x0,(%esp)                   ; Move the value 0 to the memory location pointed to by the stack pointer
   0x08048513 <+207>:	call   0x8048370 <exit@plt>          ; Call the function exit with the arguments specified on the stack
