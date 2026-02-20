
.section .bss
.globl ram
.lcomm ram, 256   # Reserves 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram   # Makes function visible to C program

fill_ram:
# stores FFh into RAM locations 50H - 58H using indirect addressing

    mov $ram, %rdi
    add $0x50, %rdi

    movb $0xFF, (%rdi)  
    inc %rdi
    movb $0xFF, (%rdi) 
    inc %rdi
    movb $0xFF, (%rdi) 
    inc %rdi
    movb $0xFF, (%rdi) 
    inc %rdi
    movb $0xFF, (%rdi) 
    inc %rdi
    movb $0xFF, (%rdi) 
    inc %rdi
    movb $0xFF, (%rdi) 
    inc %rdi
    movb $0xFF, (%rdi) 
    inc %rdi
    movb $0xFF, (%rdi) 

    ret   # Returns control back to C program
.section .note.GNU-stack,"",@progbits
