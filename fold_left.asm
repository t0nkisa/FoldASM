fold_left:
    push rbp
    mov rbp, rsp
    sub rsp, 48
    mov QWORD PTR [rbp-24], rdi
    mov DWORD PTR [rbp-28], esi
    mov QWORD PTR [rbp-40], rdx
    mov QWORD PTR [rbp-48], rcx
    mov QWORD PTR [rbp-8], 0
    cmp QWORD PTR [rbp-40], 0
    jne .L2
    mov eax, DWORD PTR [rbp-28]
    jmp .L3
.L2:
    mov QWORD PTR [rbp-8], 0
    jmp .L4
.L5:
    mov rax, QWORD PTR [rbp-8]
    lea rdx, [0+rax*4]
    mov rax, QWORD PTR [rbp-48]
    add rax, rdx
    mov edx, DWORD PTR [rax]
    mov eax, DWORD PTR [rbp-28]
    mov rcx, QWORD PTR [rbp-24]
    mov esi, edx
    mov edi, eax
    call rcx
    mov DWORD PTR [rbp-28], eax
    add QWORD PTR [rbp-8], 1
.L4:
    mov rax, QWORD PTR [rbp-8]
    cmp rax, QWORD PTR [rbp-40]
    jb .L5
    mov eax, DWORD PTR [rbp-28]
.L3:
    leave
    ret