section .data
    ; -------------------------------
    ; Exit related vars and consts
    exitCode dq 0
    exitSysCode equ 60

    ; -------------------------------
    ; Vars
    dValue dd 0
    bNum db 42
    wNum dw 5000
    dNum dd 73000
    qNum dq 73000000
    bAns db 0
    wAns dw 0
    dAns dd 0
    qAns dq 0

section .text
global _start
_start:
    ; -------------------------------
    ; Program logic
    mov dword [dValue], 27

    mov rax, -1

    mov al, byte [bNum]
    mov byte [bAns], al

    mov ax, word [wNum]
    mov word [wAns], ax

    mov eax, dword [dNum]
    mov dword [dAns], eax

    mov rax, qword [qNum]
    mov qword [qAns], rax
    
last:
    ; -------------------------------
    ; Exiting the application with error code
    mov rax, exitSysCode
    mov rdi, qword [exitCode]
    syscall