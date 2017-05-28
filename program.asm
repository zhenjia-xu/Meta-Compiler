global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
A.null:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
     sub                  rsp,                   32
A.null.0.enter:
     mov                  rbx,                  rdi
     mov                  rsi,  qword [@countA - 0]
     add  qword [@countA - 0],                    1
     mov     qword [rbx + 24],                  rsi
     mov                  rsi,     qword [rbx + 24]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
      je     A.null.1.if_true
     jmp    A.null.5.if_false
A.null.1.if_true:
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                   32
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
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call               A.null
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov      qword [rbx - 0],                  rsi
     mov                  rsi,  qword [@countB - 0]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
      je     A.null.2.if_true
     jmp    A.null.3.if_false
A.null.2.if_true:
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                   16
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
A.null.23.enter:
     mov                  rsi,  qword [@countB - 0]
     add  qword [@countB - 0],                    1
     mov      qword [rbx - 0],                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                   32
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
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call               A.null
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call              A.getc0
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
     mov                  rsi,                    0
     sal                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call                 C.Me
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
    call                 C.Me
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rbx + 8],                  rsi
A.null.24.exit:
     mov      qword [rbx + 8],                  rbx
     jmp     A.null.6.if_exit
A.null.3.if_false:
     mov      qword [rbx + 8],                    0
     jmp     A.null.6.if_exit
A.null.5.if_false:
     mov      qword [rbx - 0],                    0
A.null.6.if_exit:
     mov                  rsi,                    2
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
     mov      qword [rsi - 0],                    2
     add                  rsi,                    8
     mov     qword [rbx + 16],                  rsi
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rax,     qword [rbx + 16]
     mov      qword [rbp - 8],                  rax
     add      qword [rbp - 8],                  rsi
     mov                   r8,                    6
     add                   r8,                    1
     sal                   r8,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                   r8
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
     mov      qword [rsi - 0],                    6
     add                  rsi,                    8
     mov                  rdi,                  rsi
     mov     qword [rbp - 16],                  rsi
     sub                   r8,                    8
     add     qword [rbp - 16],                   r8
     jmp A.null.17.allocate_condition
A.null.7.allocate_body:
     mov                  r11,                    6
     add                  r11,                    1
     sal                  r11,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  r11
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                   r8,                  rax
     mov       qword [r8 - 0],                    6
     add                   r8,                    8
     mov                   r9,                   r8
     mov                  r10,                   r8
     sub                  r11,                    8
     add                  r10,                  r11
     jmp A.null.15.allocate_condition
A.null.8.allocate_body:
     mov                  r13,                    6
     add                  r13,                    1
     sal                  r13,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  r13
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  r11,                  rax
     mov      qword [r11 - 0],                    6
     add                  r11,                    8
     mov                  r12,                  r11
     mov     qword [rbp - 24],                  r11
     sub                  r13,                    8
     add     qword [rbp - 24],                  r13
     jmp A.null.13.allocate_condition
A.null.9.allocate_body:
     mov                  r13,                    6
     add                  r13,                    1
     sal                  r13,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  r13
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  r14,                  rax
     mov      qword [r14 - 0],                    6
     add                  r14,                    8
     mov                  r15,                  r14
     mov     qword [rbp - 32],                  r14
     sub                  r13,                    8
     add     qword [rbp - 32],                  r13
     jmp A.null.11.allocate_condition
A.null.10.allocate_body:
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                   16
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
A.null.25.enter:
     mov                  rsi,  qword [@countC - 0]
     add  qword [@countC - 0],                    1
     mov      qword [rbx - 0],                  rsi
     mov                  rdi,      qword [rbx - 0]
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
     mov      qword [rbx + 8],                  rsi
     mov                  rdi,                  rbx
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call                 C.Me
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     mov qword [@something - 0],                  rbx
A.null.26.exit:
     mov      qword [r15 - 0],                  rbx
     add                  r15,                    8
A.null.11.allocate_condition:
     cmp                  r15,     qword [rbp - 32]
      jl A.null.10.allocate_body
A.null.12.allocate_exit:
     mov      qword [r12 - 0],                  r14
     add                  r12,                    8
A.null.13.allocate_condition:
     cmp                  r12,     qword [rbp - 24]
      jl A.null.9.allocate_body
A.null.14.allocate_exit:
     mov       qword [r9 - 0],                  r11
     add                   r9,                    8
A.null.15.allocate_condition:
     cmp                   r9,                  r10
      jl A.null.8.allocate_body
A.null.16.allocate_exit:
     mov      qword [rdi - 0],                   r8
     add                  rdi,                    8
A.null.17.allocate_condition:
     cmp                  rdi,     qword [rbp - 16]
      jl A.null.7.allocate_body
A.null.18.allocate_exit:
     mov                  rdi,                    2
     sal                  rdi,                    3
     mov                   r8,                  rsi
     add                   r8,                  rdi
     mov                  rsi,                    3
     sal                  rsi,                    3
     mov                  rdi,       qword [r8 - 0]
     add                  rdi,                  rsi
     mov                  rsi,                    3
     sal                  rsi,                    3
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     mov                  rcx,      qword [rbp - 8]
     mov      qword [rcx - 0],                  rsi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rdi,     qword [rbx + 16]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    0
     mov                  rdi,     qword [rbx + 16]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call         __array_size
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    2
     jne    A.null.19.if_true
     jmp       A.null.22.exit
A.null.19.if_true:
     mov                  rdi,      __string_const9
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
A.null.22.exit:
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                   32
     pop                  rbp
     ret
C.null:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
C.null.0.enter:
     mov                  rbx,                  rdi
     mov                  rsi,  qword [@countC - 0]
     add  qword [@countC - 0],                    1
     mov      qword [rbx - 0],                  rsi
     mov                  rdi,      qword [rbx - 0]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rbx + 8],                  rsi
C.null.2.enter:
C.null.3.exit:
     mov qword [@something - 0],                  rbx
C.null.1.exit:
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
count:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
count.0.enter:
     mov  qword [@countA - 0],                    0
     mov  qword [@countB - 0],                    0
     mov  qword [@countC - 0],                    0
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     mov                  rdi,                   16
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
count.5.enter:
     mov                  rsi,  qword [@countB - 0]
     add  qword [@countB - 0],                    1
     mov      qword [rbx - 0],                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     mov                  rdi,                   32
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call               A.null
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              A.getc0
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rsi,                    0
     sal                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call                 C.Me
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call                 C.Me
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rbx + 8],                  rsi
count.6.exit:
     mov                  rdi,  qword [@countA - 0]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,      __string_const0
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,  qword [@countB - 0]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,      __string_const1
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,  qword [@countC - 0]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov  qword [@countA - 0],                    1
     mov  qword [@countB - 0],                    1
     mov  qword [@countC - 0],                    1
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     mov                  rdi,                   16
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
count.7.enter:
     mov                  rsi,  qword [@countB - 0]
     add  qword [@countB - 0],                    1
     mov      qword [rbx - 0],                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     mov                  rdi,                   32
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call               A.null
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              A.getc0
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rsi,                    0
     sal                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call                 C.Me
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call                 C.Me
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rbx + 8],                  rsi
count.8.exit:
     mov                  rbx,  qword [@countA - 0]
     sub                  rbx,                    1
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,      __string_const2
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rsi,  qword [@countB - 0]
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,      __string_const3
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rsi,  qword [@countC - 0]
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rdi,      __string_const4
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx, qword [@something - 0]
count.9.enter:
count.10.exit:
     mov                  rsi, qword [@something - 0]
     mov                  rdi,      qword [rsi + 8]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     sub                   r8,                    1
     mov                  rdi,      qword [rbx + 8]
     mov                  rsi,                    1
     mov                  rdx,                   r8
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call    __string_parseInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx, qword [@something - 0]
     mov                  rdi,      qword [rbx + 8]
     mov                  rsi,                    0
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rsi, qword [@something - 0]
     mov                  rdi,      qword [rsi + 8]
     mov                  rsi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call          __string_GR
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      count.1.if_true
     jmp     count.2.if_false
count.1.if_true:
     mov                  rsi, qword [@something - 0]
     mov                  rdi,      qword [rsi + 8]
     mov                  rsi,      __string_const5
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     jmp         count.4.exit
count.2.if_false:
     mov                  rsi, qword [@something - 0]
     mov                  rdi,      qword [rsi + 8]
     mov                  rsi,      __string_const6
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
count.4.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
B.null:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
     sub                  rsp,                   32
B.null.0.enter:
     mov                  rbx,                  rdi
     mov                  rsi,  qword [@countB - 0]
     add  qword [@countB - 0],                    1
     mov      qword [rbx - 0],                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                   32
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
B.null.2.enter:
     mov                  rsi,  qword [@countA - 0]
     add  qword [@countA - 0],                    1
     mov     qword [rbx + 24],                  rsi
     mov                  rsi,     qword [rbx + 24]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
      je     B.null.3.if_true
     jmp    B.null.7.if_false
B.null.3.if_true:
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                   32
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
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call               A.null
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov      qword [rbx - 0],                  rsi
     mov                  rsi,  qword [@countB - 0]
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
      je     B.null.4.if_true
     jmp    B.null.5.if_false
B.null.4.if_true:
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                   16
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
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call               B.null
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov      qword [rbx + 8],                  rsi
     jmp     B.null.8.if_exit
B.null.5.if_false:
     mov      qword [rbx + 8],                    0
     jmp     B.null.8.if_exit
B.null.7.if_false:
     mov      qword [rbx - 0],                    0
B.null.8.if_exit:
     mov                  rsi,                    2
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
     mov      qword [rsi - 0],                    2
     add                  rsi,                    8
     mov     qword [rbx + 16],                  rsi
     mov                  rdi,                    0
     sal                  rdi,                    3
     mov                  rsi,     qword [rbx + 16]
     add                  rsi,                  rdi
     mov                  rdi,                    6
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
     mov                   r8,                  rax
     mov       qword [r8 - 0],                    6
     add                   r8,                    8
     mov                   r9,                   r8
     mov      qword [rbp - 8],                   r8
     sub                  rdi,                    8
     add      qword [rbp - 8],                  rdi
     jmp B.null.19.allocate_condition
B.null.9.allocate_body:
     mov                  rdi,                    6
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
     mov                  r10,                  rax
     mov      qword [r10 - 0],                    6
     add                  r10,                    8
     mov                  r11,                  r10
     mov     qword [rbp - 16],                  r10
     sub                  rdi,                    8
     add     qword [rbp - 16],                  rdi
     jmp B.null.17.allocate_condition
B.null.10.allocate_body:
     mov                  rdi,                    6
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
     mov                  r12,                  rax
     mov      qword [r12 - 0],                    6
     add                  r12,                    8
     mov                  r13,                  r12
     mov     qword [rbp - 24],                  r12
     sub                  rdi,                    8
     add     qword [rbp - 24],                  rdi
     jmp B.null.15.allocate_condition
B.null.11.allocate_body:
     mov                  rdi,                    6
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
     mov                  r14,                  rax
     mov      qword [r14 - 0],                    6
     add                  r14,                    8
     mov                  r15,                  r14
     mov     qword [rbp - 32],                  r14
     sub                  rdi,                    8
     add     qword [rbp - 32],                  rdi
     jmp B.null.13.allocate_condition
B.null.12.allocate_body:
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                   16
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
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call               C.null
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov      qword [r15 - 0],                  rdi
     add                  r15,                    8
B.null.13.allocate_condition:
     cmp                  r15,     qword [rbp - 32]
      jl B.null.12.allocate_body
B.null.14.allocate_exit:
     mov      qword [r13 - 0],                  r14
     add                  r13,                    8
B.null.15.allocate_condition:
     cmp                  r13,     qword [rbp - 24]
      jl B.null.11.allocate_body
B.null.16.allocate_exit:
     mov      qword [r11 - 0],                  r12
     add                  r11,                    8
B.null.17.allocate_condition:
     cmp                  r11,     qword [rbp - 16]
      jl B.null.10.allocate_body
B.null.18.allocate_exit:
     mov       qword [r9 - 0],                  r10
     add                   r9,                    8
B.null.19.allocate_condition:
     cmp                   r9,      qword [rbp - 8]
      jl B.null.9.allocate_body
B.null.20.allocate_exit:
     mov                  rdi,                    2
     sal                  rdi,                    3
     add                   r8,                  rdi
     mov                  rdi,                    3
     sal                  rdi,                    3
     mov                   r8,       qword [r8 - 0]
     add                   r8,                  rdi
     mov                  rdi,                    3
     sal                  rdi,                    3
     mov                   r8,       qword [r8 - 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [r8 - 0]
     mov      qword [rsi - 0],                  rdi
     mov                  rsi,                    1
     sal                  rsi,                    3
     mov                  rdi,     qword [rbx + 16]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    0
     mov                  rdi,     qword [rbx + 16]
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call         __array_size
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     cmp                  rbx,                    2
     jne    B.null.21.if_true
     jmp       B.null.24.exit
B.null.21.if_true:
     mov                  rdi,     __string_const10
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
B.null.24.exit:
     mov                  rdi,                  rbx
B.null.25.enter:
     mov                  rsi,                    0
     sal                  rsi,                    3
     mov                  rdi,     qword [rdi + 16]
     add                  rdi,                  rsi
     mov                  rdi,      qword [rdi - 0]
B.null.26.exit:
     mov                  rsi,                    0
     sal                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
B.null.27.enter:
B.null.28.exit:
B.null.29.enter:
B.null.30.exit:
     mov      qword [rbx + 8],                  rsi
B.null.1.exit:
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                   32
     pop                  rbp
     ret
A.getc0:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
A.getc0.0.enter:
     mov                  rsi,                  rdi
     mov                  rbx,                    0
     sal                  rbx,                    3
     mov                  rsi,     qword [rsi + 16]
     add                  rsi,                  rbx
     mov                  rax,      qword [rsi - 0]
A.getc0.1.exit:
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
     mov                  rbx,                    0
     jmp main.6.loop_condition
main.1.loop_body:
     mov                  rsi,                  rbx
     xor                  rsi,                  627
     cmp                  rsi,                  666
     mov                  rdi,                    0
    sete                  dil
     mov                  rsi,                    0
     cmp                  rsi,                    1
     mov                  rsi,                    0
   setne                  sil
     cmp                  rdi,                  rsi
      je       main.2.if_true
     jmp main.5.loop_increment
main.2.if_true:
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                    0
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                    1
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
main.15.enter:
     mov  qword [@countA - 0],                    0
     mov  qword [@countB - 0],                    0
     mov  qword [@countC - 0],                    0
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     mov                  rdi,                   16
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call               B.null
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rdi,  qword [@countA - 0]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,     __string_const11
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,  qword [@countB - 0]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,     __string_const12
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,  qword [@countC - 0]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov  qword [@countA - 0],                    1
     mov  qword [@countB - 0],                    1
     mov  qword [@countC - 0],                    1
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     mov                  rdi,                   16
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call               B.null
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,  qword [@countA - 0]
     sub                  rbx,                    1
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,     __string_const13
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rsi,  qword [@countB - 0]
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,     __string_const14
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rsi,  qword [@countC - 0]
     sub                  rsi,                    1
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rdi,     __string_const15
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rdi, qword [@something - 0]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call                 C.Me
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rsi, qword [@something - 0]
     mov                  rdi,      qword [rsi + 8]
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     sub                   r8,                    1
     mov                  rdi,      qword [rbx + 8]
     mov                  rsi,                    1
     mov                  rdx,                   r8
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call    __string_parseInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx, qword [@something - 0]
     mov                  rdi,      qword [rbx + 8]
     mov                  rsi,                    0
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rsi, qword [@something - 0]
     mov                  rdi,      qword [rsi + 8]
     mov                  rsi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call          __string_GR
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  rsi,                    1
      je      main.16.if_true
     jmp     main.17.if_false
main.16.if_true:
     mov                  rsi, qword [@something - 0]
     mov                  rdi,      qword [rsi + 8]
     mov                  rsi,     __string_const16
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     jmp main.12.loop_condition
main.17.if_false:
     mov                  rsi, qword [@something - 0]
     mov                  rdi,      qword [rsi + 8]
     mov                  rsi,     __string_const17
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     jmp main.12.loop_condition
main.5.loop_increment:
     add                  rbx,                    1
main.6.loop_condition:
     mov                  rax,                    1
     cmp                  rax,                    1
      je     main.1.loop_body
     jmp main.12.loop_condition
main.8.loop_body:
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
      je main.12.loop_condition
main.11.if_exit:
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const7
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
main.12.loop_condition:
     mov                  rax,                    1
     cmp                  rax,                    1
      je     main.8.loop_body
main.13.loop_exit:
     mov                  rdi,      __string_const8
    push                  rdi
    push                   r8
    push                  rdx
    push                  rsi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rax,                    0
main.14.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
C.Me:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
C.Me.0.enter:
     mov                  rbx,                  rdi
     mov                  rax,                  rbx
C.Me.1.exit:
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
      dq                    1
__string_const1:
      db               " ", 0
      dq                    1
__string_const2:
      db               " ", 0
      dq                    1
__string_const3:
      db               " ", 0
      dq                    2
__string_const4:
      db        "", 10, "", 0
      dq                    1
__string_const5:
      db               ">", 0
      dq                    2
__string_const6:
      db              "<=", 0
      dq                    1
__string_const7:
      db               ",", 0
      dq                    0
__string_const8:
      db                "", 0
      dq                    5
__string_const9:
      db           "Oops!", 0
      dq                    5
__string_const10:
      db           "Oops!", 0
      dq                    1
__string_const11:
      db               " ", 0
      dq                    1
__string_const12:
      db               " ", 0
      dq                    1
__string_const13:
      db               " ", 0
      dq                    1
__string_const14:
      db               " ", 0
      dq                    2
__string_const15:
      db        "", 10, "", 0
      dq                    1
__string_const16:
      db               ">", 0
      dq                    2
__string_const17:
      db              "<=", 0
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
@countA:
    resq                    1
@countB:
    resq                    1
@countC:
    resq                    1
@something:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
