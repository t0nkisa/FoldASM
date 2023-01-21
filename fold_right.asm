fold_right:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 48
    mov     QWORD PTR [rbp-24], rdi
    mov     DWORD PTR [rbp-28], esi
    mov     QWORD PTR [rbp-40], rdx
    mov     QWORD PTR [rbp-48], rcx
    mov     rax, QWORD PTR [rbp-40]
    sub     eax, 1
    mov     DWORD PTR [rbp-4], eax
    jmp     .L2
.L3:
    mov     eax, DWORD PTR [rbp-4]
    cdqe
    lea     rdx, [0+rax*4]
    mov     rax, QWORD PTR [rbp-48]
    add     rax, rdx
    mov     eax, DWORD PTR [rax]
    mov     edx, DWORD PTR [rbp-28]
    mov     rcx, QWORD PTR [rbp-24]
    mov     esi, edx
    mov     edi, eax
    call    rcx
    mov     DWORD PTR [rbp-28], eax
    sub     DWORD PTR [rbp-4], 1
.L2:
    cmp     DWORD PTR [rbp-4], 0
    jns     .L3
    mov     eax, DWORD PTR [rbp-28]
    leave
    ret