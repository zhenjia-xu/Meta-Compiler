global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
myprint:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
myprint.0.enter:
     mov                  rbx,                    0
     jmp myprint.3.loop_condition
myprint.1.loop_body:
     mov                  rsi,                  rbx
    push                  rdi
    push                   r8
    push                  rsi
    call         __string_ord
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                   r8,                  rax
     mov                  rsi,  qword [@myHash - 0]
     add                  rsi,                   r8
     mov  qword [@myHash - 0],                  rsi
myprint.2.loop_increment:
     add                  rbx,                    1
myprint.3.loop_condition:
    push                  rdi
    push                   r8
    push                  rsi
    call      __string_length
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
      jl  myprint.1.loop_body
myprint.5.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
dfs:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
dfs.0.enter:
     mov                  rbx,                  rdi
     cmp                  rbx,       qword [@n - 0]
      je        dfs.1.if_true
     jmp        dfs.6.if_exit
dfs.1.if_true:
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call                check
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     cmp                  rbx,                    1
      je        dfs.2.if_true
     jmp           dfs.7.exit
dfs.2.if_true:
     mov                  rdi,      __string_const3
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                    0
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rdi,      __string_const4
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     jmp           dfs.7.exit
dfs.6.if_exit:
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
     mov                  rdi, qword [@assignment - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    1
     mov                  rsi,                  rbx
     add                  rsi,                    1
     mov                  rdi,                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
     mov                  rdi, qword [@assignment - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    0
     add                  rbx,                    1
     mov                  rdi,                  rbx
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
dfs.7.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
print_last_cond:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
print_last_cond.0.enter:
     mov                  rbx,                  rdi
     cmp                  rbx,       qword [@n - 0]
      je print_last_cond.1.if_true
     jmp print_last_cond.13.if_exit
print_last_cond.1.if_true:
     mov                  rdi,      __string_const5
    push                  rdi
    push                   r8
    push                  rsi
    call              myprint
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                    1
     mov                  rbx,                    0
     jmp print_last_cond.7.loop_condition
print_last_cond.2.loop_body:
     mov                  rdi,                  rbx
     add                  rdi,                    1
    imul                  rdi,                    8
     mov                   r8, qword [@assignment - 0]
     add                   r8,                  rdi
     cmp       qword [r8 - 0],                    1
      je print_last_cond.3.if_true
     jmp print_last_cond.5.if_exit
print_last_cond.3.if_true:
     mov                  rsi,                    0
print_last_cond.5.if_exit:
     mov                  rdi,                  rbx
     add                  rdi,                    1
    imul                  rdi,                    8
     mov                   r8, qword [@assignment - 0]
     add                   r8,                  rdi
     mov                  rdi,       qword [r8 - 0]
    push                  rdi
    push                   r8
    push                  rsi
    call             toString
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rax
    push                  rdi
    push                   r8
    push                  rsi
    call              myprint
     pop                  rsi
     pop                   r8
     pop                  rdi
print_last_cond.6.loop_increment:
     add                  rbx,                    1
print_last_cond.7.loop_condition:
     cmp                  rbx,       qword [@n - 0]
      jl print_last_cond.2.loop_body
print_last_cond.8.loop_exit:
     cmp                  rsi,                    0
      je print_last_cond.9.if_true
     jmp print_last_cond.10.if_false
print_last_cond.9.if_true:
     mov                  rdi,      __string_const6
    push                  rdi
    push                   r8
    push                  rsi
    call              myprint
     pop                  rsi
     pop                   r8
     pop                  rdi
     jmp print_last_cond.14.exit
print_last_cond.10.if_false:
     mov                  rdi,      __string_const7
    push                  rdi
    push                   r8
    push                  rsi
    call              myprint
     pop                  rsi
     pop                   r8
     pop                  rdi
     jmp print_last_cond.14.exit
print_last_cond.13.if_exit:
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
     mov                  rdi, qword [@assignment - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    1
     mov                  rsi,                  rbx
     add                  rsi,                    1
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rsi
    call      print_last_cond
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
     mov                  rdi, qword [@assignment - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    0
     add                  rbx,                    1
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rsi
    call      print_last_cond
     pop                  rsi
     pop                   r8
     pop                  rdi
print_last_cond.14.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
     mov  qword [@myHash - 0],                    0
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
payoff:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
payoff.0.enter:
     mov                  rbx,                  rdi
     mov                   r8,                  rsi
     mov                  rdi,                    0
     mov                  rsi,                    0
     jmp payoff.6.loop_condition
payoff.1.loop_body:
     mov                   r9,                  rsi
    imul                   r9,                    8
     mov                  r10,                  rbx
     add                  r10,                   r9
     mov                  r11,                  rsi
    imul                  r11,                    8
     mov                   r9,                   r8
     add                   r9,                  r11
     mov                  r10,      qword [r10 - 0]
     cmp                  r10,       qword [r9 - 0]
     jne     payoff.2.if_true
     jmp payoff.5.loop_increment
payoff.2.if_true:
     add                  rdi,                    1
payoff.5.loop_increment:
     add                  rsi,                    1
payoff.6.loop_condition:
     cmp                  rsi,                    3
      jl   payoff.1.loop_body
payoff.7.loop_exit:
     mov                  rax,                  rdi
payoff.8.exit:
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
     mov       qword [@k - 0],                    5
     mov                  rbx,                    2
    imul                  rbx,       qword [@k - 0]
     add                  rbx,                    1
     mov       qword [@n - 0],                  rbx
     mov                  rbx,       qword [@k - 0]
     mov       qword [@m - 0],                  rbx
     mov    qword [@last - 0],                    1
     mov                  rdi,      __string_const0
    push                   r8
    push                  rsi
    push                  rdi
    call              myprint
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                  rbx,       qword [@m - 0]
     add                  rbx,                    1
    imul                  rbx,                    8
    push                   r8
    push                  rsi
    push                  rdi
     mov                  rdi,                  rbx
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rsi,       qword [@m - 0]
     mov      qword [rbx - 0],                  rsi
     add                  rbx,                    8
     mov     qword [@sat - 0],                  rbx
     mov                  rbx,                    0
     jmp main.3.loop_condition
main.1.loop_body:
     mov                  rsi,                    3
     add                  rsi,                    1
    imul                  rsi,                    8
    push                   r8
    push                  rsi
    push                  rdi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                    3
     add                  rsi,                    8
     mov                   r8,                    0
    imul                   r8,                    8
     mov                  rdi,                  rsi
     add                  rdi,                   r8
     mov                   r8,    qword [@last - 0]
     mov      qword [rdi - 0],                   r8
     mov                   r8,                    1
    imul                   r8,                    8
     mov                  rdi,                  rsi
     add                  rdi,                   r8
     mov                   r8,    qword [@last - 0]
     add                   r8,                    1
     mov      qword [rdi - 0],                   r8
     mov                   r8,                    2
    imul                   r8,                    8
     mov                  rdi,                  rsi
     add                  rdi,                   r8
     mov                   r8,    qword [@last - 0]
     add                   r8,                    2
     neg                   r8
     mov      qword [rdi - 0],                   r8
     mov                  rdi,    qword [@last - 0]
     add                  rdi,                    2
     mov    qword [@last - 0],                  rdi
     mov                   r8,                  rbx
    imul                   r8,                    8
     mov                  rdi,     qword [@sat - 0]
     add                  rdi,                   r8
     mov      qword [rdi - 0],                  rsi
main.2.loop_increment:
     add                  rbx,                    1
main.3.loop_condition:
     cmp                  rbx,       qword [@m - 0]
      jl     main.1.loop_body
main.4.loop_exit:
     mov                  rbx,       qword [@n - 0]
     add                  rbx,                    1
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
    push                   r8
    push                  rsi
    push                  rdi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  rbx
     add                  rsi,                    8
     mov qword [@assignment - 0],                  rsi
     mov                  rbx,       qword [@n - 0]
     add                  rbx,                    1
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
    push                   r8
    push                  rsi
    push                  rdi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  rbx
     add                  rsi,                    8
     mov qword [@cond_ass - 0],                  rsi
     mov                  rdi,                    0
    push                   r8
    push                  rsi
    push                  rdi
    call                  dfs
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                  rdi,                    0
    push                   r8
    push                  rsi
    push                  rdi
    call      print_last_cond
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                  rdi,  qword [@myHash - 0]
    push                   r8
    push                  rsi
    push                  rdi
    call             toString
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                   r8
    push                  rsi
    push                  rdi
    call              println
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                  rax,                    0
main.5.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
print_cond:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
print_cond.0.enter:
     mov                  rbx,                  rdi
     cmp                  rbx,       qword [@n - 0]
      je print_cond.1.if_true
     jmp print_cond.10.if_exit
print_cond.1.if_true:
     mov                  rdi, qword [@cond_ass - 0]
     mov                  rsi, qword [@assignment - 0]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call               payoff
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,      __string_const1
     mov                  rsi,                  rbx
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,      __string_const2
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                    0
     jmp print_cond.7.loop_condition
print_cond.2.loop_body:
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
      je print_cond.3.if_true
     jmp print_cond.6.loop_increment
print_cond.3.if_true:
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
     mov                  rdi, qword [@cond_ass - 0]
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
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
print_cond.6.loop_increment:
     add                  rbx,                    1
print_cond.7.loop_condition:
     cmp                  rbx,       qword [@n - 0]
      jl print_cond.2.loop_body
     jmp   print_cond.11.exit
print_cond.10.if_exit:
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
     mov                  rdi, qword [@cond_ass - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    1
     mov                  rsi,                  rbx
     add                  rsi,                    1
     mov                  rdi,                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
     mov                  rdi, qword [@cond_ass - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    0
     add                  rbx,                    1
     mov                  rdi,                  rbx
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
print_cond.11.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
check:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
check.0.enter:
     mov                  rsi,                    0
     jmp check.22.loop_condition
check.1.loop_body:
     mov                  rdi,                    0
     mov                  rbx,                    0
     jmp check.16.loop_condition
check.2.loop_body:
     mov                   r8,                  rsi
    imul                   r8,                    8
     mov                   r9,     qword [@sat - 0]
     add                   r9,                   r8
     mov                   r8,                  rbx
    imul                   r8,                    8
     mov                   r9,       qword [r9 - 0]
     add                   r9,                   r8
     mov                   r8,       qword [r9 - 0]
     cmp                   r8,                    0
     mov                   r9,                    0
    setg                  r9b
     cmp                   r9,                    1
     jne check.4.logical_false
check.3.logical_true:
     mov                  r10,                   r8
    imul                  r10,                    8
     mov                   r9, qword [@assignment - 0]
     add                   r9,                  r10
     cmp       qword [r9 - 0],                    1
     mov                   r9,                    0
    sete                  r9b
     jmp check.5.logical_exit
check.4.logical_false:
     mov                   r9,                    0
check.5.logical_exit:
     cmp                   r9,                    1
      je      check.6.if_true
     jmp      check.8.if_exit
check.6.if_true:
     mov                  rdi,                    1
check.8.if_exit:
     cmp                   r8,                    0
     mov                   r9,                    0
    setl                  r9b
     cmp                   r9,                    1
     jne check.10.logical_false
check.9.logical_true:
     neg                   r8
     mov                   r9,                   r8
    imul                   r9,                    8
     mov                   r8, qword [@assignment - 0]
     add                   r8,                   r9
     cmp       qword [r8 - 0],                    0
     mov                   r8,                    0
    sete                  r8b
     jmp check.11.logical_exit
check.10.logical_false:
     mov                   r8,                    0
check.11.logical_exit:
     cmp                   r8,                    1
      je     check.12.if_true
     jmp check.15.loop_increment
check.12.if_true:
     mov                  rdi,                    1
check.15.loop_increment:
     add                  rbx,                    1
check.16.loop_condition:
     cmp                  rbx,                    3
      jl    check.2.loop_body
check.17.loop_exit:
     cmp                  rdi,                    0
      je     check.18.if_true
     jmp check.21.loop_increment
check.18.if_true:
     mov                  rax,                    0
     jmp        check.24.exit
check.21.loop_increment:
     add                  rsi,                    1
check.22.loop_condition:
     cmp                  rsi,       qword [@m - 0]
      jl    check.1.loop_body
check.23.loop_exit:
     mov                  rax,                    1
check.24.exit:
     pop                  rbx
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
      dq                   10
__string_const0:
      db "max: xz;", 10, "", 0
      dq                    2
__string_const1:
      db              "- ", 0
      dq                    2
__string_const2:
      db              "*x", 0
      dq                    3
__string_const3:
      db             "xz ", 0
      dq                    8
__string_const4:
      db  " <= 0;", 10, "", 0
      dq                    1
__string_const5:
      db               "x", 0
      dq                    3
__string_const6:
      db             " + ", 0
      dq                    7
__string_const7:
      db   " = 1;", 10, "", 0
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
@sat:
    resq                    1
@assignment:
    resq                    1
@cond_ass:
    resq                    1
@k:
    resq                    1
@n:
    resq                    1
@m:
    resq                    1
@last:
    resq                    1
@myHash:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
