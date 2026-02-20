
.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram
fill_ram:
    mov $0, %eax
    mov $10, %ecx

sum_loop:
    add %ecx, %eax
    loop sum_loop

    movb %al, ram+0x50

    ret
.section .note.GNU-stack,"",@progbits

