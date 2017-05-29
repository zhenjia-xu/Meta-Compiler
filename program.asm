global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
func:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
func.0.enter:
     mov                   r8,                  rdx
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                   r8
     and                  rsi,           1073741823
     mov                  rax,                  rsi
func.1.exit:
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
     sub                  rsp,                   32
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
main.0.enter:
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
     sal                   r8,                    3
    push                   r8
    push                  rsi
     mov                  rdi,                   r8
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],                  rsi
     add                  rbx,                    8
     mov                  rdi,                  rbx
     mov                  r12,                  rbx
     sub                   r8,                    8
     add                  r12,                   r8
     cmp                  rdi,                  r12
      jl main.1.allocate_body
     mov                  rdi,                  rbx
     mov                  r13,                  rsi
     add                  r13,                    1
     sal                  r13,                    3
    push                  rdi
    push                  rsi
     mov                  rdi,                  r13
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx - 0],                  rsi
     add                  rbx,                    8
     mov                  r12,                  rbx
     mov                   r8,                  rbx
     sub                  r13,                    8
     add                   r8,                  r13
     cmp                  r12,                   r8
      jl main.4.allocate_body
     mov                   r9,                  rsi
     add                   r9,                    1
     sal                   r9,                    3
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                   r9
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  r12,                  rax
     mov      qword [r12 - 0],                  rsi
     add                  r12,                    8
     mov                   r8,                  r12
     mov                  r13,                  r12
     sub                   r9,                    8
     add                  r13,                   r9
     cmp                   r8,                  r13
      jl main.7.allocate_body
     mov                  r13,                  r12
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.1.allocate_body:
     mov                   r8,                  rsi
     add                   r8,                    1
     sal                   r8,                    3
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                   r8
    call               malloc
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                   r8,                  rax
     mov       qword [r8 - 0],                  rsi
     add                   r8,                    8
     mov      qword [rdi - 0],                   r8
     add                  rdi,                    8
     cmp                  rdi,                  r12
      jl main.1.allocate_body
     mov                  rdi,                  rbx
     mov                  r13,                  rsi
     add                  r13,                    1
     sal                  r13,                    3
    push                  rdi
    push                  rsi
     mov                  rdi,                  r13
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx - 0],                  rsi
     add                  rbx,                    8
     mov                  r12,                  rbx
     mov                   r8,                  rbx
     sub                  r13,                    8
     add                   r8,                  r13
     cmp                  r12,                   r8
      jl main.4.allocate_body
     mov                   r9,                  rsi
     add                   r9,                    1
     sal                   r9,                    3
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                   r9
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  r12,                  rax
     mov      qword [r12 - 0],                  rsi
     add                  r12,                    8
     mov                   r8,                  r12
     mov                  r13,                  r12
     sub                   r9,                    8
     add                  r13,                   r9
     cmp                   r8,                  r13
      jl main.7.allocate_body
     mov                  r13,                  r12
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.2.allocate_condition:
     cmp                  rdi,                  r12
      jl main.1.allocate_body
     mov                  rdi,                  rbx
     mov                  r13,                  rsi
     add                  r13,                    1
     sal                  r13,                    3
    push                  rdi
    push                  rsi
     mov                  rdi,                  r13
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx - 0],                  rsi
     add                  rbx,                    8
     mov                  r12,                  rbx
     mov                   r8,                  rbx
     sub                  r13,                    8
     add                   r8,                  r13
     cmp                  r12,                   r8
      jl main.4.allocate_body
     mov                   r9,                  rsi
     add                   r9,                    1
     sal                   r9,                    3
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                   r9
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  r12,                  rax
     mov      qword [r12 - 0],                  rsi
     add                  r12,                    8
     mov                   r8,                  r12
     mov                  r13,                  r12
     sub                   r9,                    8
     add                  r13,                   r9
     cmp                   r8,                  r13
      jl main.7.allocate_body
     mov                  r13,                  r12
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.3.allocate_exit:
     mov                  rdi,                  rbx
     mov                  r13,                  rsi
     add                  r13,                    1
     sal                  r13,                    3
    push                  rdi
    push                  rsi
     mov                  rdi,                  r13
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov      qword [rbx - 0],                  rsi
     add                  rbx,                    8
     mov                  r12,                  rbx
     mov                   r8,                  rbx
     sub                  r13,                    8
     add                   r8,                  r13
     cmp                  r12,                   r8
      jl main.4.allocate_body
     mov                   r9,                  rsi
     add                   r9,                    1
     sal                   r9,                    3
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                   r9
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  r12,                  rax
     mov      qword [r12 - 0],                  rsi
     add                  r12,                    8
     mov                   r8,                  r12
     mov                  r13,                  r12
     sub                   r9,                    8
     add                  r13,                   r9
     cmp                   r8,                  r13
      jl main.7.allocate_body
     mov                  r13,                  r12
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.4.allocate_body:
     mov                  r13,                  rsi
     add                  r13,                    1
     sal                  r13,                    3
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                  r13
    call               malloc
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  r13,                  rax
     mov      qword [r13 - 0],                  rsi
     add                  r13,                    8
     mov      qword [r12 - 0],                  r13
     add                  r12,                    8
     cmp                  r12,                   r8
      jl main.4.allocate_body
     mov                   r9,                  rsi
     add                   r9,                    1
     sal                   r9,                    3
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                   r9
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  r12,                  rax
     mov      qword [r12 - 0],                  rsi
     add                  r12,                    8
     mov                   r8,                  r12
     mov                  r13,                  r12
     sub                   r9,                    8
     add                  r13,                   r9
     cmp                   r8,                  r13
      jl main.7.allocate_body
     mov                  r13,                  r12
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.5.allocate_condition:
     cmp                  r12,                   r8
      jl main.4.allocate_body
     mov                   r9,                  rsi
     add                   r9,                    1
     sal                   r9,                    3
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                   r9
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  r12,                  rax
     mov      qword [r12 - 0],                  rsi
     add                  r12,                    8
     mov                   r8,                  r12
     mov                  r13,                  r12
     sub                   r9,                    8
     add                  r13,                   r9
     cmp                   r8,                  r13
      jl main.7.allocate_body
     mov                  r13,                  r12
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.6.allocate_exit:
     mov                   r9,                  rsi
     add                   r9,                    1
     sal                   r9,                    3
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                   r9
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  r12,                  rax
     mov      qword [r12 - 0],                  rsi
     add                  r12,                    8
     mov                   r8,                  r12
     mov                  r13,                  r12
     sub                   r9,                    8
     add                  r13,                   r9
     cmp                   r8,                  r13
      jl main.7.allocate_body
     mov                  r13,                  r12
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.7.allocate_body:
     mov                   r9,                  rsi
     add                   r9,                    1
     sal                   r9,                    3
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                   r9
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                   r9,                  rax
     mov       qword [r9 - 0],                  rsi
     add                   r9,                    8
     mov       qword [r8 - 0],                   r9
     add                   r8,                    8
     cmp                   r8,                  r13
      jl main.7.allocate_body
     mov                  r13,                  r12
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.8.allocate_condition:
     cmp                   r8,                  r13
      jl main.7.allocate_body
     mov                  r13,                  r12
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.9.allocate_exit:
     mov                  r13,                  r12
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.10.loop_body:
     mov                  r12,                    0
     cmp                  r12,                  rsi
      jl    main.11.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.11.loop_body:
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  r14,                  rdi
     add                  r14,                   r9
     mov                   r9,                  r12
     sal                   r9,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                   r9
     mov                   r9,                   r8
     add                   r9,                  r12
     mov      qword [r14 - 0],                   r9
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.11.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.12.loop_increment:
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.11.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.13.loop_condition:
     cmp                  r12,                  rsi
      jl    main.11.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.15.loop_increment:
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.16.loop_condition:
     cmp                   r8,                  rsi
      jl    main.10.loop_body
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.17.loop_exit:
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.18.loop_body:
     mov                  r12,                    0
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.19.loop_body:
     mov                   r9,                    0
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.20.loop_body:
     cmp                  r12,                   r8
     jge      main.21.if_true
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.21.if_true:
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  rbx
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r14 - 0]
     mov      qword [rbp - 8],                  rax
     add      qword [rbp - 8],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  rbx
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  r11,      qword [r14 - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     mov                  r14,                  r11
     add                  r14,                  r10
     add                  r14,                  r15
     and                  r14,           1073741823
     mov                  rcx,      qword [rbp - 8]
     mov      qword [rcx - 0],                  r14
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r14 - 0]
     mov     qword [rbp - 16],                  rax
     add     qword [rbp - 16],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  rbx
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  r11,      qword [r14 - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     mov                  r14,                  r11
     add                  r14,                  r10
     add                  r14,                  r15
     and                  r14,           1073741823
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                  r14
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rbx
     add                  r10,                  r15
     mov                  r15,                  r12
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 24],                  rax
     add     qword [rbp - 24],                  r11
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  r11,      qword [r10 - 0]
     mov                  rcx,     qword [rbp - 24]
     mov                  r10,      qword [rcx - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r15,                  rbx
     add                  r15,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 32],                  rax
     add     qword [rbp - 32],                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  rcx,     qword [rbp - 32]
     mov                  r11,      qword [rcx - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.42.enter:
     mov                  r14,                  r11
     add                  r14,                  r10
     add                  r14,                  r15
     and                  r14,           1073741823
     mov                  rcx,      qword [rbp - 8]
     mov      qword [rcx - 0],                  r14
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r14 - 0]
     mov     qword [rbp - 16],                  rax
     add     qword [rbp - 16],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  rbx
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  r11,      qword [r14 - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     mov                  r14,                  r11
     add                  r14,                  r10
     add                  r14,                  r15
     and                  r14,           1073741823
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                  r14
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rbx
     add                  r10,                  r15
     mov                  r15,                  r12
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 24],                  rax
     add     qword [rbp - 24],                  r11
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  r11,      qword [r10 - 0]
     mov                  rcx,     qword [rbp - 24]
     mov                  r10,      qword [rcx - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r15,                  rbx
     add                  r15,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 32],                  rax
     add     qword [rbp - 32],                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  rcx,     qword [rbp - 32]
     mov                  r11,      qword [rcx - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.43.exit:
     mov                  rcx,      qword [rbp - 8]
     mov      qword [rcx - 0],                  r14
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r14 - 0]
     mov     qword [rbp - 16],                  rax
     add     qword [rbp - 16],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  rbx
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  r11,      qword [r14 - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     mov                  r14,                  r11
     add                  r14,                  r10
     add                  r14,                  r15
     and                  r14,           1073741823
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                  r14
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rbx
     add                  r10,                  r15
     mov                  r15,                  r12
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 24],                  rax
     add     qword [rbp - 24],                  r11
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  r11,      qword [r10 - 0]
     mov                  rcx,     qword [rbp - 24]
     mov                  r10,      qword [rcx - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r15,                  rbx
     add                  r15,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 32],                  rax
     add     qword [rbp - 32],                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  rcx,     qword [rbp - 32]
     mov                  r11,      qword [rcx - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.44.enter:
     mov                  r14,                  r11
     add                  r14,                  r10
     add                  r14,                  r15
     and                  r14,           1073741823
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                  r14
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rbx
     add                  r10,                  r15
     mov                  r15,                  r12
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 24],                  rax
     add     qword [rbp - 24],                  r11
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  r11,      qword [r10 - 0]
     mov                  rcx,     qword [rbp - 24]
     mov                  r10,      qword [rcx - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r15,                  rbx
     add                  r15,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 32],                  rax
     add     qword [rbp - 32],                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  rcx,     qword [rbp - 32]
     mov                  r11,      qword [rcx - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.45.exit:
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                  r14
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rbx
     add                  r10,                  r15
     mov                  r15,                  r12
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 24],                  rax
     add     qword [rbp - 24],                  r11
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  r11,      qword [r10 - 0]
     mov                  rcx,     qword [rbp - 24]
     mov                  r10,      qword [rcx - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r15,                  rbx
     add                  r15,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 32],                  rax
     add     qword [rbp - 32],                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  rcx,     qword [rbp - 32]
     mov                  r11,      qword [rcx - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.46.enter:
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r15,                  rbx
     add                  r15,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 32],                  rax
     add     qword [rbp - 32],                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  rcx,     qword [rbp - 32]
     mov                  r11,      qword [rcx - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.47.exit:
     mov      qword [r14 - 0],                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r14,                  r13
     add                  r14,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r15,                  rbx
     add                  r15,                  r10
     mov                  r10,                  r12
     sal                  r10,                    3
     mov                  rax,      qword [r15 - 0]
     mov     qword [rbp - 32],                  rax
     add     qword [rbp - 32],                  r10
     mov                  r15,                   r8
     sal                  r15,                    3
     mov                  r10,                  rdi
     add                  r10,                  r15
     mov                  r15,                   r9
     sal                  r15,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,                  rdi
     add                  r15,                  r11
     mov                  r11,                  r12
     sal                  r11,                    3
     mov                  r15,      qword [r15 - 0]
     add                  r15,                  r11
     mov                  rcx,     qword [rbp - 32]
     mov                  r11,      qword [rcx - 0]
     mov                  r10,      qword [r10 - 0]
     mov                  r15,      qword [r15 - 0]
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.48.enter:
     add                  r11,                  r10
     mov                  r10,                  r11
     add                  r10,                  r15
     and                  r10,           1073741823
     mov      qword [r14 - 0],                  r10
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.49.exit:
     mov      qword [r14 - 0],                  r10
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.24.loop_increment:
     add                   r9,                    1
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.25.loop_condition:
     cmp                   r9,                  rsi
      jl    main.20.loop_body
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.27.loop_increment:
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.28.loop_condition:
     cmp                  r12,                  rsi
      jl    main.19.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.30.loop_increment:
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.31.loop_condition:
     cmp                   r8,                  rsi
      jl    main.18.loop_body
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.32.loop_exit:
     mov                  rdi,                    0
     mov                   r8,                    0
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.33.loop_body:
     mov                  r12,                    0
     cmp                  r12,                  rsi
      jl    main.34.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.34.loop_body:
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  r13,                  rbx
     add                  r13,                   r9
     mov                   r9,                  r12
     sal                   r9,                    3
     mov                  r13,      qword [r13 - 0]
     add                  r13,                   r9
     add                  rdi,      qword [r13 - 0]
     and                  rdi,           1073741823
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.34.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.35.loop_increment:
     add                  r12,                    1
     cmp                  r12,                  rsi
      jl    main.34.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.36.loop_condition:
     cmp                  r12,                  rsi
      jl    main.34.loop_body
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.38.loop_increment:
     add                   r8,                    1
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.39.loop_condition:
     cmp                   r8,                  rsi
      jl    main.33.loop_body
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.41.exit
main.40.loop_exit:
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
main.41.exit:
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
SECTION .data
SECTION .bss
