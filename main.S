.data
vm_string:
    .ascii "VM"
    vm_string_len = . - vm_string

hw_string:
    .ascii "HW"
    hw_string_len = . - hw_string

.text
.globl _start

_start:
    # write vm_string or hw_string to stdout here

    mov $60, %rax
    xor %rdi, %rdi
    syscall
