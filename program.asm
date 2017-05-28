global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
func:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
func.0.enter:
     mov                  rbx,                  rsi
     mov                  rsi,                  rdx
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  rsi
     and                  rbx,           1073741823
     mov                  rax,                  rbx
func.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
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
     sub                  rsp,                    8
main.0.enter:
     mov                  rbx,                  700
     mov                   r9,                  rbx
     add                   r9,                    1
     sal                   r9,                    3
    push                   r9
    push                  rsi
     mov                  rdi,                   r9
    call               malloc
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  rbx
     add                  rsi,                    8
     mov                  rdi,                  rsi
     mov                   r8,                  rsi
     sub                   r9,                    8
     add                   r8,                   r9
     cmp                  rdi,                   r8
      jl main.1.allocate_body
     mov                  rdi,                  rsi
     mov                  r10,                  rbx
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  rdi
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  rbx
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                   r9,                  rsi
     sub                  r10,                    8
     add                   r9,                  r10
     cmp                   r8,                   r9
      jl main.4.allocate_body
     mov                  r11,                  rbx
     add                  r11,                    1
     sal                  r11,                    3
    push                  r11
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                  r11
    call               malloc
     pop                  rsi
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                   r8,                  rax
     mov       qword [r8 - 0],                  rbx
     add                   r8,                    8
     mov                   r9,                   r8
     mov                  r10,                   r8
     sub                  r11,                    8
     add                  r10,                  r11
     cmp                   r9,                  r10
      jl main.7.allocate_body
     mov      qword [rbp - 8],                   r8
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.1.allocate_body:
     mov                   r9,                  rbx
     add                   r9,                    1
     sal                   r9,                    3
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                   r9
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                   r9,                  rax
     mov       qword [r9 - 0],                  rbx
     add                   r9,                    8
     mov      qword [rdi - 0],                   r9
     add                  rdi,                    8
     cmp                  rdi,                   r8
      jl main.1.allocate_body
     mov                  rdi,                  rsi
     mov                  r10,                  rbx
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  rdi
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  rbx
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                   r9,                  rsi
     sub                  r10,                    8
     add                   r9,                  r10
     cmp                   r8,                   r9
      jl main.4.allocate_body
     mov                  r11,                  rbx
     add                  r11,                    1
     sal                  r11,                    3
    push                  r11
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                  r11
    call               malloc
     pop                  rsi
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                   r8,                  rax
     mov       qword [r8 - 0],                  rbx
     add                   r8,                    8
     mov                   r9,                   r8
     mov                  r10,                   r8
     sub                  r11,                    8
     add                  r10,                  r11
     cmp                   r9,                  r10
      jl main.7.allocate_body
     mov      qword [rbp - 8],                   r8
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.2.allocate_condition:
     cmp                  rdi,                   r8
      jl main.1.allocate_body
     mov                  rdi,                  rsi
     mov                  r10,                  rbx
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  rdi
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  rbx
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                   r9,                  rsi
     sub                  r10,                    8
     add                   r9,                  r10
     cmp                   r8,                   r9
      jl main.4.allocate_body
     mov                  r11,                  rbx
     add                  r11,                    1
     sal                  r11,                    3
    push                  r11
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                  r11
    call               malloc
     pop                  rsi
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                   r8,                  rax
     mov       qword [r8 - 0],                  rbx
     add                   r8,                    8
     mov                   r9,                   r8
     mov                  r10,                   r8
     sub                  r11,                    8
     add                  r10,                  r11
     cmp                   r9,                  r10
      jl main.7.allocate_body
     mov      qword [rbp - 8],                   r8
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.3.allocate_exit:
     mov                  rdi,                  rsi
     mov                  r10,                  rbx
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  rdi
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  rbx
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                   r9,                  rsi
     sub                  r10,                    8
     add                   r9,                  r10
     cmp                   r8,                   r9
      jl main.4.allocate_body
     mov                  r11,                  rbx
     add                  r11,                    1
     sal                  r11,                    3
    push                  r11
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                  r11
    call               malloc
     pop                  rsi
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                   r8,                  rax
     mov       qword [r8 - 0],                  rbx
     add                   r8,                    8
     mov                   r9,                   r8
     mov                  r10,                   r8
     sub                  r11,                    8
     add                  r10,                  r11
     cmp                   r9,                  r10
      jl main.7.allocate_body
     mov      qword [rbp - 8],                   r8
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.4.allocate_body:
     mov                  r10,                  rbx
     add                  r10,                    1
     sal                  r10,                    3
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                  r10
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  r10,                  rax
     mov      qword [r10 - 0],                  rbx
     add                  r10,                    8
     mov       qword [r8 - 0],                  r10
     add                   r8,                    8
     cmp                   r8,                   r9
      jl main.4.allocate_body
     mov                  r11,                  rbx
     add                  r11,                    1
     sal                  r11,                    3
    push                  r11
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                  r11
    call               malloc
     pop                  rsi
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                   r8,                  rax
     mov       qword [r8 - 0],                  rbx
     add                   r8,                    8
     mov                   r9,                   r8
     mov                  r10,                   r8
     sub                  r11,                    8
     add                  r10,                  r11
     cmp                   r9,                  r10
      jl main.7.allocate_body
     mov      qword [rbp - 8],                   r8
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.5.allocate_condition:
     cmp                   r8,                   r9
      jl main.4.allocate_body
     mov                  r11,                  rbx
     add                  r11,                    1
     sal                  r11,                    3
    push                  r11
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                  r11
    call               malloc
     pop                  rsi
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                   r8,                  rax
     mov       qword [r8 - 0],                  rbx
     add                   r8,                    8
     mov                   r9,                   r8
     mov                  r10,                   r8
     sub                  r11,                    8
     add                  r10,                  r11
     cmp                   r9,                  r10
      jl main.7.allocate_body
     mov      qword [rbp - 8],                   r8
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.6.allocate_exit:
     mov                  r11,                  rbx
     add                  r11,                    1
     sal                  r11,                    3
    push                  r11
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                  r11
    call               malloc
     pop                  rsi
     pop                   r8
     pop                  rdi
     pop                  r11
     mov                   r8,                  rax
     mov       qword [r8 - 0],                  rbx
     add                   r8,                    8
     mov                   r9,                   r8
     mov                  r10,                   r8
     sub                  r11,                    8
     add                  r10,                  r11
     cmp                   r9,                  r10
      jl main.7.allocate_body
     mov      qword [rbp - 8],                   r8
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.7.allocate_body:
     mov                  r11,                  rbx
     add                  r11,                    1
     sal                  r11,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                  r11
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r11,                  rax
     mov      qword [r11 - 0],                  rbx
     add                  r11,                    8
     mov       qword [r9 - 0],                  r11
     add                   r9,                    8
     cmp                   r9,                  r10
      jl main.7.allocate_body
     mov      qword [rbp - 8],                   r8
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.8.allocate_condition:
     cmp                   r9,                  r10
      jl main.7.allocate_body
     mov      qword [rbp - 8],                   r8
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.9.allocate_exit:
     mov      qword [rbp - 8],                   r8
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.10.loop_body:
     mov                   r8,                    0
     cmp                   r8,                  rbx
      jl    main.11.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.11.loop_body:
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r10,                  rdi
     add                  r10,                  r11
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r11
     mov                  r11,                   r9
     add                  r11,                   r8
     mov      qword [r10 - 0],                  r11
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.11.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.12.loop_increment:
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.11.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.13.loop_condition:
     cmp                   r8,                  rbx
      jl    main.11.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.15.loop_increment:
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.16.loop_condition:
     cmp                   r9,                  rbx
      jl    main.10.loop_body
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.17.loop_exit:
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.18.loop_body:
     mov                   r8,                    0
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.19.loop_body:
     mov                  r10,                    0
     cmp                  r10,                  rbx
      jl    main.20.loop_body
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.20.loop_body:
     cmp                   r8,                   r9
     jge      main.21.if_true
     add                  r10,                    1
     cmp                  r10,                  rbx
      jl    main.20.loop_body
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.21.if_true:
     mov                  r12,                   r9
     sal                  r12,                    3
     mov                  r11,                  rsi
     add                  r11,                  r12
     mov                  r12,                   r8
     sal                  r12,                    3
     mov                  r11,      qword [r11 - 0]
     add                  r11,                  r12
     mov                  r13,                   r9
     sal                  r13,                    3
     mov                  r12,                  rsi
     add                  r12,                  r13
     mov                  r13,                   r8
     sal                  r13,                    3
     mov                  r12,      qword [r12 - 0]
     add                  r12,                  r13
     mov                  r14,                   r9
     sal                  r14,                    3
     mov                  r13,                  rdi
     add                  r13,                  r14
     mov                  r14,                  r10
     sal                  r14,                    3
     mov                  r13,      qword [r13 - 0]
     add                  r13,                  r14
     mov                  r14,                  r10
     sal                  r14,                    3
     mov                  r15,                  rdi
     add                  r15,                  r14
     mov                  r14,                   r8
     sal                  r14,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r14
     mov                  r12,      qword [r12 - 0]
     mov                  r14,      qword [r13 - 0]
     mov                  r13,      qword [r15 - 0]
     add                  r12,                  r14
     add                  r12,                  r13
     and                  r12,           1073741823
     mov      qword [r11 - 0],                  r12
     mov                  r12,                   r9
     sal                  r12,                    3
     mov                  r11,      qword [rbp - 8]
     add                  r11,                  r12
     mov                  r12,                   r8
     sal                  r12,                    3
     mov                  r11,      qword [r11 - 0]
     add                  r11,                  r12
     mov                  r13,                   r9
     sal                  r13,                    3
     mov                  r12,                  rsi
     add                  r12,                  r13
     mov                  r13,                   r8
     sal                  r13,                    3
     mov                  r12,      qword [r12 - 0]
     add                  r12,                  r13
     mov                  r14,                   r9
     sal                  r14,                    3
     mov                  r13,                  rdi
     add                  r13,                  r14
     mov                  r14,                  r10
     sal                  r14,                    3
     mov                  r13,      qword [r13 - 0]
     add                  r13,                  r14
     mov                  r14,                  r10
     sal                  r14,                    3
     mov                  r15,                  rdi
     add                  r15,                  r14
     mov                  r14,                   r8
     sal                  r14,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r14
     mov                  r12,      qword [r12 - 0]
     mov                  r14,      qword [r13 - 0]
     mov                  r13,      qword [r15 - 0]
     add                  r12,                  r14
     add                  r12,                  r13
     and                  r12,           1073741823
     mov      qword [r11 - 0],                  r12
     add                  r10,                    1
     cmp                  r10,                  rbx
      jl    main.20.loop_body
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.42.enter:
     add                  r12,                  r14
     add                  r12,                  r13
     and                  r12,           1073741823
     mov      qword [r11 - 0],                  r12
     mov                  r12,                   r9
     sal                  r12,                    3
     mov                  r11,      qword [rbp - 8]
     add                  r11,                  r12
     mov                  r12,                   r8
     sal                  r12,                    3
     mov                  r11,      qword [r11 - 0]
     add                  r11,                  r12
     mov                  r13,                   r9
     sal                  r13,                    3
     mov                  r12,                  rsi
     add                  r12,                  r13
     mov                  r13,                   r8
     sal                  r13,                    3
     mov                  r12,      qword [r12 - 0]
     add                  r12,                  r13
     mov                  r14,                   r9
     sal                  r14,                    3
     mov                  r13,                  rdi
     add                  r13,                  r14
     mov                  r14,                  r10
     sal                  r14,                    3
     mov                  r13,      qword [r13 - 0]
     add                  r13,                  r14
     mov                  r14,                  r10
     sal                  r14,                    3
     mov                  r15,                  rdi
     add                  r15,                  r14
     mov                  r14,                   r8
     sal                  r14,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r14
     mov                  r12,      qword [r12 - 0]
     mov                  r14,      qword [r13 - 0]
     mov                  r13,      qword [r15 - 0]
     add                  r12,                  r14
     add                  r12,                  r13
     and                  r12,           1073741823
     mov      qword [r11 - 0],                  r12
     add                  r10,                    1
     cmp                  r10,                  rbx
      jl    main.20.loop_body
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.43.exit:
     mov      qword [r11 - 0],                  r12
     mov                  r12,                   r9
     sal                  r12,                    3
     mov                  r11,      qword [rbp - 8]
     add                  r11,                  r12
     mov                  r12,                   r8
     sal                  r12,                    3
     mov                  r11,      qword [r11 - 0]
     add                  r11,                  r12
     mov                  r13,                   r9
     sal                  r13,                    3
     mov                  r12,                  rsi
     add                  r12,                  r13
     mov                  r13,                   r8
     sal                  r13,                    3
     mov                  r12,      qword [r12 - 0]
     add                  r12,                  r13
     mov                  r14,                   r9
     sal                  r14,                    3
     mov                  r13,                  rdi
     add                  r13,                  r14
     mov                  r14,                  r10
     sal                  r14,                    3
     mov                  r13,      qword [r13 - 0]
     add                  r13,                  r14
     mov                  r14,                  r10
     sal                  r14,                    3
     mov                  r15,                  rdi
     add                  r15,                  r14
     mov                  r14,                   r8
     sal                  r14,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r14
     mov                  r12,      qword [r12 - 0]
     mov                  r14,      qword [r13 - 0]
     mov                  r13,      qword [r15 - 0]
     add                  r12,                  r14
     add                  r12,                  r13
     and                  r12,           1073741823
     mov      qword [r11 - 0],                  r12
     add                  r10,                    1
     cmp                  r10,                  rbx
      jl    main.20.loop_body
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.44.enter:
     add                  r12,                  r14
     add                  r12,                  r13
     and                  r12,           1073741823
     mov      qword [r11 - 0],                  r12
     add                  r10,                    1
     cmp                  r10,                  rbx
      jl    main.20.loop_body
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.45.exit:
     mov      qword [r11 - 0],                  r12
     add                  r10,                    1
     cmp                  r10,                  rbx
      jl    main.20.loop_body
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.24.loop_increment:
     add                  r10,                    1
     cmp                  r10,                  rbx
      jl    main.20.loop_body
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.25.loop_condition:
     cmp                  r10,                  rbx
      jl    main.20.loop_body
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.27.loop_increment:
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.28.loop_condition:
     cmp                   r8,                  rbx
      jl    main.19.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.30.loop_increment:
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.31.loop_condition:
     cmp                   r9,                  rbx
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.32.loop_exit:
     mov                  rdi,                    0
     mov                   r9,                    0
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.33.loop_body:
     mov                   r8,                    0
     cmp                   r8,                  rbx
      jl    main.34.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.34.loop_body:
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r10,                  rsi
     add                  r10,                  r11
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r11
     add                  rdi,      qword [r10 - 0]
     and                  rdi,           1073741823
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.34.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.35.loop_increment:
     add                   r8,                    1
     cmp                   r8,                  rbx
      jl    main.34.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.36.loop_condition:
     cmp                   r8,                  rbx
      jl    main.34.loop_body
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.38.loop_increment:
     add                   r9,                    1
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.39.loop_condition:
     cmp                   r9,                  rbx
      jl    main.33.loop_body
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
     jmp         main.41.exit
main.40.loop_exit:
    call             toString
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    call                print
     mov                  rax,                    0
main.41.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                    8
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
