main :
    0x08048494 <+0>:	push   %ebp           ; Push the value of the base pointer onto the stack
    0x08048495 <+1>:	mov    %esp,%ebp      ; Set the base pointer to the current stack pointer
    0x08048497 <+3>:	and    $0xfffffff0,%esp  ; Align the stack pointer to a multiple of 16
    0x0804849a <+6>:	sub    $0x20,%esp     ; Allocate 32 bytes of space on the stack
    0x0804849d <+9>:	movl   $0x80485f0,(%esp)  ; Move the value 0x80485f0 to the stack
    0x080484a4 <+16>:	call   0x8048390 <puts@plt>  ; Call the function "puts" with the argument on the stack
    0x080484a9 <+21>:	movl   $0x8048614,(%esp)  ; Move the value 0x8048614 to the stack
    0x080484b0 <+28>:	call   0x8048390 <puts@plt>  ; Call the function "puts" with the argument on the stack
    0x080484b5 <+33>:	movl   $0x80485f0,(%esp)  ; Move the value 0x80485f0 to the stack
    0x080484bc <+40>:	call   0x8048390 <puts@plt>  ; Call the function "puts" with the argument on the stack
    0x080484c1 <+45>:	mov    $0x804862c,%eax  ; Move the value 0x804862c to the register eax
    0x080484c6 <+50>:	mov    %eax,(%esp)     ; Move the value in eax to the stack
    0x080484c9 <+53>:	call   0x8048380 <printf@plt>  ; Call the function "printf" with the argument on the stack
    0x080484ce <+58>:	mov    $0x8048636,%eax  ; Move the value 0x8048636 to the register eax
    0x080484d3 <+63>:	lea    0x1c(%esp),%edx  ; Calculate the effective address of esp + 0x1c and store it in edx
    0x080484d7 <+67>:	mov    %edx,0x4(%esp)  ; Move the value in edx to the stack at offset 4
    0x080484db <+71>:	mov    %eax,(%esp)     ; Move the value in eax to the stack
    0x080484de <+74>:	call   0x80483d0 <__isoc99_scanf@plt>  ; Call the function "scanf" with the arguments on the stack
    0x080484e3 <+79>:	mov    0x1c(%esp),%eax  ; Move the value at esp + 0x1c to the register eax
    0x080484e7 <+83>:	cmp    $0x149c,%eax    ; Compare the value in eax with 0x149c
    0x080484ec <+88>:	jne    0x804850d <main+121>  ; Jump to the address 0x804850d if the comparison is not equal
    0x080484ee <+90>:	movl   $0x8048639,(%esp)  ; Move the value 0x8048639 to the stack
    0x080484f5 <+97>:	call   0x8048390 <puts@plt>  ; Call the function "puts" with the argument on the stack
    0x080484fa <+102>:	movl   $0x8048649,(%esp)  ; Move the value 0x8048649 to the stack
    0x08048501 <+109>:	call   0x80483a0 <system@plt>  ; Call the function "system" with the argument on the stack
    0x08048506 <+114>:	mov    $0x0,%eax      ; Move the value 0 to the register eax
    0x0804850b <+119>:	jmp    0x804851e <main+138>  ; Jump to the address 0x804851e
    0x0804850d <+121>:	movl   $0x8048651,(%esp)  ; Move the value 0x8048651 to the stack
    0x08048514 <+128>:	call   0x8048390 <puts@plt>  ; Call the function "puts" with the argument on the stack
    0x08048519 <+133>:	mov    $0x1,%eax      ; Move the value 1 to the register eax
    0x0804851e <+138>:	leave                ; Restore the previous stack frame
    0x0804851f <+139>:	ret                  ; Return from the function
