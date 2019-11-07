section .data

section .bss

section .text

global _add, _toLowerCase, _toUpperCase

_add:
    push    rbp
    mov     eax, edi
    add     eax, esi
    pop     rbp
    ret

_toLowerCase:
    push    rbp
    mov     rbp, rsp
    mov     qword [rbp - 8], rdi
    mov     dword [rbp - 12], esi
    mov     rax, qword [rbp - 8]
    mov     ebx, dword [rbp - 12]
.loop:
    cmp     ebx, 1
    je      .end
    sub     ebx, 1
    mov     cl, byte [rax]
    cmp     cl, 'A'
    jl      .loop
    cmp     cl, 'Z'
    jg      .loop
    add     cl, 32
    mov     byte [rax], cl
    inc     rax
    jmp     .loop
.end:
    pop     rbp
    ret

_toUpperCase:
    push    rbp
    mov     rbp, rsp
    mov     qword [rbp - 8], rdi
    mov     dword [rbp - 12], esi
    mov     rax, qword [rbp - 8]
    mov     ebx, dword [rbp - 12]
.loop:
    cmp     ebx, 1
    je      .end
    sub     ebx, 1
    mov     cl, byte [rax]
    cmp     cl, 'a'
    jl      .loop
    cmp     cl, 'z'
    jg      .loop
    sub     cl, 32
    mov     byte [rax], cl
    inc     rax
    jmp     .loop
.end:
    pop     rbp
    ret