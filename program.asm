global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
random:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
random.0.enter:
     mov                  rsi,    qword [@seed - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     mov                  rbx,       qword [@A - 0]
    imul                  rbx,                  rsi
     mov                  rsi,    qword [@seed - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rsi,                  rax
     mov                  rdi,       qword [@R - 0]
    imul                  rdi,                  rsi
     sub                  rbx,                  rdi
     cmp                  rbx,                    0
     jge     random.1.if_true
     add                  rbx,       qword [@M - 0]
     mov    qword [@seed - 0],                  rbx
     mov                  rax,    qword [@seed - 0]
     jmp        random.4.exit
random.1.if_true:
     mov    qword [@seed - 0],                  rbx
     mov                  rax,    qword [@seed - 0]
     jmp        random.4.exit
random.2.if_false:
     add                  rbx,       qword [@M - 0]
     mov    qword [@seed - 0],                  rbx
     mov                  rax,    qword [@seed - 0]
     jmp        random.4.exit
random.3.if_exit:
     mov                  rax,    qword [@seed - 0]
random.4.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
move:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
move.0.enter:
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl     move.1.loop_body
     mov                  rbx,     qword [@now - 0]
     sal                  rbx,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rbx
     mov                  rbx,     qword [@now - 0]
     mov      qword [rsi - 0],                  rbx
     add     qword [@now - 0],                    1
     jmp          move.5.exit
move.1.loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  rsi
     sub      qword [rdi - 0],                    1
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl     move.1.loop_body
     mov                  rbx,     qword [@now - 0]
     sal                  rbx,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rbx
     mov                  rbx,     qword [@now - 0]
     mov      qword [rsi - 0],                  rbx
     add     qword [@now - 0],                    1
     jmp          move.5.exit
move.3.loop_condition:
     cmp                  rbx,     qword [@now - 0]
      jl     move.1.loop_body
     mov                  rbx,     qword [@now - 0]
     sal                  rbx,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rbx
     mov                  rbx,     qword [@now - 0]
     mov      qword [rsi - 0],                  rbx
     add     qword [@now - 0],                    1
     jmp          move.5.exit
move.4.loop_exit:
     mov                  rbx,     qword [@now - 0]
     sal                  rbx,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rbx
     mov                  rbx,     qword [@now - 0]
     mov      qword [rsi - 0],                  rbx
     add     qword [@now - 0],                    1
move.5.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
pd:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
pd.0.enter:
     mov                  rbx,                  rdi
     cmp       qword [@h - 0],                  rbx
     jle       pd.1.loop_body
     mov                  rax,                    0
     jmp            pd.8.exit
pd.1.loop_body:
     mov                  rsi,       qword [@h - 0]
     add                  rsi,                    1
     mov                  rdi,       qword [@h - 0]
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      je         pd.2.if_true
     add       qword [@h - 0],                    1
     cmp       qword [@h - 0],                  rbx
     jle       pd.1.loop_body
     mov                  rax,                    0
     jmp            pd.8.exit
pd.2.if_true:
     mov                  rax,                    1
     jmp            pd.8.exit
pd.5.loop_increment:
     add       qword [@h - 0],                    1
     cmp       qword [@h - 0],                  rbx
     jle       pd.1.loop_body
     mov                  rax,                    0
     jmp            pd.8.exit
pd.6.loop_condition:
     cmp       qword [@h - 0],                  rbx
     jle       pd.1.loop_body
     mov                  rax,                    0
     jmp            pd.8.exit
pd.7.loop_exit:
     mov                  rax,                    0
pd.8.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
swap:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
swap.0.enter:
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rsi
     mov                  rsi,       qword [r8 - 0]
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r8
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                   r9,       qword [@a - 0]
     add                   r9,                   r8
     mov                   r8,       qword [r9 - 0]
     mov      qword [rdi - 0],                   r8
     sal                  rbx,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  rbx
     mov      qword [rdi - 0],                  rsi
swap.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
     mov       qword [@A - 0],                48271
     mov       qword [@M - 0],           2147483647
     mov    qword [@seed - 0],                    1
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
merge:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
merge.0.enter:
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl    merge.1.loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.1.loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      je      merge.2.if_true
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl    merge.1.loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.2.if_true:
     mov                  rsi,                  rbx
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl    merge.3.loop_body
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl    merge.1.loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.3.loop_body:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rdi
     cmp       qword [r8 - 0],                    0
     jne      merge.4.if_true
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl    merge.3.loop_body
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl    merge.1.loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.4.if_true:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [r8 - 0]
     mov                   r9,                  rbx
     sal                   r9,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                   r9
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,       qword [@a - 0]
     add                   r9,                  r10
     mov                   r9,       qword [r9 - 0]
     mov       qword [r8 - 0],                   r9
     sal                  rsi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rsi
     mov       qword [r8 - 0],                  rdi
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl    merge.1.loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.23.enter:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [r8 - 0]
     mov                   r9,                  rbx
     sal                   r9,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                   r9
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,       qword [@a - 0]
     add                   r9,                  r10
     mov                   r9,       qword [r9 - 0]
     mov       qword [r8 - 0],                   r9
     sal                  rsi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rsi
     mov       qword [r8 - 0],                  rdi
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl    merge.1.loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.7.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl    merge.3.loop_body
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl    merge.1.loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.8.loop_condition:
     cmp                  rsi,     qword [@now - 0]
      jl    merge.3.loop_body
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl    merge.1.loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.12.loop_increment:
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl    merge.1.loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.13.loop_condition:
     cmp                  rbx,     qword [@now - 0]
      jl    merge.1.loop_body
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.14.loop_exit:
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.15.loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      je     merge.16.if_true
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.16.if_true:
     mov     qword [@now - 0],                  rbx
     jmp        merge.22.exit
merge.19.loop_increment:
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
     jmp        merge.22.exit
merge.20.loop_condition:
     cmp                  rbx,     qword [@now - 0]
      jl   merge.15.loop_body
merge.22.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
show:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
show.0.enter:
     mov                  rbx,                    0
     cmp                  rbx,     qword [@now - 0]
      jl     show.1.loop_body
     mov                  rdi,      __string_const1
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     jmp          show.5.exit
show.1.loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const0
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl     show.1.loop_body
     mov                  rdi,      __string_const1
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     jmp          show.5.exit
show.2.loop_increment:
     add                  rbx,                    1
     cmp                  rbx,     qword [@now - 0]
      jl     show.1.loop_body
     mov                  rdi,      __string_const1
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     jmp          show.5.exit
show.3.loop_condition:
     cmp                  rbx,     qword [@now - 0]
      jl     show.1.loop_body
     mov                  rdi,      __string_const1
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     jmp          show.5.exit
show.4.loop_exit:
     mov                  rdi,      __string_const1
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
show.5.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
    push                  rbx
    push                  r12
    push                  r13
     sub                  rsp,                    0
main.0.enter:
     mov                  rbx,                    0
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.1.loop_body:
     mov                   r9,                    0
     mov                  rsi,                    0
     mov                   r8,                    0
     mov       qword [@n - 0],                 5050
     mov       qword [@h - 0],                    0
     mov                  rdi,                  101
     add                  rdi,                    1
     sal                  rdi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
     mov      qword [rdi - 0],                  101
     add                  rdi,                    8
     mov       qword [@a - 0],                  rdi
     mov                  rdi,       qword [@M - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@A - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rax
     mov       qword [@Q - 0],                  rdi
     mov                  rdi,       qword [@M - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@A - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov       qword [@R - 0],                  rdi
     mov                  rdi,       qword [@n - 0]
     cmp       qword [@h - 0],                  rdi
     jle    main.20.loop_body
     mov                  rdi,                    0
     cmp                  rdi,                    1
     jne       main.2.if_true
     mov                  rdi,      __string_const3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov                  r10,       qword [@A - 0]
    imul                  r10,                  rdi
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  rdi,       qword [@R - 0]
    imul                  rdi,                  r11
     sub                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.29.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.20.loop_body:
     mov                  r11,       qword [@h - 0]
     add                  r11,                    1
     mov                  r10,       qword [@h - 0]
    imul                  r10,                  r11
     mov                  rax,                  r10
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                  r10,                  rax
     cmp                  rdi,                  r10
      je      main.21.if_true
     add       qword [@h - 0],                    1
     cmp       qword [@h - 0],                  rdi
     jle    main.20.loop_body
     mov                  rdi,                    0
     cmp                  rdi,                    1
     jne       main.2.if_true
     mov                  rdi,      __string_const3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov                  r10,       qword [@A - 0]
    imul                  r10,                  rdi
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  rdi,       qword [@R - 0]
    imul                  rdi,                  r11
     sub                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.29.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.21.if_true:
     mov                  rdi,                    1
     cmp                  rdi,                    1
     jne       main.2.if_true
     mov                  rdi,      __string_const3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov                  r10,       qword [@A - 0]
    imul                  r10,                  rdi
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  rdi,       qword [@R - 0]
    imul                  rdi,                  r11
     sub                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.29.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.24.loop_increment:
     add       qword [@h - 0],                    1
     cmp       qword [@h - 0],                  rdi
     jle    main.20.loop_body
     mov                  rdi,                    0
     cmp                  rdi,                    1
     jne       main.2.if_true
     mov                  rdi,      __string_const3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov                  r10,       qword [@A - 0]
    imul                  r10,                  rdi
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  rdi,       qword [@R - 0]
    imul                  rdi,                  r11
     sub                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.29.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.25.loop_condition:
     cmp       qword [@h - 0],                  rdi
     jle    main.20.loop_body
     mov                  rdi,                    0
     cmp                  rdi,                    1
     jne       main.2.if_true
     mov                  rdi,      __string_const3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov                  r10,       qword [@A - 0]
    imul                  r10,                  rdi
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  rdi,       qword [@R - 0]
    imul                  rdi,                  r11
     sub                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.29.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.26.loop_exit:
     mov                  rdi,                    0
     cmp                  rdi,                    1
     jne       main.2.if_true
     mov                  rdi,      __string_const3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov                  r10,       qword [@A - 0]
    imul                  r10,                  rdi
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  rdi,       qword [@R - 0]
    imul                  rdi,                  r11
     sub                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.29.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.27.exit:
     cmp                  rdi,                    1
     jne       main.2.if_true
     mov                  rdi,      __string_const3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov                  r10,       qword [@A - 0]
    imul                  r10,                  rdi
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  rdi,       qword [@R - 0]
    imul                  rdi,                  r11
     sub                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.29.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.2.if_true:
     mov                  rdi,      __string_const2
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rax,                    1
     jmp         main.18.exit
main.4.if_exit:
     mov                  rdi,      __string_const3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov                  r10,       qword [@A - 0]
    imul                  r10,                  rdi
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  rdi,       qword [@R - 0]
    imul                  rdi,                  r11
     sub                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.29.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.28.enter:
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov                  r10,       qword [@A - 0]
    imul                  r10,                  rdi
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  rdi,       qword [@R - 0]
    imul                  rdi,                  r11
     sub                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.29.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.29.if_true:
     mov    qword [@seed - 0],                  r10
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.30.if_false:
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.31.if_exit:
     mov                  rdi,    qword [@seed - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.33.enter:
     mov    qword [@seed - 0],                  rdi
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.35.enter:
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  rdi,       qword [@A - 0]
    imul                  rdi,                  r10
     mov                  r11,    qword [@seed - 0]
     mov                  rax,                  r11
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r11
     sub                  rdi,                  r10
     mov                  r10,                  rdi
     cmp                  r10,                    0
     jge      main.36.if_true
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.36.if_true:
     mov    qword [@seed - 0],                  r10
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.37.if_false:
     mov                  rdi,                  r10
     add                  rdi,       qword [@M - 0]
     mov    qword [@seed - 0],                  rdi
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.38.if_exit:
     mov                  rdi,    qword [@seed - 0]
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.39.exit:
     mov                  rax,                  rdi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     add                  rdi,                    1
     mov     qword [@now - 0],                  rdi
     mov                  rdi,     qword [@now - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.5.loop_body:
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  r11,       qword [@A - 0]
    imul                  r11,                  r10
     mov                  r12,    qword [@seed - 0]
     mov                  rax,                  r12
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r12,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r12
     sub                  r11,                  r10
     mov                  r10,                  r11
     cmp                  r10,                    0
     jge      main.41.if_true
     add                  r10,       qword [@M - 0]
     mov    qword [@seed - 0],                  r10
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.40.enter:
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  r11,       qword [@A - 0]
    imul                  r11,                  r10
     mov                  r12,    qword [@seed - 0]
     mov                  rax,                  r12
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r12,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r12
     sub                  r11,                  r10
     mov                  r10,                  r11
     cmp                  r10,                    0
     jge      main.41.if_true
     add                  r10,       qword [@M - 0]
     mov    qword [@seed - 0],                  r10
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.41.if_true:
     mov    qword [@seed - 0],                  r10
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.42.if_false:
     add                  r10,       qword [@M - 0]
     mov    qword [@seed - 0],                  r10
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.43.if_exit:
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.44.exit:
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.6.loop_body:
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  r11,       qword [@A - 0]
    imul                  r11,                  r10
     mov                  r12,    qword [@seed - 0]
     mov                  rax,                  r12
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r12,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r12
     sub                  r11,                  r10
     mov                  r10,                  r11
     cmp                  r10,                    0
     jge      main.46.if_true
     add                  r10,       qword [@M - 0]
     mov    qword [@seed - 0],                  r10
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.45.enter:
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     mov                  r11,       qword [@A - 0]
    imul                  r11,                  r10
     mov                  r12,    qword [@seed - 0]
     mov                  rax,                  r12
     mov                  rcx,       qword [@Q - 0]
     cqo
    idiv                  rcx
     mov                  r12,                  rax
     mov                  r10,       qword [@R - 0]
    imul                  r10,                  r12
     sub                  r11,                  r10
     mov                  r10,                  r11
     cmp                  r10,                    0
     jge      main.46.if_true
     add                  r10,       qword [@M - 0]
     mov    qword [@seed - 0],                  r10
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.46.if_true:
     mov    qword [@seed - 0],                  r10
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.47.if_false:
     add                  r10,       qword [@M - 0]
     mov    qword [@seed - 0],                  r10
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.48.if_exit:
     mov                  r10,    qword [@seed - 0]
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.49.exit:
     mov                  rax,                  r10
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  r10,                  rdx
     add                  r10,                    1
     mov      qword [rdi - 0],                  r10
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.7.loop_condition:
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,                  rsi
     cmp                  rdi,       qword [@n - 0]
      jg     main.6.loop_body
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.8.loop_exit:
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.9.loop_increment:
     add                   r9,                    1
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.10.loop_condition:
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     cmp                   r9,                  rdi
      jl     main.5.loop_body
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.11.loop_exit:
     mov                  rdi,     qword [@now - 0]
     sub                  rdi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     mov                   r9,       qword [@n - 0]
     sub                   r9,                  rsi
     mov      qword [rdi - 0],                   r9
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.50.enter:
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.51.loop_body:
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const6
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                   r9,                    1
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.52.loop_increment:
     add                   r9,                    1
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.53.loop_condition:
     cmp                   r9,     qword [@now - 0]
      jl    main.51.loop_body
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.54.loop_exit:
     mov                  rdi,      __string_const7
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.56.enter:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.57.loop_body:
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                   r9
     cmp      qword [rsi - 0],                    0
      je      main.58.if_true
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.58.if_true:
     mov                  rsi,                  rdi
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl    main.59.loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.59.loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                   r9
     cmp      qword [r10 - 0],                    0
     jne      main.60.if_true
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl    main.59.loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.60.if_true:
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call                 swap
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.63.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl    main.59.loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.64.loop_condition:
     cmp                  rsi,     qword [@now - 0]
      jl    main.59.loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.68.loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.69.loop_condition:
     cmp                  rdi,     qword [@now - 0]
      jl    main.57.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.70.loop_exit:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.71.loop_body:
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                   r9,       qword [@a - 0]
     add                   r9,                  rsi
     cmp       qword [r9 - 0],                    0
      je      main.72.if_true
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.72.if_true:
     mov     qword [@now - 0],                  rdi
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.75.loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.76.loop_condition:
     cmp                  rdi,     qword [@now - 0]
      jl    main.71.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.12.loop_body:
     add                   r8,                    1
     mov                  rsi,                    0
     cmp                  rsi,     qword [@now - 0]
      jl    main.80.loop_body
     mov                  rdi,     qword [@now - 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [@now - 0]
     mov      qword [rsi - 0],                  rdi
     add     qword [@now - 0],                    1
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.79.enter:
     mov                  rsi,                    0
     cmp                  rsi,     qword [@now - 0]
      jl    main.80.loop_body
     mov                  rdi,     qword [@now - 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [@now - 0]
     mov      qword [rsi - 0],                  rdi
     add     qword [@now - 0],                    1
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.80.loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r9
     sub      qword [rdi - 0],                    1
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl    main.80.loop_body
     mov                  rdi,     qword [@now - 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [@now - 0]
     mov      qword [rsi - 0],                  rdi
     add     qword [@now - 0],                    1
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.82.loop_condition:
     cmp                  rsi,     qword [@now - 0]
      jl    main.80.loop_body
     mov                  rdi,     qword [@now - 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [@now - 0]
     mov      qword [rsi - 0],                  rdi
     add     qword [@now - 0],                    1
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.83.loop_exit:
     mov                  rdi,     qword [@now - 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rdi,     qword [@now - 0]
     mov      qword [rsi - 0],                  rdi
     add     qword [@now - 0],                    1
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.85.enter:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.86.loop_body:
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                   r9
     cmp      qword [rsi - 0],                    0
      je      main.87.if_true
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.87.if_true:
     mov                  rsi,                  rdi
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl    main.88.loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.88.loop_body:
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                   r9
     cmp      qword [r10 - 0],                    0
     jne      main.89.if_true
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl    main.88.loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.89.if_true:
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call                 swap
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.92.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl    main.88.loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.93.loop_condition:
     cmp                  rsi,     qword [@now - 0]
      jl    main.88.loop_body
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.97.loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.98.loop_condition:
     cmp                  rdi,     qword [@now - 0]
      jl    main.86.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.99.loop_exit:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.100.loop_body:
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                   r9,       qword [@a - 0]
     add                   r9,                  rsi
     cmp       qword [r9 - 0],                    0
      je     main.101.if_true
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.101.if_true:
     mov     qword [@now - 0],                  rdi
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.104.loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.105.loop_condition:
     cmp                  rdi,     qword [@now - 0]
      jl   main.100.loop_body
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.108.enter:
     mov                  rsi,                  101
     add                  rsi,                    1
     sal                  rsi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  101
     add                  rsi,                    8
     mov                  rdi,     qword [@now - 0]
     cmp                  rdi,       qword [@h - 0]
     jne     main.109.if_true
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.109.if_true:
     mov                  rsi,                    0
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.111.if_exit:
     mov                   r9,                    0
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.112.loop_body:
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rdi,                  rsi
     add                  rdi,                  r10
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r10,       qword [@a - 0]
     add                  r10,                  r11
     mov                  r10,      qword [r10 - 0]
     mov      qword [rdi - 0],                  r10
     add                   r9,                    1
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.113.loop_increment:
     add                   r9,                    1
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.114.loop_condition:
     cmp                   r9,     qword [@now - 0]
      jl   main.112.loop_body
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.115.loop_exit:
     mov                  rdi,                    0
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.116.loop_body:
     mov                   r9,                  rdi
     add                   r9,                    1
     cmp                   r9,     qword [@now - 0]
      jl   main.117.loop_body
     add                  rdi,                    1
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.117.loop_body:
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                  r11,                  rsi
     add                  r11,                  r10
     mov                  r12,                   r9
     sal                  r12,                    3
     mov                  r10,                  rsi
     add                  r10,                  r12
     mov                  r11,      qword [r11 - 0]
     cmp                  r11,      qword [r10 - 0]
      jg     main.118.if_true
     add                   r9,                    1
     cmp                   r9,     qword [@now - 0]
      jl   main.117.loop_body
     add                  rdi,                    1
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.118.if_true:
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                  r11,                  rsi
     add                  r11,                  r10
     mov                  r10,      qword [r11 - 0]
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  r11,                  rsi
     add                  r11,                  r12
     mov                  r12,                   r9
     sal                  r12,                    3
     mov                  r13,                  rsi
     add                  r13,                  r12
     mov                  r12,      qword [r13 - 0]
     mov      qword [r11 - 0],                  r12
     mov                  r12,                   r9
     sal                  r12,                    3
     mov                  r11,                  rsi
     add                  r11,                  r12
     mov      qword [r11 - 0],                  r10
     add                   r9,                    1
     cmp                   r9,     qword [@now - 0]
      jl   main.117.loop_body
     add                  rdi,                    1
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.121.loop_increment:
     add                   r9,                    1
     cmp                   r9,     qword [@now - 0]
      jl   main.117.loop_body
     add                  rdi,                    1
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.122.loop_condition:
     cmp                   r9,     qword [@now - 0]
      jl   main.117.loop_body
     add                  rdi,                    1
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.124.loop_increment:
     add                  rdi,                    1
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.125.loop_condition:
     mov                   r9,     qword [@now - 0]
     sub                   r9,                    1
     cmp                  rdi,                   r9
      jl   main.116.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.126.loop_exit:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.127.loop_body:
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,                  rsi
     add                   r9,                  r10
     mov                  r10,                  rdi
     add                  r10,                    1
     cmp       qword [r9 - 0],                  r10
     jne     main.128.if_true
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.128.if_true:
     mov                  rsi,                    0
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.131.loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.132.loop_condition:
     cmp                  rdi,     qword [@now - 0]
      jl   main.127.loop_body
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.133.loop_exit:
     mov                  rsi,                    1
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.134.exit:
     cmp                  rsi,                    1
     jne    main.12.loop_body
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.14.loop_exit:
     mov                  rdi,                   r8
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.15.loop_increment:
     add                  rbx,                    1
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.16.loop_condition:
     cmp                  rbx,                  100
      jl     main.1.loop_body
     mov                  rax,                    0
     jmp         main.18.exit
main.17.loop_exit:
     mov                  rax,                    0
main.18.exit:
     pop                  r13
     pop                  r12
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
initialize:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
initialize.0.enter:
     mov                  rbx,                  rdi
     mov    qword [@seed - 0],                  rbx
initialize.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
win:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
win.0.enter:
     mov                  rbx,                  101
     add                  rbx,                    1
     sal                  rbx,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov      qword [rbx - 0],                  101
     add                  rbx,                    8
     mov                  rsi,     qword [@now - 0]
     cmp                  rsi,       qword [@h - 0]
     jne        win.1.if_true
     mov                  rsi,                    0
     cmp                  rsi,     qword [@now - 0]
      jl      win.4.loop_body
     mov                  rdi,                    0
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.1.if_true:
     mov                  rax,                    0
     jmp          win.26.exit
win.3.if_exit:
     mov                  rsi,                    0
     cmp                  rsi,     qword [@now - 0]
      jl      win.4.loop_body
     mov                  rdi,                    0
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.4.loop_body:
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,                  rbx
     add                  rdi,                   r8
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                   r9,       qword [@a - 0]
     add                   r9,                   r8
     mov                   r8,       qword [r9 - 0]
     mov      qword [rdi - 0],                   r8
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl      win.4.loop_body
     mov                  rdi,                    0
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.5.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl      win.4.loop_body
     mov                  rdi,                    0
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.6.loop_condition:
     cmp                  rsi,     qword [@now - 0]
      jl      win.4.loop_body
     mov                  rdi,                    0
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.7.loop_exit:
     mov                  rdi,                    0
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.8.loop_body:
     mov                  rsi,                  rdi
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl      win.9.loop_body
     add                  rdi,                    1
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.9.loop_body:
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,                  rbx
     add                   r8,                   r9
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                   r9,                  rbx
     add                   r9,                  r10
     mov                   r8,       qword [r8 - 0]
     cmp                   r8,       qword [r9 - 0]
      jg       win.10.if_true
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl      win.9.loop_body
     add                  rdi,                    1
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.10.if_true:
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                   r9,                  rbx
     add                   r9,                   r8
     mov                   r8,       qword [r9 - 0]
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,                  rbx
     add                   r9,                  r10
     mov                  r11,                  rsi
     sal                  r11,                    3
     mov                  r10,                  rbx
     add                  r10,                  r11
     mov                  r10,      qword [r10 - 0]
     mov       qword [r9 - 0],                  r10
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                  r10,                  rbx
     add                  r10,                   r9
     mov      qword [r10 - 0],                   r8
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl      win.9.loop_body
     add                  rdi,                    1
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.13.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,     qword [@now - 0]
      jl      win.9.loop_body
     add                  rdi,                    1
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.14.loop_condition:
     cmp                  rsi,     qword [@now - 0]
      jl      win.9.loop_body
     add                  rdi,                    1
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.16.loop_increment:
     add                  rdi,                    1
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.17.loop_condition:
     mov                  rsi,     qword [@now - 0]
     sub                  rsi,                    1
     cmp                  rdi,                  rsi
      jl      win.8.loop_body
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.18.loop_exit:
     mov                  rdi,                    0
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.19.loop_body:
     mov                   r8,                  rdi
     sal                   r8,                    3
     mov                  rsi,                  rbx
     add                  rsi,                   r8
     mov                   r8,                  rdi
     add                   r8,                    1
     cmp      qword [rsi - 0],                   r8
     jne       win.20.if_true
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.20.if_true:
     mov                  rax,                    0
     jmp          win.26.exit
win.23.loop_increment:
     add                  rdi,                    1
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.24.loop_condition:
     cmp                  rdi,     qword [@now - 0]
      jl     win.19.loop_body
     mov                  rax,                    1
     jmp          win.26.exit
win.25.loop_exit:
     mov                  rax,                    1
win.26.exit:
     pop                  rbx
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
      dq                    1
__string_const0:
      db               " ", 0
      dq                    0
__string_const1:
      db                "", 0
      dq                   79
__string_const2:
      db "Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i", 0
      dq                   12
__string_const3:
      db    "Let's start!", 0
      dq                    7
__string_const4:
      db         "Total: ", 0
      dq                    8
__string_const5:
      db        " step(s)", 0
      dq                    1
__string_const6:
      db               " ", 0
      dq                    0
__string_const7:
      db                "", 0
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
@n:
    resq                    1
@h:
    resq                    1
@now:
    resq                    1
@a:
    resq                    1
@A:
    resq                    1
@M:
    resq                    1
@Q:
    resq                    1
@R:
    resq                    1
@seed:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
