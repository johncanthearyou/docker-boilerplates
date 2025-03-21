section .data
    msg db 'Hello, World!', 0Ah    ; 'Hello, World!' plus a newline character
    len equ $ - msg                ; Length of the message

section .text
    global _start

_start:
    ; Write the message to stdout (file descriptor 1)
    mov eax, 4                     ; System call number for sys_write
    mov ebx, 1                     ; File descriptor 1 (stdout)
    mov ecx, msg                   ; Pointer to the message
    mov edx, len                   ; Length of the message
    int 80h                        ; Call kernel

    ; Exit the program
    mov eax, 1                     ; System call number for sys_exit
    xor ebx, ebx                   ; Return code 0
    int 80h                        ; Call kernel