global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
     sub                  rsp,                   32
main.0.enter:
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rsi,                  rbx
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  rbx
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                  rsi,                    0
     cmp                  rsi,                  rbx
      jl     main.1.loop_body
     mov                  rdi,                   r8
     mov                   r9,                    0
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     cmp                  rsi,                    1
      je         main.29.exit
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     sar                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  r12
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  r13,                   r9
     mov                  r11,                  r12
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     mov                  r10,                  rsi
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov      qword [r10 - 0],                  rsi
     add                  r10,                    8
     mov                  rsi,                    0
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.1.loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                  rdi,                   r8
     add                  rdi,                   r9
     mov                   r9,                  rbx
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     add                  rsi,                    1
     cmp                  rsi,                  rbx
      jl     main.1.loop_body
     mov                  rdi,                   r8
     mov                   r9,                    0
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     cmp                  rsi,                    1
      je         main.29.exit
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     sar                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  r12
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  r13,                   r9
     mov                  r11,                  r12
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     mov                  r10,                  rsi
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov      qword [r10 - 0],                  rsi
     add                  r10,                    8
     mov                  rsi,                    0
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.2.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,                  rbx
      jl     main.1.loop_body
     mov                  rdi,                   r8
     mov                   r9,                    0
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     cmp                  rsi,                    1
      je         main.29.exit
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     sar                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  r12
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  r13,                   r9
     mov                  r11,                  r12
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     mov                  r10,                  rsi
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov      qword [r10 - 0],                  rsi
     add                  r10,                    8
     mov                  rsi,                    0
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.3.loop_condition:
     cmp                  rsi,                  rbx
      jl     main.1.loop_body
     mov                  rdi,                   r8
     mov                   r9,                    0
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     cmp                  rsi,                    1
      je         main.29.exit
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     sar                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  r12
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  r13,                   r9
     mov                  r11,                  r12
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     mov                  r10,                  rsi
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov      qword [r10 - 0],                  rsi
     add                  r10,                    8
     mov                  rsi,                    0
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.4.loop_exit:
     mov                  rdi,                   r8
     mov                   r9,                    0
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     cmp                  rsi,                    1
      je         main.29.exit
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     sar                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  r12
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  r13,                   r9
     mov                  r11,                  r12
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     mov                  r10,                  rsi
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov      qword [r10 - 0],                  rsi
     add                  r10,                    8
     mov                  rsi,                    0
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.6.enter:
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     cmp                  rsi,                    1
      je         main.29.exit
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     sar                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  r12
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  r13,                   r9
     mov                  r11,                  r12
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     mov                  r10,                  rsi
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov      qword [r10 - 0],                  rsi
     add                  r10,                    8
     mov                  rsi,                    0
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.9.if_exit:
     mov                  rsi,                   r9
     add                  rsi,                  rbx
     sar                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  r12
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r8
    push                  rdi
    push                   r9
    call                 sort
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  r13,                   r9
     mov                  r11,                  r12
     mov                  rsi,                  rbx
     sub                  rsi,                   r9
     mov                  r10,                  rsi
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov      qword [r10 - 0],                  rsi
     add                  r10,                    8
     mov                  rsi,                    0
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.10.loop_body:
     mov                  r14,                  r13
     sal                  r14,                    3
     mov                  r15,                  rdi
     add                  r15,                  r14
     mov      qword [rbp - 8],                  r11
     sal      qword [rbp - 8],                    3
     mov                  r14,                  rdi
     add                  r14,      qword [rbp - 8]
     mov                  r15,      qword [r15 - 0]
     cmp                  r15,      qword [r14 - 0]
      jg      main.11.if_true
     mov                  r14,                  rsi
     add                  rsi,                    1
     sal                  r14,                    3
     mov     qword [rbp - 16],                  r10
     add     qword [rbp - 16],                  r14
     mov                  r14,                  r13
     add                  r13,                    1
     sal                  r14,                    3
     mov                  r15,                  rdi
     add                  r15,                  r14
     mov                  r14,      qword [r15 - 0]
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                  r14
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.11.if_true:
     mov                  r14,                  rsi
     add                  rsi,                    1
     mov                  r15,                  r14
     sal                  r15,                    3
     mov                  r14,                  r10
     add                  r14,                  r15
     mov                  r15,                  r11
     add                  r11,                    1
     mov     qword [rbp - 24],                  r15
     sal     qword [rbp - 24],                    3
     mov                  r15,                  rdi
     add                  r15,     qword [rbp - 24]
     mov                  r15,      qword [r15 - 0]
     mov      qword [r14 - 0],                  r15
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.12.if_false:
     mov                  r14,                  rsi
     add                  rsi,                    1
     sal                  r14,                    3
     mov     qword [rbp - 16],                  r10
     add     qword [rbp - 16],                  r14
     mov                  r14,                  r13
     add                  r13,                    1
     sal                  r14,                    3
     mov                  r15,                  rdi
     add                  r15,                  r14
     mov                  r14,      qword [r15 - 0]
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                  r14
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.14.loop_condition:
     cmp                  r13,                  r12
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.15.logical_true:
     cmp                  r11,                  rbx
     mov                  r14,                    0
    setl                 r14b
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.16.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.17.logical_exit:
     cmp                  r14,                    1
      je    main.10.loop_body
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.19.loop_body:
     mov                  r14,                  rsi
     add                  rsi,                    1
     mov                  r15,                  r14
     sal                  r15,                    3
     mov                  r14,                  r10
     add                  r14,                  r15
     mov                  r15,                  r13
     add                  r13,                    1
     mov     qword [rbp - 32],                  r15
     sal     qword [rbp - 32],                    3
     mov                  r15,                  rdi
     add                  r15,     qword [rbp - 32]
     mov                  r15,      qword [r15 - 0]
     mov      qword [r14 - 0],                  r15
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.20.loop_condition:
     cmp                  r13,                  r12
      jl    main.19.loop_body
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.22.loop_body:
     mov                  r12,                  rsi
     add                  rsi,                    1
     mov                  r13,                  r12
     sal                  r13,                    3
     mov                  r12,                  r10
     add                  r12,                  r13
     mov                  r13,                  r11
     add                  r11,                    1
     mov                  r14,                  r13
     sal                  r14,                    3
     mov                  r13,                  rdi
     add                  r13,                  r14
     mov                  r13,      qword [r13 - 0]
     mov      qword [r12 - 0],                  r13
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.23.loop_condition:
     cmp                  r11,                  rbx
      jl    main.22.loop_body
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.24.loop_exit:
     mov                  rsi,                   r9
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.25.loop_body:
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                  r11,                  rdi
     add                  r11,                  r12
     mov                  r12,                  rsi
     sub                  r12,                   r9
     mov                  r13,                  r12
     sal                  r13,                    3
     mov                  r12,                  r10
     add                  r12,                  r13
     mov                  r12,      qword [r12 - 0]
     mov      qword [r11 - 0],                  r12
     add                  rsi,                    1
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.26.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.27.loop_condition:
     cmp                  rsi,                  rbx
      jl    main.25.loop_body
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.29.exit:
     sar                  rbx,                    1
     mov                  rsi,                  rbx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     sub                  rbx,                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
main.5.exit:
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                   32
     pop                  rbp
     ret
sort:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
     sub                  rsp,                    0
sort.0.enter:
     mov                  rbx,                  rdi
     mov                   r8,                  rsi
     mov                   r9,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   r8
     cmp                  rsi,                    1
      je         sort.23.exit
     mov                  rsi,                   r8
     add                  rsi,                   r9
     sar                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   r8
     mov                  rdx,                  r11
    push                  r11
    push                   r8
    push                   r9
    call                 sort
     pop                   r9
     pop                   r8
     pop                  r11
     mov                  rdi,                  rbx
     mov                  rsi,                  r11
     mov                  rdx,                   r9
    push                  r11
    push                   r8
    push                   r9
    call                 sort
     pop                   r9
     pop                   r8
     pop                  r11
     mov                  r12,                   r8
     mov                  r10,                  r11
     mov                  rsi,                   r9
     sub                  rsi,                   r8
     mov                  rdi,                  rsi
     add                  rdi,                    1
     sal                  rdi,                    3
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rdi,                  rax
     mov      qword [rdi - 0],                  rsi
     add                  rdi,                    8
     mov                  rsi,                    0
     cmp                  r12,                  r11
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
     jne sort.10.logical_false
     cmp                  r10,                   r9
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
      je     sort.4.loop_body
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.3.if_exit:
     mov                  rsi,                   r8
     add                  rsi,                   r9
     sar                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                   r8
     mov                  rdx,                  r11
    push                  r11
    push                   r8
    push                   r9
    call                 sort
     pop                   r9
     pop                   r8
     pop                  r11
     mov                  rdi,                  rbx
     mov                  rsi,                  r11
     mov                  rdx,                   r9
    push                  r11
    push                   r8
    push                   r9
    call                 sort
     pop                   r9
     pop                   r8
     pop                  r11
     mov                  r12,                   r8
     mov                  r10,                  r11
     mov                  rsi,                   r9
     sub                  rsi,                   r8
     mov                  rdi,                  rsi
     add                  rdi,                    1
     sal                  rdi,                    3
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rdi,                  rax
     mov      qword [rdi - 0],                  rsi
     add                  rdi,                    8
     mov                  rsi,                    0
     cmp                  r12,                  r11
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
     jne sort.10.logical_false
     cmp                  r10,                   r9
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
      je     sort.4.loop_body
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.4.loop_body:
     mov                  r13,                  r12
     sal                  r13,                    3
     mov                  r14,                  rbx
     add                  r14,                  r13
     mov                  r15,                  r10
     sal                  r15,                    3
     mov                  r13,                  rbx
     add                  r13,                  r15
     mov                  r14,      qword [r14 - 0]
     cmp                  r14,      qword [r13 - 0]
      jg       sort.5.if_true
     mov                  r13,                  rsi
     add                  rsi,                    1
     mov                  r14,                  r13
     sal                  r14,                    3
     mov                  r13,                  rdi
     add                  r13,                  r14
     mov                  r14,                  r12
     add                  r12,                    1
     mov                  r15,                  r14
     sal                  r15,                    3
     mov                  r14,                  rbx
     add                  r14,                  r15
     mov                  r14,      qword [r14 - 0]
     mov      qword [r13 - 0],                  r14
     cmp                  r12,                  r11
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
     jne sort.10.logical_false
     cmp                  r10,                   r9
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
      je     sort.4.loop_body
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.5.if_true:
     mov                  r13,                  rsi
     add                  rsi,                    1
     mov                  r14,                  r13
     sal                  r14,                    3
     mov                  r13,                  rdi
     add                  r13,                  r14
     mov                  r14,                  r10
     add                  r10,                    1
     mov                  r15,                  r14
     sal                  r15,                    3
     mov                  r14,                  rbx
     add                  r14,                  r15
     mov                  r14,      qword [r14 - 0]
     mov      qword [r13 - 0],                  r14
     cmp                  r12,                  r11
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
     jne sort.10.logical_false
     cmp                  r10,                   r9
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
      je     sort.4.loop_body
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.6.if_false:
     mov                  r13,                  rsi
     add                  rsi,                    1
     mov                  r14,                  r13
     sal                  r14,                    3
     mov                  r13,                  rdi
     add                  r13,                  r14
     mov                  r14,                  r12
     add                  r12,                    1
     mov                  r15,                  r14
     sal                  r15,                    3
     mov                  r14,                  rbx
     add                  r14,                  r15
     mov                  r14,      qword [r14 - 0]
     mov      qword [r13 - 0],                  r14
     cmp                  r12,                  r11
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
     jne sort.10.logical_false
     cmp                  r10,                   r9
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
      je     sort.4.loop_body
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.8.loop_condition:
     cmp                  r12,                  r11
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
     jne sort.10.logical_false
     cmp                  r10,                   r9
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
      je     sort.4.loop_body
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.9.logical_true:
     cmp                  r10,                   r9
     mov                  r13,                    0
    setl                 r13b
     cmp                  r13,                    1
      je     sort.4.loop_body
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.10.logical_false:
     mov                  r13,                    0
     cmp                  r13,                    1
      je     sort.4.loop_body
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.11.logical_exit:
     cmp                  r13,                    1
      je     sort.4.loop_body
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.13.loop_body:
     mov                  r13,                  rsi
     add                  rsi,                    1
     mov                  r14,                  r13
     sal                  r14,                    3
     mov                  r13,                  rdi
     add                  r13,                  r14
     mov                  r14,                  r12
     add                  r12,                    1
     sal                  r14,                    3
     mov                  r15,                  rbx
     add                  r15,                  r14
     mov                  r14,      qword [r15 - 0]
     mov      qword [r13 - 0],                  r14
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.14.loop_condition:
     cmp                  r12,                  r11
      jl    sort.13.loop_body
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.16.loop_body:
     mov                  r11,                  rsi
     add                  rsi,                    1
     mov                  r12,                  r11
     sal                  r12,                    3
     mov                  r11,                  rdi
     add                  r11,                  r12
     mov                  r12,                  r10
     add                  r10,                    1
     mov                  r13,                  r12
     sal                  r13,                    3
     mov                  r12,                  rbx
     add                  r12,                  r13
     mov                  r12,      qword [r12 - 0]
     mov      qword [r11 - 0],                  r12
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.17.loop_condition:
     cmp                  r10,                   r9
      jl    sort.16.loop_body
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.18.loop_exit:
     mov                  rsi,                   r8
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.19.loop_body:
     mov                  r11,                  rsi
     sal                  r11,                    3
     mov                  r10,                  rbx
     add                  r10,                  r11
     mov                  r11,                  rsi
     sub                  r11,                   r8
     sal                  r11,                    3
     mov                  r12,                  rdi
     add                  r12,                  r11
     mov                  r11,      qword [r12 - 0]
     mov      qword [r10 - 0],                  r11
     add                  rsi,                    1
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.20.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
     jmp         sort.23.exit
sort.21.loop_condition:
     cmp                  rsi,                   r9
      jl    sort.19.loop_body
sort.23.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                    0
     pop                  rbp
     ret
print_Int:
     mov                  rsi,                  rdi
     mov                  rdi,    __print_IntFormat
     sub                  rsp,                    8
    call               printf
     add                  rsp,                    8
     ret
println_Int:
     mov                  rsi,                  rdi
     mov                  rdi,  __println_IntFormat
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
     sub                  rsp,                    8
    call                 puts
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
__println_IntFormat:
      db         "%ld", 10, 0
__print_IntFormat:
      db             "%ld", 0
__printFormat:
      db              "%s", 0
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
