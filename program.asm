global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
init:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
init.0.enter:
     mov                  rbx,               130005
     add                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],               130005
     add                  rbx,                    8
     mov                   r8,                  rbx
     mov                  rbx,                    0
     mov                  rsi,                    0
     mov                  rbx,                    2
     jmp init.3.loop_condition
init.1.loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                  rbx
     jmp init.2.loop_increment
init.2.loop_increment:
     add                  rbx,                    1
     jmp init.3.loop_condition
init.3.loop_condition:
     cmp                  rbx,       qword [@p - 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     init.1.loop_body
     jmp     init.4.loop_exit
init.4.loop_exit:
     mov                  rbx,                    2
     jmp init.11.loop_condition
init.5.loop_body:
     mov                  rsi,                    1
     jmp init.8.loop_condition
init.6.loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r9,                   r8
     add                   r9,                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  r10,                   r8
     add                  r10,                  rdi
     mov                  rdi,      qword [r10 - 0]
    push                   r8
    push                   r9
    push                  rsi
    call               square
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov       qword [r9 - 0],                  rdi
     jmp init.7.loop_increment
init.7.loop_increment:
     add                  rsi,                    1
     jmp init.8.loop_condition
init.8.loop_condition:
     cmp                  rsi,                   15
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je     init.6.loop_body
     jmp     init.9.loop_exit
init.9.loop_exit:
     jmp init.10.loop_increment
init.10.loop_increment:
     add                  rbx,                    1
     jmp init.11.loop_condition
init.11.loop_condition:
     cmp                  rbx,       qword [@p - 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     init.5.loop_body
     jmp    init.12.loop_exit
init.12.loop_exit:
     mov                  rbx,                    2
     jmp init.22.loop_condition
init.13.loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,                   r8
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
     mov                  rsi,                    1
     jmp init.19.loop_condition
init.14.loop_body:
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call               square
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rdi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  r10,       qword [@b - 0]
     add                  r10,                   r9
     mov      qword [r10 - 0],                    1
     mov                  r10,                  rbx
     sal                  r10,                    3
     mov                   r9,                   r8
     add                   r9,                  r10
     cmp                  rdi,       qword [r9 - 0]
     mov                   r9,                    0
    sete                  r9b
     cmp                   r9,                    1
      je      init.15.if_true
     jmp     init.16.if_false
init.15.if_true:
     jmp    init.20.loop_exit
init.16.if_false:
     jmp      init.17.if_exit
init.17.if_exit:
     jmp init.18.loop_increment
init.18.loop_increment:
     add                  rsi,                    1
     jmp init.19.loop_condition
init.19.loop_condition:
     mov                  rax,                    1
     cmp                  rax,                    1
      je    init.14.loop_body
     jmp    init.20.loop_exit
init.20.loop_exit:
     mov                  rdi,       qword [@L - 0]
    push                   r8
    call                  lcm
     pop                   r8
     mov                  rsi,                  rax
     mov       qword [@L - 0],                  rsi
     jmp init.21.loop_increment
init.21.loop_increment:
     add                  rbx,                    1
     jmp init.22.loop_condition
init.22.loop_condition:
     cmp                  rbx,       qword [@p - 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je    init.13.loop_body
     jmp    init.23.loop_exit
init.23.loop_exit:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rbx,       qword [@b - 0]
     add                  rbx,                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rdi,       qword [@b - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    1
     mov                  rsi,      qword [rdi - 0]
     mov      qword [rbx - 0],                  rsi
     jmp         init.24.exit
init.24.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
square:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
square.0.enter:
     mov                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,       qword [@p - 0]
     cqo
    idiv                  rcx
     mov                  rbx,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,       qword [@p - 0]
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
    imul                  rbx,                  rsi
     mov                  rax,                  rbx
     jmp        square.1.exit
square.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
Rand:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
Rand.0.enter:
     mov                  rbx,                    1
     mov                  rbx,                    1
     jmp Rand.3.loop_condition
Rand.1.loop_body:
     mov                  rsi,      qword [@no - 0]
    imul                  rsi,      qword [@aa - 0]
     add                  rsi,      qword [@bb - 0]
     mov                  rax,                  rsi
     mov                  rcx,     qword [@MOD - 0]
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     mov      qword [@no - 0],                  rsi
     jmp Rand.2.loop_increment
Rand.2.loop_increment:
     add                  rbx,                    1
     jmp Rand.3.loop_condition
Rand.3.loop_condition:
     cmp                  rbx,                    3
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     Rand.1.loop_body
     jmp     Rand.4.loop_exit
Rand.4.loop_exit:
     cmp      qword [@no - 0],                    0
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
      je       Rand.5.if_true
     jmp      Rand.6.if_false
Rand.5.if_true:
     mov                  rbx,      qword [@no - 0]
     neg                  rbx
     mov      qword [@no - 0],                  rbx
     jmp       Rand.7.if_exit
Rand.6.if_false:
     jmp       Rand.7.if_exit
Rand.7.if_exit:
     mov                  rax,      qword [@no - 0]
     jmp          Rand.8.exit
Rand.8.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
build:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
    push                  r12
     sub                  rsp,                    0
build.0.enter:
     mov                  rbx,                  rdi
     mov                  r11,                  rdx
     mov                   r8,                    0
     cmp                  rsi,                  r11
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je      build.1.if_true
     jmp    build.15.if_false
build.1.if_true:
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                   r8
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                   r9,       qword [@a - 0]
     add                   r9,                   r8
     mov                   r8,       qword [r9 - 0]
     mov      qword [rdi - 0],                   r8
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [r8 - 0]
     cmp                  rdi,       qword [@p - 0]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
     jne build.3.logical_false
     jmp build.2.logical_true
build.2.logical_true:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rdi
     cmp       qword [r8 - 0],                    0
     mov                  rdi,                    0
   setge                  dil
     jmp build.4.logical_exit
build.3.logical_false:
     mov                  rdi,                    0
     jmp build.4.logical_exit
build.4.logical_exit:
     cmp                  rdi,                    1
     jne build.6.logical_false
     jmp build.5.logical_true
build.5.logical_true:
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [r8 - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     sal                  rdi,                    3
     mov                   r8,       qword [@b - 0]
     add                   r8,                  rdi
     cmp       qword [r8 - 0],                    0
     mov                  rdi,                    0
    setg                  dil
     jmp build.7.logical_exit
build.6.logical_false:
     mov                  rdi,                    0
     jmp build.7.logical_exit
build.7.logical_exit:
     cmp                  rdi,                    1
      je      build.8.if_true
     jmp    build.13.if_false
build.8.if_true:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r8,    qword [@flag - 0]
     add                   r8,                  rdi
     mov       qword [r8 - 0],                    1
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r9,       qword [@s - 0]
     add                   r9,                  rdi
     mov                   r8,                    0
     sal                   r8,                    3
     mov                  rdi,       qword [r9 - 0]
     add                  rdi,                   r8
     sal                  rsi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rsi
     mov                  rsi,       qword [r8 - 0]
     mov      qword [rdi - 0],                  rsi
     mov                   r8,                    1
     jmp build.11.loop_condition
build.9.loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                   r9,                  rbx
     sal                   r9,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                   r9
     mov                   r9,                   r8
     sub                   r9,                    1
     sal                   r9,                    3
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                   r9
     mov                  rdi,      qword [rdi - 0]
    push                   r8
    push                  rsi
    call               square
     pop                  rsi
     pop                   r8
     mov                  rdi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov      qword [rsi - 0],                  rdi
     jmp build.10.loop_increment
build.10.loop_increment:
     add                   r8,                    1
     jmp build.11.loop_condition
build.11.loop_condition:
     cmp                   r8,       qword [@L - 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je    build.9.loop_body
     jmp   build.12.loop_exit
build.12.loop_exit:
     jmp     build.14.if_exit
build.13.if_false:
     jmp     build.14.if_exit
build.14.if_exit:
     sal                  rbx,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rbx
     mov      qword [rsi - 0],                    0
     jmp     build.23.if_exit
build.15.if_false:
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r9,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                  r10,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r11
     mov                  rax,                  rdi
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                  rdi,                  rax
     mov                   r8,                  rdi
     mov                  rdi,                   r9
     mov                  rdx,                   r8
    push                  r10
    push                  r11
    push                   r8
    push                   r9
    call                build
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                  rdi,                  r10
     mov                  rdx,                  r11
    push                  r10
    push                   r9
    call                build
     pop                   r9
     pop                  r10
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,     qword [@sum - 0]
     add                  rsi,                  rdi
     mov                   r8,                   r9
     sal                   r8,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                   r8
     mov                   r8,                  r10
     sal                   r8,                    3
     mov                  r11,     qword [@sum - 0]
     add                  r11,                   r8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,      qword [r11 - 0]
     mov      qword [rsi - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                   r8,                   r9
     sal                   r8,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                   r8
     mov                   r8,                  r10
     sal                   r8,                    3
     mov                  r11,    qword [@flag - 0]
     add                  r11,                   r8
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [r11 - 0]
     mov      qword [rsi - 0],                  rdi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je     build.16.if_true
     jmp    build.21.if_false
build.16.if_true:
     mov                   r8,                    0
     jmp build.19.loop_condition
build.17.loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@s - 0]
     add                  rsi,                  rdi
     mov                  rdi,                   r8
     sal                  rdi,                    3
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  r11
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  r11
     mov                  r12,                  r10
     sal                  r12,                    3
     mov                  r11,       qword [@s - 0]
     add                  r11,                  r12
     mov                  r12,                   r8
     sal                  r12,                    3
     mov                  r11,      qword [r11 - 0]
     add                  r11,                  r12
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,      qword [r11 - 0]
     mov      qword [rsi - 0],                  rdi
     jmp build.18.loop_increment
build.18.loop_increment:
     add                   r8,                    1
     jmp build.19.loop_condition
build.19.loop_condition:
     cmp                   r8,       qword [@L - 0]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je   build.17.loop_body
     jmp   build.20.loop_exit
build.20.loop_exit:
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rbx
     mov      qword [rsi - 0],                    0
     jmp     build.22.if_exit
build.21.if_false:
     jmp     build.22.if_exit
build.22.if_exit:
     jmp     build.23.if_exit
build.23.if_exit:
     jmp        build.24.exit
build.24.exit:
     pop                  r12
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
     mov                  rbx,               500005
     add                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],               500005
     add                  rbx,                    8
     mov       qword [@b - 0],                  rbx
     mov                  rbx,               500005
     add                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],               500005
     add                  rbx,                    8
     mov     qword [@now - 0],                  rbx
     mov                  rbx,               500005
     add                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],               500005
     add                  rbx,                    8
     mov       qword [@t - 0],                  rbx
     mov                  rbx,               130005
     add                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],               130005
     add                  rbx,                    8
     mov       qword [@a - 0],                  rbx
     mov       qword [@L - 0],                    1
     mov                  rbx,               500005
     add                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],               500005
     add                  rbx,                    8
     mov    qword [@flag - 0],                  rbx
     mov                   r8,               500005
     add                   r8,                    1
     sal                   r8,                    3
    push                   r8
     mov                  rdi,                   r8
    call               malloc
     pop                   r8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],               500005
     add                  rbx,                    8
     mov                  rsi,                  rbx
     mov                  rdi,                  rbx
     sub                   r8,                    8
     add                  rdi,                   r8
     jmp @GlobalDeclaration.2.allocate_condition
@GlobalDeclaration.1.allocate_body:
     mov                   r8,      qword [rsi - 0]
     mov                   r8,                   61
     add                   r8,                    1
     sal                   r8,                    3
    push                   r8
    push                  rsi
    push                  rdi
     mov                  rdi,                   r8
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                   r8,                  rax
     mov       qword [r8 - 0],                   61
     add                   r8,                    8
     mov      qword [rsi - 0],                   r8
     add                  rsi,                    8
     jmp @GlobalDeclaration.2.allocate_condition
@GlobalDeclaration.2.allocate_condition:
     cmp                  rsi,                  rdi
      jl @GlobalDeclaration.1.allocate_body
     jmp @GlobalDeclaration.3.allocate_exit
@GlobalDeclaration.3.allocate_exit:
     mov       qword [@s - 0],                  rbx
     mov                  rbx,               500005
     add                  rbx,                    1
     sal                  rbx,                    3
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],               500005
     add                  rbx,                    8
     mov     qword [@sum - 0],                  rbx
     mov     qword [@ans - 0],                    0
     mov      qword [@aa - 0],                13131
     mov      qword [@bb - 0],                 5353
     mov     qword [@MOD - 0],             33554425
     mov      qword [@no - 0],                    1
     mov      qword [@pl - 0],                    0
     mov      qword [@pr - 0],                    0
     jmp @GlobalDeclaration.4.exit
@GlobalDeclaration.4.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
lcm:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
lcm.0.enter:
     mov                  rbx,                  rdi
    imul                  rbx,                  rsi
     sub                  rsp,                    8
    call                  gcd
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cqo
    idiv                  rcx
     mov                  rbx,                  rax
     mov                  rax,                  rbx
     jmp           lcm.1.exit
lcm.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
query:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
    push                  r12
    push                  r13
     sub                  rsp,                    0
query.0.enter:
     mov                  rbx,                  rdx
     cmp      qword [@pl - 0],                  rsi
     mov                   r8,                    0
   setle                  r8b
     cmp                   r8,                    1
     jne query.2.logical_false
     jmp query.1.logical_true
query.1.logical_true:
     cmp      qword [@pr - 0],                  rbx
     mov                   r8,                    0
   setge                  r8b
     jmp query.3.logical_exit
query.2.logical_false:
     mov                   r8,                    0
     jmp query.3.logical_exit
query.3.logical_exit:
     cmp                   r8,                    1
      je      query.4.if_true
     jmp     query.5.if_false
query.4.if_true:
     mov                  rbx,                  rdi
     sal                  rbx,                    3
     mov                  rsi,     qword [@sum - 0]
     add                  rsi,                  rbx
     mov                  rax,      qword [rsi - 0]
     jmp        query.16.exit
query.5.if_false:
     jmp      query.6.if_exit
query.6.if_exit:
     mov                   r8,                  rdi
    imul                   r8,                    2
     mov                  r11,                   r8
     mov                   r8,                  rdi
    imul                   r8,                    2
     add                   r8,                    1
     mov                   r9,                   r8
     mov                   r8,                  rsi
     add                   r8,                  rbx
     mov                  rax,                   r8
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                   r8,                  rax
     mov                  r10,                   r8
     mov                   r8,                    0
     mov                  r12,                  rdi
     sal                  r12,                    3
     mov                  r13,       qword [@t - 0]
     add                  r13,                  r12
     cmp      qword [r13 - 0],                    0
     mov                  r12,                    0
    setg                 r12b
     cmp                  r12,                    1
      je      query.7.if_true
     jmp     query.8.if_false
query.7.if_true:
    push                  r10
    push                  r11
    push                   r8
    push                   r9
    push                  rsi
    call             pushdown
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  r10
     jmp      query.9.if_exit
query.8.if_false:
     jmp      query.9.if_exit
query.9.if_exit:
     cmp      qword [@pl - 0],                  r10
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je     query.10.if_true
     jmp    query.11.if_false
query.10.if_true:
     mov                  rdi,                  r11
     mov                  rdx,                  r10
    push                  r10
    push                   r8
    push                   r9
    call                query
     pop                   r9
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                   r8
     add                  rdi,                  rsi
     mov                   r8,                  rdi
     jmp     query.12.if_exit
query.11.if_false:
     jmp     query.12.if_exit
query.12.if_exit:
     mov                  rsi,                  r10
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je     query.13.if_true
     jmp    query.14.if_false
query.13.if_true:
     mov                  rsi,                  r10
     add                  rsi,                    1
     mov                  rdi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    call                query
     pop                   r8
     mov                  rbx,                  rax
     mov                  rsi,                   r8
     add                  rsi,                  rbx
     mov                   r8,                  rsi
     jmp     query.15.if_exit
query.14.if_false:
     jmp     query.15.if_exit
query.15.if_exit:
     mov                  rax,                   r8
     jmp        query.16.exit
query.16.exit:
     pop                  r13
     pop                  r12
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
RandRange:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
RandRange.0.enter:
     mov                  rbx,                  rdi
     mov                  rdi,                  rsi
    push                  rdi
    call                 Rand
     pop                  rdi
     mov                  rsi,                  rax
     sub                  rdi,                  rbx
     add                  rdi,                    1
     mov                  rax,                  rsi
     mov                  rcx,                  rdi
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     add                  rbx,                  rsi
     add                  rbx,                    1
     mov                  rax,                  rbx
     jmp     RandRange.1.exit
RandRange.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
gcd:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
gcd.0.enter:
     mov                  rbx,                  rdi
     cmp                  rsi,                    0
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je        gcd.1.if_true
     jmp       gcd.2.if_false
gcd.1.if_true:
     mov                  rax,                  rbx
     jmp           gcd.7.exit
gcd.2.if_false:
     jmp        gcd.3.if_exit
gcd.3.if_exit:
     cmp                  rbx,                  rsi
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je        gcd.4.if_true
     jmp       gcd.5.if_false
gcd.4.if_true:
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call                  gcd
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rax,                  rbx
     jmp           gcd.7.exit
gcd.5.if_false:
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cqo
    idiv                  rcx
     mov                  rbx,                  rdx
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     sub                  rsp,                    8
    call                  gcd
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rax,                  rbx
     jmp           gcd.7.exit
gcd.6.if_exit:
     jmp           gcd.7.exit
gcd.7.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
update:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
    push                  r12
    push                  r13
     sub                  rsp,                    0
update.0.enter:
     mov                  rbx,                  rdi
     mov                  r10,                  rdx
     cmp      qword [@pl - 0],                  rsi
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
     jne update.2.logical_false
     jmp update.1.logical_true
update.1.logical_true:
     cmp      qword [@pr - 0],                  r10
     mov                  rdi,                    0
   setge                  dil
     jmp update.3.logical_exit
update.2.logical_false:
     mov                  rdi,                    0
     jmp update.3.logical_exit
update.3.logical_exit:
     cmp                  rdi,                    1
     jne update.5.logical_false
     jmp update.4.logical_true
update.4.logical_true:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r8,    qword [@flag - 0]
     add                   r8,                  rdi
     cmp       qword [r8 - 0],                    0
     mov                  rdi,                    0
    setg                  dil
     jmp update.6.logical_exit
update.5.logical_false:
     mov                  rdi,                    0
     jmp update.6.logical_exit
update.6.logical_exit:
     cmp                  rdi,                    1
      je     update.7.if_true
     jmp    update.8.if_false
update.7.if_true:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r8,     qword [@now - 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [r8 - 0]
     add                  rdi,                    1
     mov                  rax,                  rdi
     mov                  rcx,       qword [@L - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov      qword [rsi - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,     qword [@sum - 0]
     add                  rsi,                  rdi
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                   r8
     mov                   r8,                  rbx
     sal                   r8,                    3
     mov                   r9,     qword [@now - 0]
     add                   r9,                   r8
     mov                   r8,       qword [r9 - 0]
     sal                   r8,                    3
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                   r8
     mov                  rdi,      qword [rdi - 0]
     mov      qword [rsi - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  rdi
     sal                  rbx,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rbx
     mov                  rbx,      qword [rdi - 0]
     add                  rbx,                    1
     mov                  rax,                  rbx
     mov                  rcx,       qword [@L - 0]
     cqo
    idiv                  rcx
     mov                  rbx,                  rdx
     mov      qword [rsi - 0],                  rbx
     jmp       update.36.exit
update.8.if_false:
     jmp     update.9.if_exit
update.9.if_exit:
     cmp                  rsi,                  r10
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    1
      je    update.10.if_true
     jmp   update.18.if_false
update.10.if_true:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,     qword [@sum - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r8,     qword [@sum - 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [r8 - 0]
    push                  rsi
    call               square
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov      qword [rsi - 0],                  rdi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     sal                  rsi,                    3
     mov                  rdi,       qword [@b - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je    update.11.if_true
     jmp   update.16.if_false
update.11.if_true:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    1
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  rsi
     mov                   r8,                    0
     sal                   r8,                    3
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,                   r8
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r8,     qword [@sum - 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [r8 - 0]
     mov      qword [rsi - 0],                  rdi
     mov                  rsi,                    0
     mov                  rsi,                    1
     jmp update.14.loop_condition
update.12.loop_body:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r8,       qword [@s - 0]
     add                   r8,                  rdi
     mov                  rdi,                  rsi
     sal                  rdi,                    3
     mov                   r8,       qword [r8 - 0]
     add                   r8,                  rdi
     mov                   r9,                  rbx
     sal                   r9,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                   r9
     mov                   r9,                  rsi
     sub                   r9,                    1
     sal                   r9,                    3
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                   r9
     mov                  rdi,      qword [rdi - 0]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call               square
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rdi,                  rax
     mov                  rax,                  rdi
     mov                  rcx,       qword [@p - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov       qword [r8 - 0],                  rdi
     jmp update.13.loop_increment
update.13.loop_increment:
     add                  rsi,                    1
     jmp update.14.loop_condition
update.14.loop_condition:
     cmp                  rsi,       qword [@L - 0]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je  update.12.loop_body
     jmp  update.15.loop_exit
update.15.loop_exit:
     jmp    update.17.if_exit
update.16.if_false:
     jmp    update.17.if_exit
update.17.if_exit:
     jmp       update.36.exit
update.18.if_false:
     jmp    update.19.if_exit
update.19.if_exit:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                   r8,       qword [@t - 0]
     add                   r8,                  rdi
     cmp       qword [r8 - 0],                    0
     mov                  rdi,                    0
    setg                  dil
     cmp                  rdi,                    1
      je    update.20.if_true
     jmp   update.21.if_false
update.20.if_true:
     mov                  rdi,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
    call             pushdown
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     jmp    update.22.if_exit
update.21.if_false:
     jmp    update.22.if_exit
update.22.if_exit:
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     mov                   r8,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    2
     add                  rdi,                    1
     mov                   r9,                  rdi
     mov                  rdi,                  rsi
     add                  rdi,                  r10
     mov                  rax,                  rdi
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                  rdi,                  rax
     mov                  r11,                  rdi
     cmp      qword [@pl - 0],                  r11
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je    update.23.if_true
     jmp   update.24.if_false
update.23.if_true:
     mov                  rdi,                   r8
     mov                  rdx,                  r11
    push                  r10
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call               update
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  r10
     jmp    update.25.if_exit
update.24.if_false:
     jmp    update.25.if_exit
update.25.if_exit:
     mov                  rsi,                  r11
     add                  rsi,                    1
     cmp      qword [@pr - 0],                  rsi
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
      je    update.26.if_true
     jmp   update.27.if_false
update.26.if_true:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  rdi,                   r9
     mov                  rdx,                  r10
    push                   r8
    push                   r9
     sub                  rsp,                    8
    call               update
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     jmp    update.28.if_exit
update.27.if_false:
     jmp    update.28.if_exit
update.28.if_exit:
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,     qword [@sum - 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                  r10
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r10,     qword [@sum - 0]
     add                  r10,                  r11
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,      qword [r10 - 0]
     mov      qword [rsi - 0],                  rdi
     mov                  rdi,                  rbx
     sal                  rdi,                    3
     mov                  rsi,    qword [@flag - 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     sal                  r10,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  r10
     mov                  r11,                   r9
     sal                  r11,                    3
     mov                  r10,    qword [@flag - 0]
     add                  r10,                  r11
     mov                  rdi,      qword [rdi - 0]
     and                  rdi,      qword [r10 - 0]
     mov      qword [rsi - 0],                  rdi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,    qword [@flag - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je    update.29.if_true
     jmp   update.34.if_false
update.29.if_true:
     mov                  rsi,                    0
     mov                  rsi,                    0
     jmp update.32.loop_condition
update.30.loop_body:
     mov                  r10,                  rbx
     sal                  r10,                    3
     mov                  rdi,       qword [@s - 0]
     add                  rdi,                  r10
     mov                  r10,                  rsi
     sal                  r10,                    3
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  r10
     mov                  r11,                   r8
     sal                  r11,                    3
     mov                  r10,       qword [@s - 0]
     add                  r10,                  r11
     mov                  r12,                   r8
     sal                  r12,                    3
     mov                  r11,     qword [@now - 0]
     add                  r11,                  r12
     mov                  r12,                  rsi
     add                  r12,      qword [r11 - 0]
     mov                  r11,                  r12
     mov                  rax,                  r11
     mov                  rcx,       qword [@L - 0]
     cqo
    idiv                  rcx
     mov                  r11,                  rdx
     sal                  r11,                    3
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r11
     mov                  r12,                   r9
     sal                  r12,                    3
     mov                  r11,       qword [@s - 0]
     add                  r11,                  r12
     mov                  r13,                   r9
     sal                  r13,                    3
     mov                  r12,     qword [@now - 0]
     add                  r12,                  r13
     mov                  r13,                  rsi
     add                  r13,      qword [r12 - 0]
     mov                  r12,                  r13
     mov                  rax,                  r12
     mov                  rcx,       qword [@L - 0]
     cqo
    idiv                  rcx
     mov                  r12,                  rdx
     sal                  r12,                    3
     mov                  r11,      qword [r11 - 0]
     add                  r11,                  r12
     mov                  r10,      qword [r10 - 0]
     add                  r10,      qword [r11 - 0]
     mov      qword [rdi - 0],                  r10
     jmp update.31.loop_increment
update.31.loop_increment:
     add                  rsi,                    1
     jmp update.32.loop_condition
update.32.loop_condition:
     cmp                  rsi,       qword [@L - 0]
     mov                  rdi,                    0
    setl                  dil
     cmp                  rdi,                    1
      je  update.30.loop_body
     jmp  update.33.loop_exit
update.33.loop_exit:
     sal                  rbx,                    3
     mov                  rsi,     qword [@now - 0]
     add                  rsi,                  rbx
     mov      qword [rsi - 0],                    0
     jmp    update.35.if_exit
update.34.if_false:
     jmp    update.35.if_exit
update.35.if_exit:
     jmp       update.36.exit
update.36.exit:
     pop                  r13
     pop                  r12
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
    push                  rbx
     sub                  rsp,                    0
main.0.enter:
     mov       qword [@n - 0],                40000
     mov       qword [@m - 0],                40000
     mov       qword [@p - 0],                 9977
     mov                  rbx,                    1
     mov                  rbx,                    1
     jmp main.3.loop_condition
main.1.loop_body:
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                   r8,       qword [@a - 0]
     add                   r8,                  rsi
     mov                  rdi,                    0
     mov                  rsi,       qword [@p - 0]
    push                   r8
    call            RandRange
     pop                   r8
     mov                  rsi,                  rax
     mov       qword [r8 - 0],                  rsi
     jmp main.2.loop_increment
main.2.loop_increment:
     add                  rbx,                    1
     jmp main.3.loop_condition
main.3.loop_condition:
     cmp                  rbx,       qword [@n - 0]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je     main.1.loop_body
     jmp     main.4.loop_exit
main.4.loop_exit:
     sub                  rsp,                    8
    call                 init
     add                  rsp,                    8
     mov                  rdi,                    1
     mov                  rsi,                    1
     mov                  rdx,       qword [@n - 0]
     sub                  rsp,                    8
    call                build
     add                  rsp,                    8
     jmp main.15.loop_condition
main.5.loop_body:
     sub                  rsp,                    8
    call                 Rand
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rax,                  rbx
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                  rbx,                  rdx
     mov      qword [@op - 0],                  rbx
     mov                  rdi,                    1
     mov                  rsi,       qword [@n - 0]
     sub                  rsp,                    8
    call            RandRange
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [@pl - 0],                  rbx
     mov                  rdi,                    1
     mov                  rsi,       qword [@n - 0]
     sub                  rsp,                    8
    call            RandRange
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [@pr - 0],                  rbx
     jmp main.7.loop_condition
main.6.loop_body:
     mov                  rdi,                    1
     mov                  rsi,       qword [@n - 0]
     sub                  rsp,                    8
    call            RandRange
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [@pr - 0],                  rbx
     jmp main.7.loop_condition
main.7.loop_condition:
     mov                  rbx,      qword [@pr - 0]
     cmp                  rbx,      qword [@pl - 0]
     mov                  rbx,                    0
   setle                   bl
     cmp                  rbx,                    1
      je     main.6.loop_body
     jmp     main.8.loop_exit
main.8.loop_exit:
     cmp      qword [@op - 0],                    0
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       main.9.if_true
     jmp     main.10.if_false
main.9.if_true:
     mov                  rdi,                    1
     mov                  rsi,                    1
     mov                  rdx,       qword [@n - 0]
     sub                  rsp,                    8
    call               update
     add                  rsp,                    8
     jmp      main.11.if_exit
main.10.if_false:
     jmp      main.11.if_exit
main.11.if_exit:
     cmp      qword [@op - 0],                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je      main.12.if_true
     jmp     main.13.if_false
main.12.if_true:
     mov                  rdi,                    1
     mov                  rsi,                    1
     mov                  rdx,       qword [@n - 0]
     sub                  rsp,                    8
    call                query
     add                  rsp,                    8
     mov                  rsi,                  rax
     mov                  rbx,     qword [@ans - 0]
     add                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,     qword [@MOD - 0]
     cqo
    idiv                  rcx
     mov                  rbx,                  rdx
     mov     qword [@ans - 0],                  rbx
     jmp      main.14.if_exit
main.13.if_false:
     jmp      main.14.if_exit
main.14.if_exit:
     mov                  rbx,       qword [@m - 0]
     sub       qword [@m - 0],                    1
     jmp main.15.loop_condition
main.15.loop_condition:
     cmp       qword [@m - 0],                    0
     mov                  rbx,                    0
    setg                   bl
     cmp                  rbx,                    1
      je     main.5.loop_body
     jmp    main.16.loop_exit
main.16.loop_exit:
     mov                  rdi,     qword [@ans - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     mov                  rax,                    0
     jmp         main.17.exit
main.17.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
pushdown:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
pushdown.0.enter:
     mov                  rbx,                  rdi
     mov                  rsi,                  rbx
     sal                  rsi,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
      je   pushdown.1.if_true
     jmp  pushdown.2.if_false
pushdown.1.if_true:
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     add                  rsi,                    1
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,     qword [@now - 0]
     add                   r8,                   r9
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,     qword [@now - 0]
     add                   r9,                  r10
     mov                  r10,                  rbx
     sal                  r10,                    3
     mov                  r11,       qword [@t - 0]
     add                  r11,                  r10
     mov                   r9,       qword [r9 - 0]
     add                   r9,      qword [r11 - 0]
     mov                  rax,                   r9
     mov                  rcx,       qword [@L - 0]
     cqo
    idiv                  rcx
     mov                   r9,                  rdx
     mov       qword [r8 - 0],                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,     qword [@sum - 0]
     add                   r8,                   r9
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                   r9,       qword [@s - 0]
     add                   r9,                  r10
     mov                  r10,                  rdi
     sal                  r10,                    3
     mov                  r11,     qword [@now - 0]
     add                  r11,                  r10
     mov                  r10,      qword [r11 - 0]
     sal                  r10,                    3
     mov                   r9,       qword [r9 - 0]
     add                   r9,                  r10
     mov                   r9,       qword [r9 - 0]
     mov       qword [r8 - 0],                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                   r8,       qword [@t - 0]
     add                   r8,                   r9
     mov                   r9,                  rdi
     sal                   r9,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                   r9
     mov                  r10,                  rbx
     sal                  r10,                    3
     mov                   r9,       qword [@t - 0]
     add                   r9,                  r10
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,       qword [r9 - 0]
     mov                  rax,                  rdi
     mov                  rcx,       qword [@L - 0]
     cqo
    idiv                  rcx
     mov                  rdi,                  rdx
     mov       qword [r8 - 0],                  rdi
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,     qword [@now - 0]
     add                  rdi,                   r8
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,     qword [@now - 0]
     add                   r8,                   r9
     mov                  r10,                  rbx
     sal                  r10,                    3
     mov                   r9,       qword [@t - 0]
     add                   r9,                  r10
     mov                   r8,       qword [r8 - 0]
     add                   r8,       qword [r9 - 0]
     mov                  rax,                   r8
     mov                  rcx,       qword [@L - 0]
     cqo
    idiv                  rcx
     mov                   r8,                  rdx
     mov      qword [rdi - 0],                   r8
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,     qword [@sum - 0]
     add                  rdi,                   r8
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                   r8,       qword [@s - 0]
     add                   r8,                   r9
     mov                   r9,                  rsi
     sal                   r9,                    3
     mov                  r10,     qword [@now - 0]
     add                  r10,                   r9
     mov                   r9,      qword [r10 - 0]
     sal                   r9,                    3
     mov                   r8,       qword [r8 - 0]
     add                   r8,                   r9
     mov                   r8,       qword [r8 - 0]
     mov      qword [rdi - 0],                   r8
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rdi,       qword [@t - 0]
     add                  rdi,                   r8
     mov                   r8,                  rsi
     sal                   r8,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                   r8
     mov                   r9,                  rbx
     sal                   r9,                    3
     mov                   r8,       qword [@t - 0]
     add                   r8,                   r9
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,       qword [r8 - 0]
     mov                  rax,                  rsi
     mov                  rcx,       qword [@L - 0]
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     mov      qword [rdi - 0],                  rsi
     sal                  rbx,                    3
     mov                  rsi,       qword [@t - 0]
     add                  rsi,                  rbx
     mov      qword [rsi - 0],                    0
     jmp   pushdown.3.if_exit
pushdown.2.if_false:
     jmp   pushdown.3.if_exit
pushdown.3.if_exit:
     jmp      pushdown.4.exit
pushdown.4.exit:
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
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
