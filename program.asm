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
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
     sub                  rsp,                   32
main.0.enter:
     mov                  r13,                   14
     mov                   r9,                    0
     mov                  rdi,                    0
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.1.loop_body:
     mov                  r10,                    0
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.2.loop_body:
     mov                  r11,                    0
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.3.loop_body:
     mov                  rsi,                    0
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.4.loop_body:
     mov                  r12,                    0
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.5.loop_body:
     mov                  rbx,                    0
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.6.loop_body:
     mov                   r8,                    0
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.7.loop_body:
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.9.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.18.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.13.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     jmp main.33.logical_true
main.8.logical_true:
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.18.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.13.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.35.logical_exit
main.9.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je main.18.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.13.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.35.logical_exit
main.10.logical_exit:
     cmp                  r14,                    1
      je main.18.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.13.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     jmp main.36.logical_true
main.11.logical_false:
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.13.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.40.logical_exit
main.12.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     jmp main.41.logical_false
main.13.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     jmp main.41.logical_false
main.14.logical_exit:
     cmp                  r14,                    1
     jne main.16.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     jmp main.43.logical_exit
main.15.logical_true:
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     jmp main.44.logical_false
main.16.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     jmp main.44.logical_false
main.18.logical_true:
     mov                  r14,                    1
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     jmp main.44.logical_false
main.19.logical_exit:
     cmp                  r14,                    1
      je main.21.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     jmp main.45.logical_true
main.20.logical_false:
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.49.logical_exit
main.21.logical_true:
     mov                  r14,                    1
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.49.logical_exit
main.22.logical_exit:
     cmp                  r14,                    1
      je main.27.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     jmp main.50.logical_true
main.23.logical_false:
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.52.logical_exit
main.24.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     jmp main.53.logical_false
main.25.logical_false:
     mov                  r14,                    0
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     jmp main.53.logical_false
main.27.logical_true:
     mov                  r14,                    1
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     jmp main.53.logical_false
main.28.logical_exit:
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     jmp main.54.logical_true
main.29.logical_true:
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.56.logical_exit
main.30.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.56.logical_exit
main.31.logical_exit:
     cmp                  r14,                    1
      je main.39.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     jmp main.57.logical_true
main.32.logical_false:
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.61.logical_exit
main.33.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     jmp main.62.logical_false
main.34.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     jmp main.62.logical_false
main.35.logical_exit:
     cmp                  r14,                    1
     jne main.37.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     jmp main.64.logical_exit
main.36.logical_true:
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     jmp main.65.logical_false
main.37.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     jmp main.65.logical_false
main.39.logical_true:
     mov                  r14,                    1
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     jmp main.65.logical_false
main.40.logical_exit:
     cmp                  r14,                    1
      je main.42.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     jmp main.66.logical_true
main.41.logical_false:
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.70.logical_exit
main.42.logical_true:
     mov                  r14,                    1
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.70.logical_exit
main.43.logical_exit:
     cmp                  r14,                    1
      je main.48.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     jmp main.71.logical_true
main.44.logical_false:
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.73.logical_exit
main.45.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     jmp main.74.logical_false
main.46.logical_false:
     mov                  r14,                    0
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     jmp main.74.logical_false
main.48.logical_true:
     mov                  r14,                    1
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     jmp main.74.logical_false
main.49.logical_exit:
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     jmp main.75.logical_true
main.50.logical_true:
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.77.logical_exit
main.51.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.77.logical_exit
main.52.logical_exit:
     cmp                  r14,                    1
      je main.60.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     jmp main.78.logical_true
main.53.logical_false:
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.82.logical_exit
main.54.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     jmp main.83.logical_false
main.55.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     jmp main.83.logical_false
main.56.logical_exit:
     cmp                  r14,                    1
     jne main.58.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     jmp main.85.logical_exit
main.57.logical_true:
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     jmp main.86.logical_false
main.58.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     jmp main.86.logical_false
main.60.logical_true:
     mov                  r14,                    1
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     jmp main.86.logical_false
main.61.logical_exit:
     cmp                  r14,                    1
      je main.63.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     jmp main.87.logical_true
main.62.logical_false:
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.91.logical_exit
main.63.logical_true:
     mov                  r14,                    1
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.91.logical_exit
main.64.logical_exit:
     cmp                  r14,                    1
      je main.69.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     jmp main.92.logical_true
main.65.logical_false:
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.94.logical_exit
main.66.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     jmp main.95.logical_false
main.67.logical_false:
     mov                  r14,                    0
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     jmp main.95.logical_false
main.69.logical_true:
     mov                  r14,                    1
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     jmp main.95.logical_false
main.70.logical_exit:
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     jmp main.96.logical_true
main.71.logical_true:
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.98.logical_exit
main.72.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.98.logical_exit
main.73.logical_exit:
     cmp                  r14,                    1
      je main.81.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     jmp main.99.logical_true
main.74.logical_false:
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.103.logical_exit
main.75.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     jmp main.104.logical_false
main.76.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     jmp main.104.logical_false
main.77.logical_exit:
     cmp                  r14,                    1
     jne main.79.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     jmp main.106.logical_exit
main.78.logical_true:
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     jmp main.107.logical_false
main.79.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     jmp main.107.logical_false
main.81.logical_true:
     mov                  r14,                    1
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     jmp main.107.logical_false
main.82.logical_exit:
     cmp                  r14,                    1
      je main.84.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     jmp main.108.logical_true
main.83.logical_false:
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.112.logical_exit
main.84.logical_true:
     mov                  r14,                    1
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.112.logical_exit
main.85.logical_exit:
     cmp                  r14,                    1
      je main.90.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     jmp main.113.logical_true
main.86.logical_false:
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     jmp main.115.logical_exit
main.87.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     jmp main.116.logical_false
main.88.logical_false:
     mov                  r14,                    0
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     jmp main.116.logical_false
main.90.logical_true:
     mov                  r14,                    1
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     jmp main.116.logical_false
main.91.logical_exit:
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                  r10
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     jmp main.117.logical_true
main.92.logical_true:
     cmp                  r11,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     jmp main.119.logical_exit
main.93.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     jmp main.119.logical_exit
main.94.logical_exit:
     cmp                  r14,                    1
      je main.102.logical_true
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     jmp main.120.logical_true
main.95.logical_false:
     cmp                  rsi,                  r12
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     jmp main.124.logical_exit
main.96.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     jmp main.125.logical_false
main.97.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     jmp main.125.logical_false
main.98.logical_exit:
     cmp                  r14,                    1
     jne main.100.logical_false
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     jmp main.127.logical_exit
main.99.logical_true:
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     jmp main.128.logical_false
main.100.logical_false:
     mov                  r14,                    0
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     jmp main.128.logical_false
main.102.logical_true:
     mov                  r14,                    1
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     jmp main.128.logical_false
main.103.logical_exit:
     cmp                  r14,                    1
      je main.105.logical_true
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.104.logical_false:
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.105.logical_true:
     mov                  r14,                    1
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.106.logical_exit:
     cmp                  r14,                    1
      je main.111.logical_true
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.107.logical_false:
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.108.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.109.logical_false:
     mov                  r14,                    0
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.111.logical_true:
     mov                  r14,                    1
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.112.logical_exit:
     cmp                  rdi,                  r10
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.113.logical_true:
     cmp                  r11,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     jmp     main.148.if_exit
main.114.logical_false:
     mov                  r15,                    0
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     jmp     main.148.if_exit
main.115.logical_exit:
     cmp                  r15,                    1
      je main.123.logical_true
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.116.logical_false:
     cmp                  rsi,                  r12
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.117.logical_true:
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.118.logical_false:
     mov                  r15,                    0
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.119.logical_exit:
     cmp                  r15,                    1
     jne main.121.logical_false
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.120.logical_true:
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.121.logical_false:
     mov                  r15,                    0
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.123.logical_true:
     mov                  r15,                    1
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.124.logical_exit:
     cmp                  r15,                    1
      je main.126.logical_true
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.125.logical_false:
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.126.logical_true:
     mov                  r15,                    1
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.127.logical_exit:
     cmp                  r15,                    1
      je main.132.logical_true
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.128.logical_false:
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.129.logical_true:
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.130.logical_false:
     mov                  r15,                    0
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.132.logical_true:
     mov                  r15,                    1
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.133.logical_exit:
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.134.if_true:
     add                   r9,                    1
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.136.if_exit:
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.137.if_true:
     add                   r9,                    1
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.139.if_exit:
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.140.if_true:
     add                   r9,                    1
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.142.if_exit:
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.143.if_true:
     add                   r9,                    1
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.145.if_exit:
     cmp                  r14,                    1
      je     main.146.if_true
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.146.if_true:
     add                   r9,                    1
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.148.if_exit:
     cmp                  r15,                    1
      je     main.149.if_true
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.149.if_true:
     add                   r9,                    1
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.152.loop_increment:
     add                   r8,                    1
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.153.loop_condition:
     cmp                   r8,                  r13
      jl     main.7.loop_body
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.155.loop_increment:
     add                  rbx,                    1
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.156.loop_condition:
     cmp                  rbx,                  r13
      jl     main.6.loop_body
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.158.loop_increment:
     add                  r12,                    1
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.159.loop_condition:
     cmp                  r12,                  r13
      jl     main.5.loop_body
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.161.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.162.loop_condition:
     cmp                  rsi,                  r13
      jl     main.4.loop_body
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.164.loop_increment:
     add                  r11,                    1
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.165.loop_condition:
     cmp                  r11,                  r13
      jl     main.3.loop_body
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.167.loop_increment:
     add                  r10,                    1
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.168.loop_condition:
     cmp                  r10,                  r13
      jl     main.2.loop_body
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.170.loop_increment:
     add                  rdi,                    1
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.171.loop_condition:
     cmp                  rdi,                  r13
      jl     main.1.loop_body
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
     jmp        main.173.exit
main.172.loop_exit:
     mov                  rdi,                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
main.173.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   32
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
