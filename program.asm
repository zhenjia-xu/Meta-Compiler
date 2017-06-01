global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
init:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  r12
    push                  r13
    push                  rbx
init.0.enter:
     mov                  rsi,               140005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               140005
     add                  rsi,                    8
     mov                  rbx,                  rsi
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl     init.1.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.1.loop_body:
     mov                  rdi,                  r12
     sal                  rdi,                    3
     mov                  rsi,                  rbx
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                  r12
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl     init.1.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.2.loop_increment:
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl     init.1.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.3.loop_condition:
     cmp                  r12,       qword [@p - 0]
      jl     init.1.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.4.loop_exit:
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.5.loop_body:
     mov                   r8,                    1
     cmp                   r8,                   15
     jle     init.6.loop_body
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.6.loop_body:
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                   r9,                  rbx
     add                   r9,                  rsi
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                  rdi,                  rbx
     add                  rdi,                  rsi
     mov                  r13,      qword [rdi - 0]
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov       qword [r9 - 0],                  rsi
     add                   r8,                    1
     cmp                   r8,                   15
     jle     init.6.loop_body
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.25.enter:
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov       qword [r9 - 0],                  rsi
     add                   r8,                    1
     cmp                   r8,                   15
     jle     init.6.loop_body
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.26.exit:
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov       qword [r9 - 0],                  rsi
     add                   r8,                    1
     cmp                   r8,                   15
     jle     init.6.loop_body
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.7.loop_increment:
     add                   r8,                    1
     cmp                   r8,                   15
     jle     init.6.loop_body
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.8.loop_condition:
     cmp                   r8,                   15
     jle     init.6.loop_body
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.10.loop_increment:
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.11.loop_condition:
     cmp                  r12,       qword [@p - 0]
      jl     init.5.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.12.loop_exit:
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.13.loop_body:
     mov                  rdi,                  r12
     sal                  rdi,                    3
     mov                  rsi,                  rbx
     add                  rsi,                  rdi
     mov                  r13,      qword [rsi - 0]
     mov                   r8,                    1
     mov                  rax,                    1
     cmp                  rax,                    1
      je        init.27.enter
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                   r8
    push                   r8
    push                  rdi
    call                  gcd
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rsi,                  rdi
    imul                  rsi,                   r8
     mov       qword [@L - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.27.enter:
     mov                  rsi,                  r13
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  r13
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r13,                  rsi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                    1
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                  rdi,                  rbx
     add                  rdi,                  rsi
     cmp                  r13,      qword [rdi - 0]
      je    init.20.loop_exit
     add                   r8,                    1
     mov                  rax,                    1
     cmp                  rax,                    1
      je        init.27.enter
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                   r8
    push                   r8
    push                  rdi
    call                  gcd
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rsi,                  rdi
    imul                  rsi,                   r8
     mov       qword [@L - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.28.exit:
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r13,                  rsi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                    1
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                  rdi,                  rbx
     add                  rdi,                  rsi
     cmp                  r13,      qword [rdi - 0]
      je    init.20.loop_exit
     add                   r8,                    1
     mov                  rax,                    1
     cmp                  rax,                    1
      je        init.27.enter
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                   r8
    push                   r8
    push                  rdi
    call                  gcd
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rsi,                  rdi
    imul                  rsi,                   r8
     mov       qword [@L - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.18.loop_increment:
     add                   r8,                    1
     mov                  rax,                    1
     cmp                  rax,                    1
      je        init.27.enter
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                   r8
    push                   r8
    push                  rdi
    call                  gcd
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rsi,                  rdi
    imul                  rsi,                   r8
     mov       qword [@L - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.19.loop_condition:
     mov                  rax,                    1
     cmp                  rax,                    1
      je        init.27.enter
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                   r8
    push                   r8
    push                  rdi
    call                  gcd
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rsi,                  rdi
    imul                  rsi,                   r8
     mov       qword [@L - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.20.loop_exit:
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                   r8
    push                   r8
    push                  rdi
    call                  gcd
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rsi,                  rdi
    imul                  rsi,                   r8
     mov       qword [@L - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.29.enter:
     mov                  rsi,                   r8
    push                   r8
    push                  rdi
    call                  gcd
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rsi,                  rdi
    imul                  rsi,                   r8
     mov       qword [@L - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.30.exit:
     mov       qword [@L - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.21.loop_increment:
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.22.loop_condition:
     cmp                  r12,       qword [@p - 0]
      jl    init.13.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     jmp         init.24.exit
init.23.loop_exit:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
init.24.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret
square:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
square.0.enter:
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
    imul                  rsi,                  rdi
     mov                  rax,                  rsi
square.1.exit:
     add                  rsp,                    8
     pop                  rbp
     ret
Rand:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   32
Rand.0.enter:
     mov                  rdi,                    1
     cmp                  rdi,                    3
      jl     Rand.1.loop_body
     cmp      qword [@no - 0],                    0
      jl       Rand.5.if_true
     mov                  rax,      qword [@no - 0]
     jmp          Rand.8.exit
Rand.1.loop_body:
     mov                  rsi,      qword [@no - 0]
    imul                  rsi,      qword [@aa - 0]
     add                  rsi,      qword [@bb - 0]
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [@no - 0],                  rsi
     add                  rdi,                    1
     cmp                  rdi,                    3
      jl     Rand.1.loop_body
     cmp      qword [@no - 0],                    0
      jl       Rand.5.if_true
     mov                  rax,      qword [@no - 0]
     jmp          Rand.8.exit
Rand.2.loop_increment:
     add                  rdi,                    1
     cmp                  rdi,                    3
      jl     Rand.1.loop_body
     cmp      qword [@no - 0],                    0
      jl       Rand.5.if_true
     mov                  rax,      qword [@no - 0]
     jmp          Rand.8.exit
Rand.3.loop_condition:
     cmp                  rdi,                    3
      jl     Rand.1.loop_body
     cmp      qword [@no - 0],                    0
      jl       Rand.5.if_true
     mov                  rax,      qword [@no - 0]
     jmp          Rand.8.exit
Rand.4.loop_exit:
     cmp      qword [@no - 0],                    0
      jl       Rand.5.if_true
     mov                  rax,      qword [@no - 0]
     jmp          Rand.8.exit
Rand.5.if_true:
     mov                  rsi,      qword [@no - 0]
     neg                  rsi
     mov      qword [@no - 0],                  rsi
     mov                  rax,      qword [@no - 0]
     jmp          Rand.8.exit
Rand.7.if_exit:
     mov                  rax,      qword [@no - 0]
Rand.8.exit:
     add                  rsp,                   32
     pop                  rbp
     ret
build:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   64
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
build.0.enter:
     mov                  rbx,                  rdi
     mov                   r9,                  rsi
     mov                  r13,                  rdx
     cmp                   r9,                  r13
      je      build.1.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r12,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r13
     sar                  rsi,                    1
     mov                  r14,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                   r9
     mov                  rdx,                  r14
    push                   r8
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  r14
     add                  rsi,                    1
     mov                  rdi,                   r8
     mov                  rdx,                  r13
    push                   r8
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                  r13,     qword [@sum - 0]
     add                  r13,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [r13 - 0]
     add                  rsi,      qword [rdi - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                  r12
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  r13,    qword [@flag - 0]
     add                  r13,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r13 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     build.16.if_true
     jmp        build.24.exit
build.1.if_true:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rax,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rax
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     cmp                  rsi,       qword [@p - 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
     jne build.3.logical_false
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne build.6.logical_false
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      build.8.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.2.logical_true:
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne build.6.logical_false
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      build.8.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.3.logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
     jne build.6.logical_false
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      build.8.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.4.logical_exit:
     cmp                  rsi,                    1
     jne build.6.logical_false
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      build.8.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.5.logical_true:
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@a - 0]
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      build.8.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.6.logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je      build.8.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.7.logical_exit:
     cmp                  rsi,                    1
      je      build.8.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.8.if_true:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    1
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  rsi
     mov                  r12,                    0
     sal                  r12,                    3
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,                  r12
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r12,       qword [@a - 0]
     add                  r12,                  rdi
     mov                  rax,      qword [r12 - 0]
     mov      qword [rsi - 0],                  rax
     mov                  r13,                    1
     cmp                  r13,       qword [@L - 0]
      jl    build.9.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.9.loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,      qword [rdi - 0]
     add                  r12,                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sub                  rdi,                    1
     sal                  rdi,                    3
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [r12 - 0],                  rsi
     add                  r13,                    1
     cmp                  r13,       qword [@L - 0]
      jl    build.9.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.25.enter:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [r12 - 0],                  rsi
     add                  r13,                    1
     cmp                  r13,       qword [@L - 0]
      jl    build.9.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.26.exit:
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [r12 - 0],                  rsi
     add                  r13,                    1
     cmp                  r13,       qword [@L - 0]
      jl    build.9.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.10.loop_increment:
     add                  r13,                    1
     cmp                  r13,       qword [@L - 0]
      jl    build.9.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.11.loop_condition:
     cmp                  r13,       qword [@L - 0]
      jl    build.9.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.14.if_exit:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.15.if_false:
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r12,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r13
     sar                  rsi,                    1
     mov                  r14,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                   r9
     mov                  rdx,                  r14
    push                   r8
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  r14
     add                  rsi,                    1
     mov                  rdi,                   r8
     mov                  rdx,                  r13
    push                   r8
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                  r13,     qword [@sum - 0]
     add                  r13,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [r13 - 0]
     add                  rsi,      qword [rdi - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                  r12
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  r13,    qword [@flag - 0]
     add                  r13,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r13 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     build.16.if_true
     jmp        build.24.exit
build.16.if_true:
     mov                  r13,                    0
     cmp                  r13,       qword [@L - 0]
      jl   build.17.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.17.loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r14,      qword [rsi - 0]
     add                  r14,                  rdi
     mov                  rdi,                  r12
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                   r9,                  r13
     sal                   r9,                    3
     mov                  rdi,      qword [rsi - 0]
     add                  rdi,                   r9
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,       qword [@s - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,       qword [r9 - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [r14 - 0],                  rsi
     add                  r13,                    1
     cmp                  r13,       qword [@L - 0]
      jl   build.17.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.18.loop_increment:
     add                  r13,                    1
     cmp                  r13,       qword [@L - 0]
      jl   build.17.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.19.loop_condition:
     cmp                  r13,       qword [@L - 0]
      jl   build.17.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp        build.24.exit
build.20.loop_exit:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
build.24.exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   64
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  120
@GlobalDeclaration.0.enter:
     mov                  rsi,               500005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               500005
     add                  rsi,                    8
     mov       qword [@b - 0],                  rsi
     mov                  rsi,               500005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               500005
     add                  rsi,                    8
     mov     qword [@now - 0],                  rsi
     mov                  rsi,               500005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               500005
     add                  rsi,                    8
     mov       qword [@t - 0],                  rsi
     mov                  rsi,               200005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               200005
     add                  rsi,                    8
     mov       qword [@a - 0],                  rsi
     mov       qword [@L - 0],                    1
     mov                  rsi,               500005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               500005
     add                  rsi,                    8
     mov    qword [@flag - 0],                  rsi
     mov                  rdi,               500005
     add                  rdi,                    1
     sal                  rdi,                    3
    push                  rdi
    push                   r9
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                   r9
     pop                  rdi
     mov                   r9,                  rax
     mov       qword [r9 - 0],               500005
     add                   r9,                    8
     mov                   r8,                   r9
     mov                  rsi,                   r9
     sub                  rdi,                    8
     add                  rsi,                  rdi
     cmp                   r8,                  rsi
      jl @GlobalDeclaration.1.allocate_body
     mov       qword [@s - 0],                   r9
     mov                  rsi,               500005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               500005
     add                  rsi,                    8
     mov     qword [@sum - 0],                  rsi
     mov     qword [@ans - 0],                    0
     mov      qword [@aa - 0],                13131
     mov      qword [@bb - 0],                 5353
     mov     qword [@MOD - 0],                32761
     mov      qword [@no - 0],                    1
     mov      qword [@pl - 0],                    0
     mov      qword [@pr - 0],                    0
     jmp @GlobalDeclaration.4.exit
@GlobalDeclaration.1.allocate_body:
     mov                  rdi,                   80
     add                  rdi,                    1
     sal                  rdi,                    3
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
     mov                  rdi,                  rax
     mov      qword [rdi - 0],                   80
     add                  rdi,                    8
     mov       qword [r8 - 0],                  rdi
     add                   r8,                    8
     cmp                   r8,                  rsi
      jl @GlobalDeclaration.1.allocate_body
     mov       qword [@s - 0],                   r9
     mov                  rsi,               500005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               500005
     add                  rsi,                    8
     mov     qword [@sum - 0],                  rsi
     mov     qword [@ans - 0],                    0
     mov      qword [@aa - 0],                13131
     mov      qword [@bb - 0],                 5353
     mov     qword [@MOD - 0],                32761
     mov      qword [@no - 0],                    1
     mov      qword [@pl - 0],                    0
     mov      qword [@pr - 0],                    0
     jmp @GlobalDeclaration.4.exit
@GlobalDeclaration.2.allocate_condition:
     cmp                   r8,                  rsi
      jl @GlobalDeclaration.1.allocate_body
     mov       qword [@s - 0],                   r9
     mov                  rsi,               500005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               500005
     add                  rsi,                    8
     mov     qword [@sum - 0],                  rsi
     mov     qword [@ans - 0],                    0
     mov      qword [@aa - 0],                13131
     mov      qword [@bb - 0],                 5353
     mov     qword [@MOD - 0],                32761
     mov      qword [@no - 0],                    1
     mov      qword [@pl - 0],                    0
     mov      qword [@pr - 0],                    0
     jmp @GlobalDeclaration.4.exit
@GlobalDeclaration.3.allocate_exit:
     mov       qword [@s - 0],                   r9
     mov                  rsi,               500005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               500005
     add                  rsi,                    8
     mov     qword [@sum - 0],                  rsi
     mov     qword [@ans - 0],                    0
     mov      qword [@aa - 0],                13131
     mov      qword [@bb - 0],                 5353
     mov     qword [@MOD - 0],                32761
     mov      qword [@no - 0],                    1
     mov      qword [@pl - 0],                    0
     mov      qword [@pr - 0],                    0
@GlobalDeclaration.4.exit:
     add                  rsp,                  120
     pop                  rbp
     ret
lcm:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
lcm.0.enter:
     mov                  rbx,                  rdi
     mov                  r12,                  rsi
     mov                  rsi,                  rbx
     mov                  rdi,                  r12
     cmp                  rdi,                    0
      je        lcm.3.if_true
     cmp                  rsi,                  rdi
      jl        lcm.6.if_true
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    call                  gcd
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
    imul                  rsi,                  r12
     mov                  rax,                  rsi
     jmp           lcm.1.exit
lcm.2.enter:
     cmp                  rdi,                    0
      je        lcm.3.if_true
     cmp                  rsi,                  rdi
      jl        lcm.6.if_true
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    call                  gcd
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
    imul                  rsi,                  r12
     mov                  rax,                  rsi
     jmp           lcm.1.exit
lcm.3.if_true:
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
    imul                  rsi,                  r12
     mov                  rax,                  rsi
     jmp           lcm.1.exit
lcm.5.if_exit:
     cmp                  rsi,                  rdi
      jl        lcm.6.if_true
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    call                  gcd
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
    imul                  rsi,                  r12
     mov                  rax,                  rsi
     jmp           lcm.1.exit
lcm.6.if_true:
    call                  gcd
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
    imul                  rsi,                  r12
     mov                  rax,                  rsi
     jmp           lcm.1.exit
lcm.7.if_false:
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    call                  gcd
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
    imul                  rsi,                  r12
     mov                  rax,                  rsi
     jmp           lcm.1.exit
lcm.9.exit:
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
    imul                  rsi,                  r12
     mov                  rax,                  rsi
lcm.1.exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
query:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   88
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
query.0.enter:
     mov      qword [rbp - 8],                  rsi
     mov                   r8,                  rdx
     mov                  rax,      qword [@pl - 0]
     cmp                  rax,      qword [rbp - 8]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
     jne query.2.logical_false
     cmp      qword [@pr - 0],                   r8
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je      query.4.if_true
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     mov                  r10,                  rsi
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rsi,      qword [rbp - 8]
     add                  rsi,                   r8
     sar                  rsi,                    1
     mov                  r13,                  rsi
     mov                  r12,                    0
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                   r9,       qword [@t - 0]
     add                   r9,                  rsi
     cmp       qword [r9 - 0],                    0
      jg      query.7.if_true
     cmp      qword [@pl - 0],                  r13
     jle     query.10.if_true
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.1.logical_true:
     cmp      qword [@pr - 0],                   r8
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je      query.4.if_true
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     mov                  r10,                  rsi
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rsi,      qword [rbp - 8]
     add                  rsi,                   r8
     sar                  rsi,                    1
     mov                  r13,                  rsi
     mov                  r12,                    0
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                   r9,       qword [@t - 0]
     add                   r9,                  rsi
     cmp       qword [r9 - 0],                    0
      jg      query.7.if_true
     cmp      qword [@pl - 0],                  r13
     jle     query.10.if_true
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.2.logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je      query.4.if_true
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     mov                  r10,                  rsi
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rsi,      qword [rbp - 8]
     add                  rsi,                   r8
     sar                  rsi,                    1
     mov                  r13,                  rsi
     mov                  r12,                    0
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                   r9,       qword [@t - 0]
     add                   r9,                  rsi
     cmp       qword [r9 - 0],                    0
      jg      query.7.if_true
     cmp      qword [@pl - 0],                  r13
     jle     query.10.if_true
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.3.logical_exit:
     cmp                  rsi,                    1
      je      query.4.if_true
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     mov                  r10,                  rsi
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rsi,      qword [rbp - 8]
     add                  rsi,                   r8
     sar                  rsi,                    1
     mov                  r13,                  rsi
     mov                  r12,                    0
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                   r9,       qword [@t - 0]
     add                   r9,                  rsi
     cmp       qword [r9 - 0],                    0
      jg      query.7.if_true
     cmp      qword [@pl - 0],                  r13
     jle     query.10.if_true
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.4.if_true:
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rbx,     qword [@sum - 0]
     add                  rbx,                  rsi
     mov                  rax,      qword [rbx - 0]
     jmp        query.16.exit
query.6.if_exit:
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     mov                  r10,                  rsi
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rsi,      qword [rbp - 8]
     add                  rsi,                   r8
     sar                  rsi,                    1
     mov                  r13,                  rsi
     mov                  r12,                    0
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                   r9,       qword [@t - 0]
     add                   r9,                  rsi
     cmp       qword [r9 - 0],                    0
      jg      query.7.if_true
     cmp      qword [@pl - 0],                  r13
     jle     query.10.if_true
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.7.if_true:
     mov                   r9,                  rdi
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     query.18.if_true
     cmp      qword [@pl - 0],                  r13
     jle     query.10.if_true
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.17.enter:
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     query.18.if_true
     cmp      qword [@pl - 0],                  r13
     jle     query.10.if_true
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.18.if_true:
     mov                  rsi,                   r9
    imul                  rsi,                    2
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r15,                  rdi
     sal                  r15,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  r15
     mov                  r15,                  rdi
     sal                  r15,                    3
     mov                  rax,     qword [@now - 0]
     mov     qword [rbp - 56],                  rax
     add     qword [rbp - 56],                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,       qword [@t - 0]
     add                  r15,                  r11
     mov                  rcx,     qword [rbp - 56]
     mov                  r11,      qword [rcx - 0]
     add                  r11,      qword [r15 - 0]
     mov                  r15,                  r11
     mov                  rax,                  r15
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  r15,                  rdx
     mov      qword [rsi - 0],                  r15
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rax,     qword [@sum - 0]
     mov     qword [rbp - 72],                  rax
     add     qword [rbp - 72],                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  r11,       qword [@s - 0]
     add                  r11,                  rsi
     mov                  r15,                  rdi
     sal                  r15,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  r15
     mov                  rsi,      qword [rsi - 0]
     sal                  rsi,                    3
     mov                  r15,      qword [r11 - 0]
     add                  r15,                  rsi
     mov                  rcx,     qword [rbp - 72]
     mov                  rax,      qword [r15 - 0]
     mov      qword [rcx - 0],                  rax
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  r15,       qword [@t - 0]
     add                  r15,                  rsi
     mov                  rsi,                  rdi
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  r11,       qword [@t - 0]
     add                  r11,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r11 - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [r15 - 0],                  rsi
     mov                  rsi,                  r14
     sal                  rsi,                    3
     mov                  rdi,     qword [@now - 0]
     add                  rdi,                  rsi
     mov                  r15,                  r14
     sal                  r15,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  r15
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r15,       qword [@t - 0]
     add                  r15,                  r11
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,      qword [r15 - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     mov                  rdi,                  r14
     sal                  rdi,                    3
     mov                  rsi,     qword [@sum - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r14
     sal                  rdi,                    3
     mov                  r11,       qword [@s - 0]
     add                  r11,                  rdi
     mov                  rdi,                  r14
     sal                  rdi,                    3
     mov                  r15,     qword [@now - 0]
     add                  r15,                  rdi
     mov                  rdi,      qword [r15 - 0]
     sal                  rdi,                    3
     mov                  r15,      qword [r11 - 0]
     add                  r15,                  rdi
     mov                  rax,      qword [r15 - 0]
     mov      qword [rsi - 0],                  rax
     mov                  rdi,                  r14
     sal                  rdi,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r14
     sal                  rdi,                    3
     mov                  r15,       qword [@t - 0]
     add                  r15,                  rdi
     mov                  r14,                   r9
     sal                  r14,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  r14
     mov                  r14,      qword [r15 - 0]
     add                  r14,      qword [rdi - 0]
     mov                  rdi,                  r14
     mov                  rax,                  rdi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov      qword [rsi - 0],                  rdi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    0
     cmp      qword [@pl - 0],                  r13
     jle     query.10.if_true
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.9.if_exit:
     cmp      qword [@pl - 0],                  r13
     jle     query.10.if_true
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.10.if_true:
     mov                  rdi,                  r10
     mov                  rsi,      qword [rbp - 8]
     mov                  rdx,                  r13
    push                   r8
     sub                  rsp,                    8
    call                query
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  r12
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r12,                  rsi
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.12.if_exit:
     mov                  rsi,                  r13
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     query.13.if_true
     mov                  rax,                  r12
     jmp        query.16.exit
query.13.if_true:
     mov                  rsi,                  r13
     add                  rsi,                    1
     mov                  rdi,                  rbx
     mov                  rdx,                   r8
    call                query
     mov                  rbx,                  rax
     mov                  rsi,                  r12
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r12,                  rsi
     mov                  rax,                  r12
     jmp        query.16.exit
query.15.if_exit:
     mov                  rax,                  r12
query.16.exit:
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                   88
     pop                  rbp
     ret
RandRange:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   32
RandRange.0.enter:
     mov                   r8,                  rdi
     mov                   r9,                  rsi
     mov                  rsi,                    1
     cmp                  rsi,                    3
      jl RandRange.3.loop_body
     cmp      qword [@no - 0],                    0
      jl  RandRange.7.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rdi,                   r9
     sub                  rdi,                   r8
     mov                   r9,                  rdi
     add                   r9,                    1
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                   r9
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
     jmp     RandRange.1.exit
RandRange.2.enter:
     mov                  rsi,                    1
     cmp                  rsi,                    3
      jl RandRange.3.loop_body
     cmp      qword [@no - 0],                    0
      jl  RandRange.7.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rdi,                   r9
     sub                  rdi,                   r8
     mov                   r9,                  rdi
     add                   r9,                    1
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                   r9
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
     jmp     RandRange.1.exit
RandRange.3.loop_body:
     mov                  rdi,      qword [@no - 0]
    imul                  rdi,      qword [@aa - 0]
     add                  rdi,      qword [@bb - 0]
     mov                  rax,                  rdi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov      qword [@no - 0],                  rdi
     add                  rsi,                    1
     cmp                  rsi,                    3
      jl RandRange.3.loop_body
     cmp      qword [@no - 0],                    0
      jl  RandRange.7.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rdi,                   r9
     sub                  rdi,                   r8
     mov                   r9,                  rdi
     add                   r9,                    1
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                   r9
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
     jmp     RandRange.1.exit
RandRange.4.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,                    3
      jl RandRange.3.loop_body
     cmp      qword [@no - 0],                    0
      jl  RandRange.7.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rdi,                   r9
     sub                  rdi,                   r8
     mov                   r9,                  rdi
     add                   r9,                    1
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                   r9
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
     jmp     RandRange.1.exit
RandRange.5.loop_condition:
     cmp                  rsi,                    3
      jl RandRange.3.loop_body
     cmp      qword [@no - 0],                    0
      jl  RandRange.7.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rdi,                   r9
     sub                  rdi,                   r8
     mov                   r9,                  rdi
     add                   r9,                    1
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                   r9
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
     jmp     RandRange.1.exit
RandRange.6.loop_exit:
     cmp      qword [@no - 0],                    0
      jl  RandRange.7.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rdi,                   r9
     sub                  rdi,                   r8
     mov                   r9,                  rdi
     add                   r9,                    1
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                   r9
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
     jmp     RandRange.1.exit
RandRange.7.if_true:
     mov                  rsi,      qword [@no - 0]
     neg                  rsi
     mov      qword [@no - 0],                  rsi
     mov                  rsi,      qword [@no - 0]
     mov                  rdi,                   r9
     sub                  rdi,                   r8
     mov                   r9,                  rdi
     add                   r9,                    1
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                   r9
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
     jmp     RandRange.1.exit
RandRange.9.if_exit:
     mov                  rsi,      qword [@no - 0]
     mov                  rdi,                   r9
     sub                  rdi,                   r8
     mov                   r9,                  rdi
     add                   r9,                    1
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                   r9
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
     jmp     RandRange.1.exit
RandRange.10.exit:
     mov                  rdi,                   r9
     sub                  rdi,                   r8
     mov                   r9,                  rdi
     add                   r9,                    1
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                   r9
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
RandRange.1.exit:
     add                  rsp,                   32
     pop                  rbp
     ret
gcd:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
gcd.0.enter:
     mov                  rbx,                  rdi
     mov                  rdi,                  rsi
     cmp                  rdi,                    0
      je        gcd.1.if_true
     cmp                  rbx,                  rdi
      jl        gcd.4.if_true
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     sub                  rsp,                    8
    call                  gcd
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp           gcd.7.exit
gcd.1.if_true:
     mov                  rax,                  rbx
     jmp           gcd.7.exit
gcd.3.if_exit:
     cmp                  rbx,                  rdi
      jl        gcd.4.if_true
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     sub                  rsp,                    8
    call                  gcd
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp           gcd.7.exit
gcd.4.if_true:
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call                  gcd
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     jmp           gcd.7.exit
gcd.5.if_false:
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     sub                  rsp,                    8
    call                  gcd
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
gcd.7.exit:
     pop                  rbx
     pop                  rbp
     ret
update:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   80
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
update.0.enter:
     mov                  rbx,                  rdi
     mov                   r9,                  rsi
     mov                  r12,                  rdx
     cmp      qword [@pl - 0],                   r9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
     jne update.2.logical_false
     cmp      qword [@pr - 0],                  r12
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne update.5.logical_false
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je     update.7.if_true
     cmp                   r9,                  r12
      je    update.10.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg      update.41.enter
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.1.logical_true:
     cmp      qword [@pr - 0],                  r12
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne update.5.logical_false
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je     update.7.if_true
     cmp                   r9,                  r12
      je    update.10.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg      update.41.enter
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.2.logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
     jne update.5.logical_false
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je     update.7.if_true
     cmp                   r9,                  r12
      je    update.10.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg      update.41.enter
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.3.logical_exit:
     cmp                  rsi,                    1
     jne update.5.logical_false
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je     update.7.if_true
     cmp                   r9,                  r12
      je    update.10.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg      update.41.enter
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.4.logical_true:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je     update.7.if_true
     cmp                   r9,                  r12
      je    update.10.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg      update.41.enter
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.5.logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je     update.7.if_true
     cmp                   r9,                  r12
      je    update.10.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg      update.41.enter
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.6.logical_exit:
     cmp                  rsi,                    1
      je     update.7.if_true
     cmp                   r9,                  r12
      je    update.10.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg      update.41.enter
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.7.if_true:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,     qword [@now - 0]
     add                  r12,                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rdi
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                    1
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [r12 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r8,     qword [@sum - 0]
     add                   r8,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,     qword [@now - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [r12 - 0]
     sal                  rsi,                    3
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rax,      qword [rdi - 0]
     mov       qword [r8 - 0],                  rax
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,       qword [@t - 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx - 0]
     add                  rsi,                    1
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     jmp       update.36.exit
update.9.if_exit:
     cmp                   r9,                  r12
      je    update.10.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg      update.41.enter
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.10.if_true:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [r12 - 0]
     mov                  r12,                  rsi
     mov                  rax,                  r12
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  r12,                  rsi
     mov                  rsi,                  r12
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.11.if_true
     jmp       update.36.exit
update.37.enter:
     mov                  r12,                  rsi
     mov                  rax,                  r12
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  r12,                  rsi
     mov                  rsi,                  r12
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.11.if_true
     jmp       update.36.exit
update.38.exit:
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.11.if_true
     jmp       update.36.exit
update.11.if_true:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                    1
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  r12,                    0
     sal                  r12,                    3
     mov                  rdi,      qword [rsi - 0]
     add                  rdi,                  r12
     mov                  r12,                  rbx
     sal                  r12,                    3
     mov                  rsi,     qword [@sum - 0]
     add                  rsi,                  r12
     mov                  rax,      qword [rsi - 0]
     mov      qword [rdi - 0],                  rax
     mov                  r12,                    1
     cmp                  r12,       qword [@L - 0]
      jl  update.12.loop_body
     jmp       update.36.exit
update.12.loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r12
     sal                  rdi,                    3
     mov                   r8,      qword [rsi - 0]
     add                   r8,                  rdi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r12
     sub                  rsi,                    1
     sal                  rsi,                    3
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov       qword [r8 - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@L - 0]
      jl  update.12.loop_body
     jmp       update.36.exit
update.39.enter:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
    imul                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov       qword [r8 - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@L - 0]
      jl  update.12.loop_body
     jmp       update.36.exit
update.40.exit:
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov       qword [r8 - 0],                  rsi
     add                  r12,                    1
     cmp                  r12,       qword [@L - 0]
      jl  update.12.loop_body
     jmp       update.36.exit
update.13.loop_increment:
     add                  r12,                    1
     cmp                  r12,       qword [@L - 0]
      jl  update.12.loop_body
     jmp       update.36.exit
update.14.loop_condition:
     cmp                  r12,       qword [@L - 0]
      jl  update.12.loop_body
     jmp       update.36.exit
update.19.if_exit:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg      update.41.enter
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.41.enter:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.42.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.42.if_true:
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                   r8,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                  r13,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r14,     qword [@now - 0]
     add                  r14,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@now - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r10,       qword [@t - 0]
     add                  r10,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r10 - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [r14 - 0],                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r14,     qword [@sum - 0]
     add                  r14,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r10,       qword [@s - 0]
     add                  r10,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi - 0]
     sal                  rdi,                    3
     mov                  rsi,      qword [r10 - 0]
     add                  rsi,                  rdi
     mov                  rax,      qword [rsi - 0]
     mov      qword [r14 - 0],                  rax
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r8,       qword [@t - 0]
     add                   r8,                  rsi
     mov                  r14,                  rbx
     sal                  r14,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  r14
     mov                   r8,       qword [r8 - 0]
     add                   r8,      qword [rsi - 0]
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,     qword [@now - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r14,     qword [@now - 0]
     add                  r14,                  rsi
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                   r8
     mov                   r8,      qword [r14 - 0]
     add                   r8,      qword [rsi - 0]
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r14,     qword [@sum - 0]
     add                  r14,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r8,       qword [@s - 0]
     add                   r8,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,     qword [@now - 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     sal                  rsi,                    3
     mov                  rdi,       qword [r8 - 0]
     add                  rdi,                  rsi
     mov                  rax,      qword [rdi - 0]
     mov      qword [r14 - 0],                  rax
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r8,       qword [@t - 0]
     add                   r8,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     mov                  r13,                  rbx
     sal                  r13,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  r13
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,      qword [rsi - 0]
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov       qword [r8 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    0
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.22.if_exit:
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle    update.23.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.23.if_true:
     mov                  rdi,                  r13
     mov                  rsi,                   r9
     mov                  rdx,                  r14
    push                   r8
     sub                  rsp,                    8
    call               update
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.25.if_exit:
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge    update.26.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.26.if_true:
     mov                  rsi,                  r14
     add                  rsi,                    1
     mov                  rdi,                   r8
     mov                  rdx,                  r12
    push                   r8
     sub                  rsp,                    8
    call               update
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.28.if_exit:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,       qword [r9 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [r12 - 0]
     and                  rdi,      qword [rsi - 0]
     mov       qword [r9 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg    update.29.if_true
     jmp       update.36.exit
update.29.if_true:
     mov                   r9,                    0
     cmp                   r9,       qword [@L - 0]
      jl  update.30.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp       update.36.exit
update.30.loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  r12,                  r13
     sal                  r12,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  r12
     mov                  r14,                  r13
     sal                  r14,                    3
     mov                  r12,     qword [@now - 0]
     add                  r12,                  r14
     mov                  r14,                   r9
     add                  r14,      qword [r12 - 0]
     mov                  r12,                  r14
     mov                  rax,                  r12
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r14,                  r12
     sal                  r14,                    3
     mov                  r12,      qword [rsi - 0]
     add                  r12,                  r14
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r14,       qword [@s - 0]
     add                  r14,                  rsi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  r10
     mov                  r10,                   r9
     add                  r10,      qword [rsi - 0]
     mov                  rsi,                  r10
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     sal                  rsi,                    3
     mov                  r14,      qword [r14 - 0]
     add                  r14,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,      qword [r14 - 0]
     mov      qword [rdi - 0],                  rsi
     add                   r9,                    1
     cmp                   r9,       qword [@L - 0]
      jl  update.30.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp       update.36.exit
update.31.loop_increment:
     add                   r9,                    1
     cmp                   r9,       qword [@L - 0]
      jl  update.30.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp       update.36.exit
update.32.loop_condition:
     cmp                   r9,       qword [@L - 0]
      jl  update.30.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     jmp       update.36.exit
update.33.loop_exit:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
update.36.exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   80
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                  152
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
main.0.enter:
     mov       qword [@n - 0],                40000
     mov       qword [@m - 0],                40000
     mov       qword [@p - 0],                 9977
     mov                  rsi,                    1
     cmp                  rsi,       qword [@n - 0]
     jle     main.1.loop_body
     mov                  rsi,               140005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               140005
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.21.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.1.loop_body:
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rbx
     mov                  rdi,                    0
     mov                  rbx,       qword [@p - 0]
    push                  rdi
    push                   r8
    push                  rsi
    call                 Rand
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  r12,                  rax
     sub                  rbx,                  rdi
     add                  rbx,                    1
     mov                  rax,                  r12
     mov                  rcx,                  rbx
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rbx,                  rdi
     add                  rbx,                  r12
     add                  rbx,                    1
     mov       qword [r8 - 0],                  rbx
     add                  rsi,                    1
     cmp                  rsi,       qword [@n - 0]
     jle     main.1.loop_body
     mov                  rsi,               140005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               140005
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.21.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.18.enter:
    push                  rdi
    push                   r8
    push                  rsi
    call                 Rand
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  r12,                  rax
     sub                  rbx,                  rdi
     add                  rbx,                    1
     mov                  rax,                  r12
     mov                  rcx,                  rbx
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rbx,                  rdi
     add                  rbx,                  r12
     add                  rbx,                    1
     mov       qword [r8 - 0],                  rbx
     add                  rsi,                    1
     cmp                  rsi,       qword [@n - 0]
     jle     main.1.loop_body
     mov                  rsi,               140005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               140005
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.21.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.19.exit:
     mov       qword [r8 - 0],                  rbx
     add                  rsi,                    1
     cmp                  rsi,       qword [@n - 0]
     jle     main.1.loop_body
     mov                  rsi,               140005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               140005
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.21.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.2.loop_increment:
     add                  rsi,                    1
     cmp                  rsi,       qword [@n - 0]
     jle     main.1.loop_body
     mov                  rsi,               140005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               140005
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.21.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.3.loop_condition:
     cmp                  rsi,       qword [@n - 0]
     jle     main.1.loop_body
     mov                  rsi,               140005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               140005
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.21.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.20.enter:
     mov                  rsi,               140005
     add                  rsi,                    1
     sal                  rsi,                    3
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],               140005
     add                  rsi,                    8
     mov                   r8,                  rsi
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.21.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.21.loop_body:
     mov                  rsi,                  r12
     sal                  rsi,                    3
     mov                  rbx,                   r8
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                  r12
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.21.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.22.loop_increment:
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.21.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.23.loop_condition:
     cmp                  r12,       qword [@p - 0]
      jl    main.21.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.24.loop_exit:
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.25.loop_body:
     mov                  r13,                    1
     cmp                  r13,                   15
     jle    main.26.loop_body
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.26.loop_body:
     mov                  rbx,                  r12
     sal                  rbx,                    3
     mov                  rsi,                   r8
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     sal                  rbx,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rbx
     mov                  rdi,      qword [rdi - 0]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call               square
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rax,                  rbx
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov      qword [rsi - 0],                  rbx
     add                  r13,                    1
     cmp                  r13,                   15
     jle    main.26.loop_body
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.27.loop_increment:
     add                  r13,                    1
     cmp                  r13,                   15
     jle    main.26.loop_body
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.28.loop_condition:
     cmp                  r13,                   15
     jle    main.26.loop_body
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.30.loop_increment:
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.31.loop_condition:
     cmp                  r12,       qword [@p - 0]
      jl    main.25.loop_body
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.32.loop_exit:
     mov                  r12,                    2
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.33.loop_body:
     mov                  rbx,                  r12
     sal                  rbx,                    3
     mov                  rsi,                   r8
     add                  rsi,                  rbx
     mov                  rsi,      qword [rsi - 0]
     mov                  r13,                    1
     mov                  rax,                    1
     cmp                  rax,                    1
      je    main.34.loop_body
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                  r13
    push                   r8
    call                  lcm
     pop                   r8
     mov       qword [@L - 0],                  rax
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.34.loop_body:
     mov                  rdi,                  rsi
    push                   r8
    call               square
     pop                   r8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     sal                  rbx,                    3
     mov                  rdi,       qword [@b - 0]
     add                  rdi,                  rbx
     mov      qword [rdi - 0],                    1
     mov                  rdi,                  r12
     sal                  rdi,                    3
     mov                  rbx,                   r8
     add                  rbx,                  rdi
     cmp                  rsi,      qword [rbx - 0]
      je    main.40.loop_exit
     add                  r13,                    1
     mov                  rax,                    1
     cmp                  rax,                    1
      je    main.34.loop_body
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                  r13
    push                   r8
    call                  lcm
     pop                   r8
     mov       qword [@L - 0],                  rax
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.38.loop_increment:
     add                  r13,                    1
     mov                  rax,                    1
     cmp                  rax,                    1
      je    main.34.loop_body
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                  r13
    push                   r8
    call                  lcm
     pop                   r8
     mov       qword [@L - 0],                  rax
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.39.loop_condition:
     mov                  rax,                    1
     cmp                  rax,                    1
      je    main.34.loop_body
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                  r13
    push                   r8
    call                  lcm
     pop                   r8
     mov       qword [@L - 0],                  rax
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.40.loop_exit:
     mov                  rdi,       qword [@L - 0]
     mov                  rsi,                  r13
    push                   r8
    call                  lcm
     pop                   r8
     mov       qword [@L - 0],                  rax
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.41.loop_increment:
     add                  r12,                    1
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.42.loop_condition:
     cmp                  r12,       qword [@p - 0]
      jl    main.33.loop_body
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.43.loop_exit:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    1
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.44.exit:
     mov                  rbx,                    1
     mov                  rsi,                    1
     mov                  r12,       qword [@n - 0]
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.45.enter:
     cmp                  rsi,                  r12
      je      main.46.if_true
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.46.if_true:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rdi
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                   r8
     mov                  rax,      qword [rdi - 0]
     mov      qword [r12 - 0],                  rax
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r12
     mov                  rdi,      qword [rdi - 0]
     cmp                  rdi,       qword [@p - 0]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
     jne main.48.logical_false
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r12,       qword [@a - 0]
     add                  r12,                  rdi
     cmp      qword [r12 - 0],                    0
     mov                  rdi,                    0
   setge                  dil
     cmp                  rdi,                    1
     jne main.51.logical_false
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r12
     mov                  rdi,      qword [rdi - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rdi,       qword [@b - 0]
     add                  rdi,                  r12
     cmp      qword [rdi - 0],                    0
     mov                  rdi,                    0
    setg                  dil
     cmp                  rdi,                    1
      je      main.53.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.47.logical_true:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r12,       qword [@a - 0]
     add                  r12,                  rdi
     cmp      qword [r12 - 0],                    0
     mov                  rdi,                    0
   setge                  dil
     cmp                  rdi,                    1
     jne main.51.logical_false
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r12
     mov                  rdi,      qword [rdi - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rdi,       qword [@b - 0]
     add                  rdi,                  r12
     cmp      qword [rdi - 0],                    0
     mov                  rdi,                    0
    setg                  dil
     cmp                  rdi,                    1
      je      main.53.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.48.logical_false:
     mov                  rdi,                    0
     cmp                  rdi,                    1
     jne main.51.logical_false
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r12
     mov                  rdi,      qword [rdi - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rdi,       qword [@b - 0]
     add                  rdi,                  r12
     cmp      qword [rdi - 0],                    0
     mov                  rdi,                    0
    setg                  dil
     cmp                  rdi,                    1
      je      main.53.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.49.logical_exit:
     cmp                  rdi,                    1
     jne main.51.logical_false
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r12
     mov                  rdi,      qword [rdi - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rdi,       qword [@b - 0]
     add                  rdi,                  r12
     cmp      qword [rdi - 0],                    0
     mov                  rdi,                    0
    setg                  dil
     cmp                  rdi,                    1
      je      main.53.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.50.logical_true:
     mov                  r12,                  rsi
     sal                  r12,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  r12
     mov                  rdi,      qword [rdi - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  rdi,       qword [@b - 0]
     add                  rdi,                  r12
     cmp      qword [rdi - 0],                    0
     mov                  rdi,                    0
    setg                  dil
     cmp                  rdi,                    1
      je      main.53.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.51.logical_false:
     mov                  rdi,                    0
     cmp                  rdi,                    1
      je      main.53.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.52.logical_exit:
     cmp                  rdi,                    1
      je      main.53.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.53.if_true:
     mov                  r12,                  rbx
     sal                  r12,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  r12
     mov      qword [rdi - 0],                    1
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  r12,       qword [@s - 0]
     add                  r12,                  rdi
     mov                  rdi,                    0
     sal                  rdi,                    3
     mov                  r12,      qword [r12 - 0]
     add                  r12,                  rdi
     sal                  rsi,                    3
     mov                  rdi,       qword [@a - 0]
     add                  rdi,                  rsi
     mov                  rax,      qword [rdi - 0]
     mov      qword [r12 - 0],                  rax
     mov                   r9,                    1
     cmp                   r9,       qword [@L - 0]
      jl    main.54.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.54.loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  r12,      qword [rdi - 0]
     add                  r12,                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  rdi,                   r9
     sub                  rdi,                    1
     sal                  rdi,                    3
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi - 0]
    push                   r9
    call               square
     pop                   r9
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [r12 - 0],                  rsi
     add                   r9,                    1
     cmp                   r9,       qword [@L - 0]
      jl    main.54.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.55.loop_increment:
     add                   r9,                    1
     cmp                   r9,       qword [@L - 0]
      jl    main.54.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.56.loop_condition:
     cmp                   r9,       qword [@L - 0]
      jl    main.54.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.59.if_exit:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.60.if_false:
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r13,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     sar                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
    push                   r8
    call                build
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r9,    qword [@flag - 0]
     add                   r9,                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r13
     sal                  rdi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rdi
     mov                  rsi,      qword [rsi - 0]
     and                  rsi,      qword [r12 - 0]
     mov       qword [r9 - 0],                  rsi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.61.if_true
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.61.if_true:
     mov                   r9,                    0
     cmp                   r9,       qword [@L - 0]
      jl    main.62.loop_body
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rbx
     mov      qword [rsi - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.62.loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r12,      qword [rsi - 0]
     add                  r12,                  rdi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  rdi,                   r9
     sal                  rdi,                    3
     mov                  r14,      qword [rsi - 0]
     add                  r14,                  rdi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [r14 - 0]
     add                  rsi,      qword [rdi - 0]
     mov      qword [r12 - 0],                  rsi
     add                   r9,                    1
     cmp                   r9,       qword [@L - 0]
      jl    main.62.loop_body
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rbx
     mov      qword [rsi - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.63.loop_increment:
     add                   r9,                    1
     cmp                   r9,       qword [@L - 0]
      jl    main.62.loop_body
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rbx
     mov      qword [rsi - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.64.loop_condition:
     cmp                   r9,       qword [@L - 0]
      jl    main.62.loop_body
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rbx
     mov      qword [rsi - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.65.loop_exit:
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rbx
     mov      qword [rsi - 0],                    0
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.70.enter:
     mov                  rbx,                    1
     cmp                  rbx,                    3
      jl    main.71.loop_body
     cmp      qword [@no - 0],                    0
      jl      main.75.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [@op - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pl - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.71.loop_body:
     mov                  rsi,      qword [@no - 0]
    imul                  rsi,      qword [@aa - 0]
     add                  rsi,      qword [@bb - 0]
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [@no - 0],                  rsi
     add                  rbx,                    1
     cmp                  rbx,                    3
      jl    main.71.loop_body
     cmp      qword [@no - 0],                    0
      jl      main.75.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [@op - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pl - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.72.loop_increment:
     add                  rbx,                    1
     cmp                  rbx,                    3
      jl    main.71.loop_body
     cmp      qword [@no - 0],                    0
      jl      main.75.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [@op - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pl - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.73.loop_condition:
     cmp                  rbx,                    3
      jl    main.71.loop_body
     cmp      qword [@no - 0],                    0
      jl      main.75.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [@op - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pl - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.74.loop_exit:
     cmp      qword [@no - 0],                    0
      jl      main.75.if_true
     mov                  rsi,      qword [@no - 0]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [@op - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pl - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.75.if_true:
     mov                  rsi,      qword [@no - 0]
     neg                  rsi
     mov      qword [@no - 0],                  rsi
     mov                  rsi,      qword [@no - 0]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [@op - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pl - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.77.if_exit:
     mov                  rsi,      qword [@no - 0]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [@op - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pl - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.78.exit:
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [@op - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pl - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.79.enter:
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pl - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.80.exit:
     mov      qword [@pl - 0],                  rsi
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.81.enter:
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.82.exit:
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.6.loop_body:
     mov                  rdi,                    1
     mov                  rbx,       qword [@n - 0]
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.83.enter:
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  r12,                  rax
     mov                  rsi,                  rbx
     sub                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rbx,                  r12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     add                  rsi,                    1
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.84.exit:
     mov      qword [@pr - 0],                  rsi
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.7.loop_condition:
     mov                  rsi,      qword [@pr - 0]
     cmp                  rsi,      qword [@pl - 0]
     jle     main.6.loop_body
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.8.loop_exit:
     cmp      qword [@op - 0],                    0
      je       main.9.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.9.if_true:
     mov                  rbx,                    1
     mov                   r9,                    1
     mov                  r12,       qword [@n - 0]
     cmp      qword [@pl - 0],                   r9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
     jne main.87.logical_false
     cmp      qword [@pr - 0],                  r12
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne main.90.logical_false
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main.92.if_true
     cmp                   r9,                  r12
      je      main.95.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     main.105.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.85.enter:
     cmp      qword [@pl - 0],                   r9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
     jne main.87.logical_false
     cmp      qword [@pr - 0],                  r12
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne main.90.logical_false
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main.92.if_true
     cmp                   r9,                  r12
      je      main.95.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     main.105.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.86.logical_true:
     cmp      qword [@pr - 0],                  r12
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
     jne main.90.logical_false
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main.92.if_true
     cmp                   r9,                  r12
      je      main.95.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     main.105.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.87.logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
     jne main.90.logical_false
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main.92.if_true
     cmp                   r9,                  r12
      je      main.95.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     main.105.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.88.logical_exit:
     cmp                  rsi,                    1
     jne main.90.logical_false
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main.92.if_true
     cmp                   r9,                  r12
      je      main.95.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     main.105.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.89.logical_true:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je      main.92.if_true
     cmp                   r9,                  r12
      je      main.95.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     main.105.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.90.logical_false:
     mov                  rsi,                    0
     cmp                  rsi,                    1
      je      main.92.if_true
     cmp                   r9,                  r12
      je      main.95.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     main.105.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.91.logical_exit:
     cmp                  rsi,                    1
      je      main.92.if_true
     cmp                   r9,                  r12
      je      main.95.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     main.105.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.92.if_true:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@now - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,     qword [@now - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [r12 - 0]
     add                  rsi,                    1
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,       qword [@s - 0]
     add                  r12,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r8,     qword [@now - 0]
     add                   r8,                  rsi
     mov                  rsi,       qword [r8 - 0]
     sal                  rsi,                    3
     mov                  r12,      qword [r12 - 0]
     add                  r12,                  rsi
     mov                  rax,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rax
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,       qword [@t - 0]
     add                  rbx,                  rsi
     mov                  rsi,      qword [rbx - 0]
     add                  rsi,                    1
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.94.if_exit:
     cmp                   r9,                  r12
      je      main.95.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     main.105.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.95.if_true:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
     sub                  rsp,                    8
    call               square
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [r12 - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
     sal                  rdi,                    3
     mov                  rsi,       qword [@b - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg      main.96.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.96.if_true:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                    1
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    0
     sal                  rdi,                    3
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rdi
     mov                  rax,      qword [r12 - 0]
     mov      qword [rsi - 0],                  rax
     mov                   r8,                    1
     cmp                   r8,       qword [@L - 0]
      jl    main.97.loop_body
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.97.loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,      qword [rdi - 0]
     add                  r12,                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r13,       qword [@s - 0]
     add                  r13,                  rsi
     mov                  rsi,                   r8
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  rsi,      qword [r13 - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi - 0]
    push                   r8
    call               square
     pop                   r8
     mov                  rsi,                  rax
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [r12 - 0],                  rsi
     add                   r8,                    1
     cmp                   r8,       qword [@L - 0]
      jl    main.97.loop_body
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.98.loop_increment:
     add                   r8,                    1
     cmp                   r8,       qword [@L - 0]
      jl    main.97.loop_body
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.99.loop_condition:
     cmp                   r8,       qword [@L - 0]
      jl    main.97.loop_body
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.104.if_exit:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      jg     main.105.if_true
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.105.if_true:
     mov                  rdi,                  rbx
    push                   r9
    call             pushdown
     pop                   r9
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.107.if_exit:
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r13,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r12
     sar                  rsi,                    1
     mov                  r14,                  rsi
     cmp      qword [@pl - 0],                  r14
     jle     main.108.if_true
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.108.if_true:
     mov                  rdi,                  r13
     mov                  rsi,                   r9
     mov                  rdx,                  r14
    push                   r8
    call               update
     pop                   r8
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.110.if_exit:
     mov                  rsi,                  r14
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.111.if_true
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.111.if_true:
     mov                  rsi,                  r14
     add                  rsi,                    1
     mov                  rdi,                   r8
     mov                  rdx,                  r12
    push                   r8
    call               update
     pop                   r8
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.113.if_exit:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                   r9,     qword [@sum - 0]
     add                   r9,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@sum - 0]
     add                  r12,                  rsi
     mov                  rsi,       qword [r9 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  r12,    qword [@flag - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov                   r9,                   r8
     sal                   r9,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                   r9
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [rsi - 0]
     mov      qword [r12 - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg     main.114.if_true
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.114.if_true:
     mov                   r9,                    0
     cmp                   r9,       qword [@L - 0]
      jl   main.115.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.115.loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  r12,                   r9
     sal                  r12,                    3
     mov                  rdi,      qword [rsi - 0]
     add                  rdi,                  r12
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r12,       qword [@s - 0]
     add                  r12,                  rsi
     mov                  rsi,                  r13
     sal                  rsi,                    3
     mov                  r14,     qword [@now - 0]
     add                  r14,                  rsi
     mov                  rsi,                   r9
     add                  rsi,      qword [r14 - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     sal                  rsi,                    3
     mov                  r14,      qword [r12 - 0]
     add                  r14,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r10,       qword [@s - 0]
     add                  r10,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                  r12,     qword [@now - 0]
     add                  r12,                  rsi
     mov                  rsi,                   r9
     add                  rsi,      qword [r12 - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     sal                  rsi,                    3
     mov                  r12,      qword [r10 - 0]
     add                  r12,                  rsi
     mov                  rsi,      qword [r14 - 0]
     add                  rsi,      qword [r12 - 0]
     mov      qword [rdi - 0],                  rsi
     add                   r9,                    1
     cmp                   r9,       qword [@L - 0]
      jl   main.115.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.116.loop_increment:
     add                   r9,                    1
     cmp                   r9,       qword [@L - 0]
      jl   main.115.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.117.loop_condition:
     cmp                   r9,       qword [@L - 0]
      jl   main.115.loop_body
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.118.loop_exit:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rbx,     qword [@now - 0]
     add                  rbx,                  rsi
     mov      qword [rbx - 0],                    0
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.11.if_exit:
     cmp      qword [@op - 0],                    1
      je      main.12.if_true
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.12.if_true:
     mov                  rsi,                    1
     mov                   r8,                    1
     mov                  r12,       qword [@n - 0]
     cmp      qword [@pl - 0],                   r8
     mov                  rbx,                    0
   setle                   bl
     cmp                  rbx,                    1
     jne main.124.logical_false
     cmp      qword [@pr - 0],                  r12
     mov                  rbx,                    0
   setge                   bl
     cmp                  rbx,                    1
      je     main.126.if_true
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     mov                  r14,                  rbx
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     add                  rbx,                    1
     mov                  r13,                  rbx
     mov                  rbx,                   r8
     add                  rbx,                  r12
     sar                  rbx,                    1
     mov                   r9,                  rbx
     mov                  rbx,                    0
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r10,       qword [@t - 0]
     add                  r10,                  rdi
     cmp      qword [r10 - 0],                    0
      jg     main.129.if_true
     cmp      qword [@pl - 0],                   r9
     jle     main.132.if_true
     mov                  rsi,                   r9
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.135.if_true
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.122.enter:
     cmp      qword [@pl - 0],                   r8
     mov                  rbx,                    0
   setle                   bl
     cmp                  rbx,                    1
     jne main.124.logical_false
     cmp      qword [@pr - 0],                  r12
     mov                  rbx,                    0
   setge                   bl
     cmp                  rbx,                    1
      je     main.126.if_true
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     mov                  r14,                  rbx
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     add                  rbx,                    1
     mov                  r13,                  rbx
     mov                  rbx,                   r8
     add                  rbx,                  r12
     sar                  rbx,                    1
     mov                   r9,                  rbx
     mov                  rbx,                    0
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r10,       qword [@t - 0]
     add                  r10,                  rdi
     cmp      qword [r10 - 0],                    0
      jg     main.129.if_true
     cmp      qword [@pl - 0],                   r9
     jle     main.132.if_true
     mov                  rsi,                   r9
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.135.if_true
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.123.logical_true:
     cmp      qword [@pr - 0],                  r12
     mov                  rbx,                    0
   setge                   bl
     cmp                  rbx,                    1
      je     main.126.if_true
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     mov                  r14,                  rbx
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     add                  rbx,                    1
     mov                  r13,                  rbx
     mov                  rbx,                   r8
     add                  rbx,                  r12
     sar                  rbx,                    1
     mov                   r9,                  rbx
     mov                  rbx,                    0
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r10,       qword [@t - 0]
     add                  r10,                  rdi
     cmp      qword [r10 - 0],                    0
      jg     main.129.if_true
     cmp      qword [@pl - 0],                   r9
     jle     main.132.if_true
     mov                  rsi,                   r9
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.135.if_true
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.124.logical_false:
     mov                  rbx,                    0
     cmp                  rbx,                    1
      je     main.126.if_true
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     mov                  r14,                  rbx
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     add                  rbx,                    1
     mov                  r13,                  rbx
     mov                  rbx,                   r8
     add                  rbx,                  r12
     sar                  rbx,                    1
     mov                   r9,                  rbx
     mov                  rbx,                    0
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r10,       qword [@t - 0]
     add                  r10,                  rdi
     cmp      qword [r10 - 0],                    0
      jg     main.129.if_true
     cmp      qword [@pl - 0],                   r9
     jle     main.132.if_true
     mov                  rsi,                   r9
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.135.if_true
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.125.logical_exit:
     cmp                  rbx,                    1
      je     main.126.if_true
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     mov                  r14,                  rbx
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     add                  rbx,                    1
     mov                  r13,                  rbx
     mov                  rbx,                   r8
     add                  rbx,                  r12
     sar                  rbx,                    1
     mov                   r9,                  rbx
     mov                  rbx,                    0
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r10,       qword [@t - 0]
     add                  r10,                  rdi
     cmp      qword [r10 - 0],                    0
      jg     main.129.if_true
     cmp      qword [@pl - 0],                   r9
     jle     main.132.if_true
     mov                  rsi,                   r9
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.135.if_true
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.126.if_true:
     sal                  rsi,                    3
     mov                  rbx,     qword [@sum - 0]
     add                  rbx,                  rsi
     mov                  rbx,      qword [rbx - 0]
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.128.if_exit:
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     mov                  r14,                  rbx
     mov                  rbx,                  rsi
    imul                  rbx,                    2
     add                  rbx,                    1
     mov                  r13,                  rbx
     mov                  rbx,                   r8
     add                  rbx,                  r12
     sar                  rbx,                    1
     mov                   r9,                  rbx
     mov                  rbx,                    0
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                  r10,       qword [@t - 0]
     add                  r10,                  rdi
     cmp      qword [r10 - 0],                    0
      jg     main.129.if_true
     cmp      qword [@pl - 0],                   r9
     jle     main.132.if_true
     mov                  rsi,                   r9
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.135.if_true
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.129.if_true:
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call             pushdown
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     cmp      qword [@pl - 0],                   r9
     jle     main.132.if_true
     mov                  rsi,                   r9
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.135.if_true
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.131.if_exit:
     cmp      qword [@pl - 0],                   r9
     jle     main.132.if_true
     mov                  rsi,                   r9
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.135.if_true
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.132.if_true:
     mov                  rdi,                  r14
     mov                  rsi,                   r8
     mov                  rdx,                   r9
    push                   r9
    call                query
     pop                   r9
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.135.if_true
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.134.if_exit:
     mov                  rsi,                   r9
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     jge     main.135.if_true
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.135.if_true:
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rdx,                  r12
     sub                  rsp,                    8
    call                query
     add                  rsp,                    8
     mov                  rdi,                  rax
     mov                  rsi,                  rbx
     add                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,                  rsi
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.138.exit:
     mov                  rsi,     qword [@ans - 0]
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov     qword [@ans - 0],                  rsi
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.14.if_exit:
     sub       qword [@m - 0],                    1
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.15.loop_condition:
     cmp       qword [@m - 0],                    0
      jg        main.70.enter
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.16.loop_exit:
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
main.17.exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                  152
     pop                  rbp
     ret
pushdown:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
    push                  rbx
pushdown.0.enter:
     mov                   r8,                  rdi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  rdi
     cmp      qword [rsi - 0],                    0
      jg   pushdown.1.if_true
     jmp      pushdown.4.exit
pushdown.1.if_true:
     mov                  rsi,                   r8
    imul                  rsi,                    2
     mov                  r11,                  rsi
     mov                  rsi,                   r8
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rdi,                  r11
     sal                  rdi,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r11
     sal                  rdi,                    3
     mov                  r10,     qword [@now - 0]
     add                  r10,                  rdi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rbx,       qword [@t - 0]
     add                  rbx,                  rdi
     mov                  rdi,      qword [r10 - 0]
     add                  rdi,      qword [rbx - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov      qword [rsi - 0],                  rdi
     mov                  rsi,                  r11
     sal                  rsi,                    3
     mov                  rbx,     qword [@sum - 0]
     add                  rbx,                  rsi
     mov                  rdi,                  r11
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r11
     sal                  rdi,                    3
     mov                  r10,     qword [@now - 0]
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
     sal                  rdi,                    3
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rax,      qword [rsi - 0]
     mov      qword [rbx - 0],                  rax
     mov                  rsi,                  r11
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  r11
     sal                  rsi,                    3
     mov                  r11,       qword [@t - 0]
     add                  r11,                  rsi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  r10
     mov                  r10,      qword [r11 - 0]
     add                  r10,      qword [rsi - 0]
     mov                  rsi,                  r10
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rdi,     qword [@now - 0]
     add                  rdi,                  rsi
     mov                  r10,                   r9
     sal                  r10,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  r10
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  r11,       qword [@t - 0]
     add                  r11,                  r10
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,      qword [r11 - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  r11,     qword [@sum - 0]
     add                  r11,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  r10,     qword [@now - 0]
     add                  r10,                  rsi
     mov                  r10,      qword [r10 - 0]
     sal                  r10,                    3
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,                  r10
     mov                  rax,      qword [rsi - 0]
     mov      qword [r11 - 0],                  rax
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  r10,       qword [@t - 0]
     add                  r10,                  rsi
     mov                  rsi,                   r9
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     mov                  rsi,                   r8
     sal                  rsi,                    3
     mov                   r9,       qword [@t - 0]
     add                   r9,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,       qword [r9 - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov      qword [r10 - 0],                  rsi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                    0
pushdown.4.exit:
     pop                  rbx
     add                  rsp,                   40
     pop                  rbp
     ret
SECTION .data
SECTION .bss
@b:
    resq                    1
@now:
    resq                    1
@t:
    resq                    1
@a:
    resq                    1
@n:
    resq                    1
@m:
    resq                    1
@p:
    resq                    1
@op:
    resq                    1
@L:
    resq                    1
@flag:
    resq                    1
@s:
    resq                    1
@sum:
    resq                    1
@ans:
    resq                    1
@aa:
    resq                    1
@bb:
    resq                    1
@MOD:
    resq                    1
@no:
    resq                    1
@pl:
    resq                    1
@pr:
    resq                    1
SECTION .text
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
