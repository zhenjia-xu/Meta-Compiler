global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                   40
main.0.enter:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call               getInt
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rbx,                  rax
     mov                   r8,                    0
     mov                  r11,                    0
     mov      qword [rbp - 8],                    0
     mov     qword [rbp - 16],                    0
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov     qword [rbp - 24],                  rsi
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov     qword [rbp - 32],                  rsi
     mov                  r14,                    0
     mov                  r15,                    0
     mov     qword [rbp - 40],                    0
     mov                   r9,                    0
     mov                  rdi,                  rbx
    imul                  rdi,                  rbx
     mov                  rsi,                  rdi
     add                  rsi,                    1
    imul                  rsi,                    8
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
     mov                  rdi,                  rsi
    call               malloc
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  r10,                  rax
     sub                  rsi,                    8
     mov      qword [r10 - 0],                  rdi
     add                  r10,                    8
     mov                  rsi,                    0
     jmp main.3.loop_condition
main.1.loop_body:
     mov                  rdi,                  rsi
    imul                  rdi,                    8
     mov                  r12,                  r10
     add                  r12,                  rdi
     mov      qword [r12 - 0],                    0
     jmp main.2.loop_increment
main.2.loop_increment:
     mov                  rdi,                  rsi
     add                  rsi,                    1
     jmp main.3.loop_condition
main.3.loop_condition:
     mov                  rdi,                  rbx
    imul                  rdi,                  rbx
     cmp                  rsi,                  rdi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je     main.1.loop_body
     jmp     main.4.loop_exit
main.4.loop_exit:
     mov                  r12,                  rbx
    imul                  r12,                  rbx
     mov                  rsi,                  r12
     add                  rsi,                    1
    imul                  rsi,                    8
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
     mov                  rdi,                  rsi
    call               malloc
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rdi,                  rax
     sub                  rsi,                    8
     mov      qword [rdi - 0],                  r12
     add                  rdi,                    8
     mov                  r12,                  rdi
     mov                  rsi,                    0
     jmp main.7.loop_condition
main.5.loop_body:
     mov                  rdi,                  rsi
    imul                  rdi,                    8
     mov                  r13,                  r12
     add                  r13,                  rdi
     mov      qword [r13 - 0],                    0
     jmp main.6.loop_increment
main.6.loop_increment:
     mov                  rdi,                  rsi
     add                  rsi,                    1
     jmp main.7.loop_condition
main.7.loop_condition:
     mov                  rdi,                  rbx
    imul                  rdi,                  rbx
     cmp                  rsi,                  rdi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je     main.5.loop_body
     jmp     main.8.loop_exit
main.8.loop_exit:
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
     mov                  rdi,                  rsi
    call               malloc
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rdi,                  rax
     sub                  rsi,                    8
     mov      qword [rdi - 0],                  rbx
     add                  rdi,                    8
     mov                  r13,                  rdi
     mov                  rsi,                    0
     jmp main.15.loop_condition
main.9.loop_body:
     mov                  r14,                  rsi
    imul                  r14,                    8
     mov                  rdi,                  r13
     add                  rdi,                  r14
     mov                  r14,                  rbx
     add                  r14,                    1
    imul                  r14,                    8
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
     mov                  rdi,                  r14
    call               malloc
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  r15,                  rax
     sub                  r14,                    8
     mov      qword [r15 - 0],                  rbx
     add                  r15,                    8
     mov      qword [rdi - 0],                  r15
     mov                  rdi,                    0
     jmp main.12.loop_condition
main.10.loop_body:
     mov                  r15,                  rsi
    imul                  r15,                    8
     mov                  r14,                  r13
     add                  r14,                  r15
     mov                  r15,                  rdi
    imul                  r15,                    8
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r15
     mov                  r15,                    1
     neg                  r15
     mov      qword [r14 - 0],                  r15
     jmp main.11.loop_increment
main.11.loop_increment:
     mov                  r14,                  rdi
     add                  rdi,                    1
     jmp main.12.loop_condition
main.12.loop_condition:
     cmp                  rdi,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     jmp    main.13.loop_exit
main.13.loop_exit:
     jmp main.14.loop_increment
main.14.loop_increment:
     mov                  rdi,                  rsi
     add                  rsi,                    1
     jmp main.15.loop_condition
main.15.loop_condition:
     cmp                  rsi,                  rbx
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je     main.9.loop_body
     jmp    main.16.loop_exit
main.16.loop_exit:
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov                  rax,      qword [rbp - 8]
     mov      qword [rsi - 0],                  rax
     mov                  rsi,                    0
    imul                  rsi,                    8
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov                  rax,     qword [rbp - 16]
     mov      qword [rdi - 0],                  rax
     mov                  rdi,      qword [rbp - 8]
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,     qword [rbp - 16]
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                    0
     jmp main.141.loop_condition
main.17.loop_body:
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi - 0]
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  r14,                   r8
    imul                  r14,                    8
     mov                  rdi,                  r12
     add                  rdi,                  r14
     mov                  rdi,      qword [rdi - 0]
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rax,      qword [rsi - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     sub                  rsi,                    1
     mov                  r14,                  rsi
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     sub                  rsi,                    2
     mov                  r15,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je main.19.logical_true
     jmp main.18.logical_false
main.18.logical_false:
     mov                  rsi,                    0
     jmp main.20.logical_exit
main.19.logical_true:
     mov                  rdi,                  r15
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     jmp main.20.logical_exit
main.20.logical_exit:
     cmp                  rsi,                    1
      je main.22.logical_true
     jmp main.21.logical_false
main.21.logical_false:
     mov                  rsi,                    0
     jmp main.23.logical_exit
main.22.logical_true:
     mov                  rdi,                  r14
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,                  r15
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    1
     neg                  rdi
     cmp      qword [rsi - 0],                  rdi
     mov                  rsi,                    0
    sete                  sil
     jmp main.23.logical_exit
main.23.logical_exit:
     cmp                  rsi,                    1
      je      main.24.if_true
     jmp     main.31.if_false
main.24.if_true:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rsi,                  r11
    imul                  rsi,                    8
     mov                  rdi,                  r10
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                  r14
     mov                  rdi,                  r11
    imul                  rdi,                    8
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                  r15
     mov                  rdi,                  r14
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,                  r15
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [rbp - 40]
     add                  rdi,                    1
     mov      qword [rsi - 0],                  rdi
     cmp                  r14,     qword [rbp - 24]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je main.26.logical_true
     jmp main.25.logical_false
main.25.logical_false:
     mov                  rsi,                    0
     jmp main.27.logical_exit
main.26.logical_true:
     cmp                  r15,     qword [rbp - 32]
     mov                  rsi,                    0
    sete                  sil
     jmp main.27.logical_exit
main.27.logical_exit:
     cmp                  rsi,                    1
      je      main.28.if_true
     jmp     main.29.if_false
main.28.if_true:
     mov                   r9,                    1
     jmp      main.30.if_exit
main.29.if_false:
     jmp      main.30.if_exit
main.30.if_exit:
     jmp      main.32.if_exit
main.31.if_false:
     jmp      main.32.if_exit
main.32.if_exit:
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     sub                  rsi,                    1
     mov                  r14,                  rsi
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,                    2
     mov                  r15,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je main.34.logical_true
     jmp main.33.logical_false
main.33.logical_false:
     mov                  rsi,                    0
     jmp main.35.logical_exit
main.34.logical_true:
     mov                  rdi,                  r15
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     jmp main.35.logical_exit
main.35.logical_exit:
     cmp                  rsi,                    1
      je main.37.logical_true
     jmp main.36.logical_false
main.36.logical_false:
     mov                  rsi,                    0
     jmp main.38.logical_exit
main.37.logical_true:
     mov                  rsi,                  r14
    imul                  rsi,                    8
     mov                  rdi,                  r13
     add                  rdi,                  rsi
     mov                  rsi,                  r15
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,                    1
     neg                  rsi
     cmp      qword [rdi - 0],                  rsi
     mov                  rsi,                    0
    sete                  sil
     jmp main.38.logical_exit
main.38.logical_exit:
     cmp                  rsi,                    1
      je      main.39.if_true
     jmp     main.46.if_false
main.39.if_true:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rsi,                  r11
    imul                  rsi,                    8
     mov                  rdi,                  r10
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                  r14
     mov                  rdi,                  r11
    imul                  rdi,                    8
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                  r15
     mov                  rdi,                  r14
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,                  r15
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [rbp - 40]
     add                  rdi,                    1
     mov      qword [rsi - 0],                  rdi
     cmp                  r14,     qword [rbp - 24]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je main.41.logical_true
     jmp main.40.logical_false
main.40.logical_false:
     mov                  rsi,                    0
     jmp main.42.logical_exit
main.41.logical_true:
     cmp                  r15,     qword [rbp - 32]
     mov                  rsi,                    0
    sete                  sil
     jmp main.42.logical_exit
main.42.logical_exit:
     cmp                  rsi,                    1
      je      main.43.if_true
     jmp     main.44.if_false
main.43.if_true:
     mov                   r9,                    1
     jmp      main.45.if_exit
main.44.if_false:
     jmp      main.45.if_exit
main.45.if_exit:
     jmp      main.47.if_exit
main.46.if_false:
     jmp      main.47.if_exit
main.47.if_exit:
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     sub                  rsi,                    2
     mov                  r15,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je main.49.logical_true
     jmp main.48.logical_false
main.48.logical_false:
     mov                  rsi,                    0
     jmp main.50.logical_exit
main.49.logical_true:
     mov                  rdi,                  r15
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     jmp main.50.logical_exit
main.50.logical_exit:
     cmp                  rsi,                    1
      je main.52.logical_true
     jmp main.51.logical_false
main.51.logical_false:
     mov                  rsi,                    0
     jmp main.53.logical_exit
main.52.logical_true:
     mov                  rdi,                  r14
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,                  r15
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    1
     neg                  rdi
     cmp      qword [rsi - 0],                  rdi
     mov                  rsi,                    0
    sete                  sil
     jmp main.53.logical_exit
main.53.logical_exit:
     cmp                  rsi,                    1
      je      main.54.if_true
     jmp     main.61.if_false
main.54.if_true:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rsi,                  r11
    imul                  rsi,                    8
     mov                  rdi,                  r10
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                  r14
     mov                  rsi,                  r11
    imul                  rsi,                    8
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                  r15
     mov                  rdi,                  r14
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,                  r15
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [rbp - 40]
     add                  rdi,                    1
     mov      qword [rsi - 0],                  rdi
     cmp                  r14,     qword [rbp - 24]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je main.56.logical_true
     jmp main.55.logical_false
main.55.logical_false:
     mov                  rsi,                    0
     jmp main.57.logical_exit
main.56.logical_true:
     cmp                  r15,     qword [rbp - 32]
     mov                  rsi,                    0
    sete                  sil
     jmp main.57.logical_exit
main.57.logical_exit:
     cmp                  rsi,                    1
      je      main.58.if_true
     jmp     main.59.if_false
main.58.if_true:
     mov                   r9,                    1
     jmp      main.60.if_exit
main.59.if_false:
     jmp      main.60.if_exit
main.60.if_exit:
     jmp      main.62.if_exit
main.61.if_false:
     jmp      main.62.if_exit
main.62.if_exit:
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,                  r10
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                    2
     mov                  r15,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je main.64.logical_true
     jmp main.63.logical_false
main.63.logical_false:
     mov                  rsi,                    0
     jmp main.65.logical_exit
main.64.logical_true:
     mov                  rdi,                  r15
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     jmp main.65.logical_exit
main.65.logical_exit:
     cmp                  rsi,                    1
      je main.67.logical_true
     jmp main.66.logical_false
main.66.logical_false:
     mov                  rsi,                    0
     jmp main.68.logical_exit
main.67.logical_true:
     mov                  rsi,                  r14
    imul                  rsi,                    8
     mov                  rdi,                  r13
     add                  rdi,                  rsi
     mov                  rsi,                  r15
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,                    1
     neg                  rsi
     cmp      qword [rdi - 0],                  rsi
     mov                  rsi,                    0
    sete                  sil
     jmp main.68.logical_exit
main.68.logical_exit:
     cmp                  rsi,                    1
      je      main.69.if_true
     jmp     main.76.if_false
main.69.if_true:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rsi,                  r11
    imul                  rsi,                    8
     mov                  rdi,                  r10
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                  r14
     mov                  rdi,                  r11
    imul                  rdi,                    8
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                  r15
     mov                  rsi,                  r14
    imul                  rsi,                    8
     mov                  rdi,                  r13
     add                  rdi,                  rsi
     mov                  rsi,                  r15
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 40]
     add                  rsi,                    1
     mov      qword [rdi - 0],                  rsi
     cmp                  r14,     qword [rbp - 24]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je main.71.logical_true
     jmp main.70.logical_false
main.70.logical_false:
     mov                  rsi,                    0
     jmp main.72.logical_exit
main.71.logical_true:
     cmp                  r15,     qword [rbp - 32]
     mov                  rsi,                    0
    sete                  sil
     jmp main.72.logical_exit
main.72.logical_exit:
     cmp                  rsi,                    1
      je      main.73.if_true
     jmp     main.74.if_false
main.73.if_true:
     mov                   r9,                    1
     jmp      main.75.if_exit
main.74.if_false:
     jmp      main.75.if_exit
main.75.if_exit:
     jmp      main.77.if_exit
main.76.if_false:
     jmp      main.77.if_exit
main.77.if_exit:
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,                  r10
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     sub                  rsi,                    2
     mov                  r14,                  rsi
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je main.79.logical_true
     jmp main.78.logical_false
main.78.logical_false:
     mov                  rsi,                    0
     jmp main.80.logical_exit
main.79.logical_true:
     mov                  rdi,                  r15
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     jmp main.80.logical_exit
main.80.logical_exit:
     cmp                  rsi,                    1
      je main.82.logical_true
     jmp main.81.logical_false
main.81.logical_false:
     mov                  rsi,                    0
     jmp main.83.logical_exit
main.82.logical_true:
     mov                  rdi,                  r14
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,                  r15
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    1
     neg                  rdi
     cmp      qword [rsi - 0],                  rdi
     mov                  rsi,                    0
    sete                  sil
     jmp main.83.logical_exit
main.83.logical_exit:
     cmp                  rsi,                    1
      je      main.84.if_true
     jmp     main.91.if_false
main.84.if_true:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rdi,                  r11
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                  r14
     mov                  rdi,                  r11
    imul                  rdi,                    8
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                  r15
     mov                  rdi,                  r14
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,                  r15
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [rbp - 40]
     add                  rdi,                    1
     mov      qword [rsi - 0],                  rdi
     cmp                  r14,     qword [rbp - 24]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je main.86.logical_true
     jmp main.85.logical_false
main.85.logical_false:
     mov                  rsi,                    0
     jmp main.87.logical_exit
main.86.logical_true:
     cmp                  r15,     qword [rbp - 32]
     mov                  rsi,                    0
    sete                  sil
     jmp main.87.logical_exit
main.87.logical_exit:
     cmp                  rsi,                    1
      je      main.88.if_true
     jmp     main.89.if_false
main.88.if_true:
     mov                   r9,                    1
     jmp      main.90.if_exit
main.89.if_false:
     jmp      main.90.if_exit
main.90.if_exit:
     jmp      main.92.if_exit
main.91.if_false:
     jmp      main.92.if_exit
main.92.if_exit:
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     sub                  rsi,                    2
     mov                  r14,                  rsi
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,                    1
     mov                  r15,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je main.94.logical_true
     jmp main.93.logical_false
main.93.logical_false:
     mov                  rsi,                    0
     jmp main.95.logical_exit
main.94.logical_true:
     mov                  rdi,                  r15
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     jmp main.95.logical_exit
main.95.logical_exit:
     cmp                  rsi,                    1
      je main.97.logical_true
     jmp main.96.logical_false
main.96.logical_false:
     mov                  rsi,                    0
     jmp main.98.logical_exit
main.97.logical_true:
     mov                  rsi,                  r14
    imul                  rsi,                    8
     mov                  rdi,                  r13
     add                  rdi,                  rsi
     mov                  rsi,                  r15
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,                    1
     neg                  rsi
     cmp      qword [rdi - 0],                  rsi
     mov                  rsi,                    0
    sete                  sil
     jmp main.98.logical_exit
main.98.logical_exit:
     cmp                  rsi,                    1
      je      main.99.if_true
     jmp    main.106.if_false
main.99.if_true:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rdi,                  r11
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                  r14
     mov                  rsi,                  r11
    imul                  rsi,                    8
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                  r15
     mov                  rdi,                  r14
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,                  r15
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [rbp - 40]
     add                  rdi,                    1
     mov      qword [rsi - 0],                  rdi
     cmp                  r14,     qword [rbp - 24]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je main.101.logical_true
     jmp main.100.logical_false
main.100.logical_false:
     mov                  rsi,                    0
     jmp main.102.logical_exit
main.101.logical_true:
     cmp                  r15,     qword [rbp - 32]
     mov                  rsi,                    0
    sete                  sil
     jmp main.102.logical_exit
main.102.logical_exit:
     cmp                  rsi,                    1
      je     main.103.if_true
     jmp    main.104.if_false
main.103.if_true:
     mov                   r9,                    1
     jmp     main.105.if_exit
main.104.if_false:
     jmp     main.105.if_exit
main.105.if_exit:
     jmp     main.107.if_exit
main.106.if_false:
     jmp     main.107.if_exit
main.107.if_exit:
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                    2
     mov                  r14,                  rsi
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je main.109.logical_true
     jmp main.108.logical_false
main.108.logical_false:
     mov                  rsi,                    0
     jmp main.110.logical_exit
main.109.logical_true:
     mov                  rdi,                  r15
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     jmp main.110.logical_exit
main.110.logical_exit:
     cmp                  rsi,                    1
      je main.112.logical_true
     jmp main.111.logical_false
main.111.logical_false:
     mov                  rsi,                    0
     jmp main.113.logical_exit
main.112.logical_true:
     mov                  rsi,                  r14
    imul                  rsi,                    8
     mov                  rdi,                  r13
     add                  rdi,                  rsi
     mov                  rsi,                  r15
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,                    1
     neg                  rsi
     cmp      qword [rdi - 0],                  rsi
     mov                  rsi,                    0
    sete                  sil
     jmp main.113.logical_exit
main.113.logical_exit:
     cmp                  rsi,                    1
      je     main.114.if_true
     jmp    main.121.if_false
main.114.if_true:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rsi,                  r11
    imul                  rsi,                    8
     mov                  rdi,                  r10
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                  r14
     mov                  rsi,                  r11
    imul                  rsi,                    8
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                  r15
     mov                  rsi,                  r14
    imul                  rsi,                    8
     mov                  rdi,                  r13
     add                  rdi,                  rsi
     mov                  rsi,                  r15
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 40]
     add                  rsi,                    1
     mov      qword [rdi - 0],                  rsi
     cmp                  r14,     qword [rbp - 24]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je main.116.logical_true
     jmp main.115.logical_false
main.115.logical_false:
     mov                  rsi,                    0
     jmp main.117.logical_exit
main.116.logical_true:
     cmp                  r15,     qword [rbp - 32]
     mov                  rsi,                    0
    sete                  sil
     jmp main.117.logical_exit
main.117.logical_exit:
     cmp                  rsi,                    1
      je     main.118.if_true
     jmp    main.119.if_false
main.118.if_true:
     mov                   r9,                    1
     jmp     main.120.if_exit
main.119.if_false:
     jmp     main.120.if_exit
main.120.if_exit:
     jmp     main.122.if_exit
main.121.if_false:
     jmp     main.122.if_exit
main.122.if_exit:
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                    2
     mov                  r14,                  rsi
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,                    1
     mov                  r15,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je main.124.logical_true
     jmp main.123.logical_false
main.123.logical_false:
     mov                  rsi,                    0
     jmp main.125.logical_exit
main.124.logical_true:
     mov                  rdi,                  r15
     mov                  rsi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                check
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     jmp main.125.logical_exit
main.125.logical_exit:
     cmp                  rsi,                    1
      je main.127.logical_true
     jmp main.126.logical_false
main.126.logical_false:
     mov                  rsi,                    0
     jmp main.128.logical_exit
main.127.logical_true:
     mov                  rdi,                  r14
    imul                  rdi,                    8
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,                  r15
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    1
     neg                  rdi
     cmp      qword [rsi - 0],                  rdi
     mov                  rsi,                    0
    sete                  sil
     jmp main.128.logical_exit
main.128.logical_exit:
     cmp                  rsi,                    1
      je     main.129.if_true
     jmp    main.136.if_false
main.129.if_true:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rdi,                  r11
    imul                  rdi,                    8
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                  r14
     mov                  rsi,                  r11
    imul                  rsi,                    8
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                  r15
     mov                  rsi,                  r14
    imul                  rsi,                    8
     mov                  rdi,                  r13
     add                  rdi,                  rsi
     mov                  rsi,                  r15
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,     qword [rbp - 40]
     add                  rsi,                    1
     mov      qword [rdi - 0],                  rsi
     cmp                  r14,     qword [rbp - 24]
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je main.131.logical_true
     jmp main.130.logical_false
main.130.logical_false:
     mov                  rsi,                    0
     jmp main.132.logical_exit
main.131.logical_true:
     cmp                  r15,     qword [rbp - 32]
     mov                  rsi,                    0
    sete                  sil
     jmp main.132.logical_exit
main.132.logical_exit:
     cmp                  rsi,                    1
      je     main.133.if_true
     jmp    main.134.if_false
main.133.if_true:
     mov                   r9,                    1
     jmp     main.135.if_exit
main.134.if_false:
     jmp     main.135.if_exit
main.135.if_exit:
     jmp     main.137.if_exit
main.136.if_false:
     jmp     main.137.if_exit
main.137.if_exit:
     cmp                   r9,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je     main.138.if_true
     jmp    main.139.if_false
main.138.if_true:
     jmp   main.142.loop_exit
main.139.if_false:
     jmp     main.140.if_exit
main.140.if_exit:
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                   r8,                  rsi
     jmp main.141.loop_condition
main.141.loop_condition:
     cmp                   r8,                  r11
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je    main.17.loop_body
     jmp   main.142.loop_exit
main.142.loop_exit:
     cmp                   r9,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je     main.143.if_true
     jmp    main.144.if_false
main.143.if_true:
     mov                  rsi,     qword [rbp - 24]
    imul                  rsi,                    8
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     mov                  rsi,     qword [rbp - 32]
    imul                  rsi,                    8
     mov                  rbx,      qword [rbx - 0]
     add                  rbx,                  rsi
     mov                  rdi,      qword [rbx - 0]
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call             toString
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call              println
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     jmp     main.145.if_exit
main.144.if_false:
     mov                  rdi,      __string_const0
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    call                print
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     jmp     main.145.if_exit
main.145.if_exit:
     mov                  rax,                    0
     jmp        main.146.exit
main.146.exit:
     add                  rsp,                   40
     pop                  rbp
     ret
check:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
check.0.enter:
     mov                  rbx,                  rdi
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je check.2.logical_true
     jmp check.1.logical_false
check.1.logical_false:
     mov                  rbx,                    0
     jmp check.3.logical_exit
check.2.logical_true:
     cmp                  rbx,                    0
     mov                  rbx,                    0
   setge                   bl
     jmp check.3.logical_exit
check.3.logical_exit:
     mov                  rax,                  rbx
     jmp         check.4.exit
check.4.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
printInt:
     mov                  rsi,                  rdi
     mov                  rdi,     __printIntFormat
     sub                  rsp,                    8
    call               printf
     add                  rsp,                    8
     ret
print:
     mov                  rsi,                  rdi
     mov                  rdi,        __printFormat
     sub                  rsp,                    8
    call               printf
     add                  rsp,                    8
     ret
println:
     mov                  rsi,                  rdi
     mov                  rdi,      __printlnFormat
     sub                  rsp,                    8
    call               printf
     add                  rsp,                    8
     ret
getInt:
     mov                  rdi,       __getIntFormat
     mov                  rsi,           @getIntBuf
     sub                  rsp,                    8
    call                scanf
     add                  rsp,                    8
     mov                  rax,   qword [@getIntBuf]
     ret
getString:
    push                  r15
     mov                  rdi,                  300
    call               malloc
     mov                  r15,                  rax
     add                  r15,                    8
     mov                  rdi,    __getStringFormat
     mov                  rsi,                  r15
    call                scanf
     mov                  rdi,                  r15
    call               strlen
     mov      qword [r15 - 8],                  rax
     mov                  rax,                  r15
     pop                  r15
     ret
toString:
    push                  r15
    push                  rdi
     mov                  rdi,                   20
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  r15,                  rax
     add                  r15,                    8
     mov                  rdi,                  r15
     mov                  rsi,     __toStringFormat
     pop                  rdx
    call              sprintf
     mov                  rdi,                  r15
    call               strlen
     mov      qword [r15 - 8],                  rax
     mov                  rax,                  r15
     pop                  r15
     ret
__array_size:
     mov                  rax,      qword [rdi - 8]
     ret
__string_length:
     mov                  rax,      qword [rdi - 8]
     ret
__string_parseInt:
     mov                  rsi,       __getIntFormat
     mov                  rdx,         @parseIntBuf
     sub                  rsp,                    8
    call               sscanf
     add                  rsp,                    8
     mov                  rax, qword [@parseIntBuf]
     ret
__string_substring:
    push                  r15
    push                  r14
     mov                  r15,                  rdi
     add                  r15,                  rsi
     mov                  r14,                  rdx
     sub                  r14,                  rsi
     add                  r14,                    1
     mov                  rdi,                  r14
     add                  rdi,                    9
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     add                  rax,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  r15
     mov                  rdx,                  r14
     sub                  rsp,                    8
    call               memcpy
     add                  rsp,                    8
     mov      qword [rax - 8],                  r14
     mov                  r15,                  rax
     add                  r15,                  r14
     mov                  r15,                    0
     pop                  r14
     pop                  r15
     ret
__string_ord:
     add                  rdi,                  rsi
   movsx                  rax,           byte [rdi]
     ret
__string_connection:
    push                  r15
    push                  r14
    push                  r13
     mov                  r15,      qword [rdi - 8]
     add                  r15,      qword [rsi - 8]
     add                  r15,                    9
     mov                  r14,                  rdi
     mov                  r13,                  rsi
     mov                  rdi,                  r15
    call               malloc
     sub                  r15,                    9
     mov          qword [rax],                  r15
     mov                  r15,                  rax
     add                  r15,                    8
     mov                  rdi,                  r15
     mov                  rsi,                  r14
    call               strcpy
     add                  r15,      qword [r14 - 8]
     mov                  r14,                  rax
     mov                  rdi,                  r15
     mov                  rsi,                  r13
    call               strcpy
     mov                  rax,                  r14
     pop                  r13
     pop                  r14
     pop                  r15
     ret
__string_EQ:
     sub                  rsp,                    8
    call               strcmp
     add                  rsp,                    8
     cmp                  eax,                    0
     mov                  rax,                    0
    sete                   al
     ret
__string_NEQ:
     sub                  rsp,                    8
    call               strcmp
     add                  rsp,                    8
     cmp                  eax,                    0
     mov                  rax,                    0
   setne                   al
     ret
__string_GR:
     sub                  rsp,                    8
    call               strcmp
     add                  rsp,                    8
     cmp                  eax,                    0
     mov                  rax,                    0
    setg                   al
     ret
__string_GREQ:
     sub                  rsp,                    8
    call               strcmp
     add                  rsp,                    8
     cmp                  eax,                    0
     mov                  rax,                    0
   setge                   al
     ret
__string_LE:
     sub                  rsp,                    8
    call               strcmp
     add                  rsp,                    8
     cmp                  eax,                    0
     mov                  rax,                    0
    setl                   al
     ret
__string_LEEQ:
     sub                  rsp,                    8
    call               strcmp
     add                  rsp,                    8
     cmp                  eax,                    0
     mov                  rax,                    0
   setle                   al
     ret
SECTION .data
      dq                   14
__string_const0:
      db "no solution!", 10, "", 0
__printIntFormat:
      db         "%ld", 10, 0
__printFormat:
      db              "%s", 0
__printlnFormat:
      db          "%s", 10, 0
__getIntFormat:
      db             "%ld", 0
__getStringFormat:
      db              "%s", 0
__toStringFormat:
      db             "%ld", 0
__parseIntFormat:
      db             "%ld", 0
SECTION .bss
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
