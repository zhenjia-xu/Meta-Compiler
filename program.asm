global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
@GlobalDeclaration.1.exit:
     pop                  rbp
     ret
h:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
h.0.enter:
     mov                  rsi,                  rdi
     cmp                  rsi,                    0
      je     h.2.logical_true
     cmp                  rsi,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je          h.4.if_true
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl        h.7.loop_body
     mov                  rax,                  r12
     jmp            h.11.exit
h.1.logical_false:
     cmp                  rsi,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je          h.4.if_true
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl        h.7.loop_body
     mov                  rax,                  r12
     jmp            h.11.exit
h.2.logical_true:
     mov                  rbx,                    1
     cmp                  rbx,                    1
      je          h.4.if_true
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl        h.7.loop_body
     mov                  rax,                  r12
     jmp            h.11.exit
h.3.logical_exit:
     cmp                  rbx,                    1
      je          h.4.if_true
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl        h.7.loop_body
     mov                  rax,                  r12
     jmp            h.11.exit
h.4.if_true:
     mov                  rax,                    1
     jmp            h.11.exit
h.6.if_exit:
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl        h.7.loop_body
     mov                  rax,                  r12
     jmp            h.11.exit
h.7.loop_body:
     mov                  rdi,                  rbx
    push                  rsi
    call                    h
     pop                  rsi
     mov                   r8,                  rax
     mov                  rdi,                  rsi
     sub                  rdi,                    1
     sub                  rdi,                  rbx
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call                    h
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  r13,                  rax
     mov                  rdi,                   r8
    imul                  rdi,                  r13
     add                  r12,                  rdi
     add                  rbx,                    1
     cmp                  rbx,                  rsi
      jl        h.7.loop_body
     mov                  rax,                  r12
     jmp            h.11.exit
h.8.loop_increment:
     add                  rbx,                    1
     cmp                  rbx,                  rsi
      jl        h.7.loop_body
     mov                  rax,                  r12
     jmp            h.11.exit
h.9.loop_condition:
     cmp                  rbx,                  rsi
      jl        h.7.loop_body
     mov                  rax,                  r12
     jmp            h.11.exit
h.10.loop_exit:
     mov                  rax,                  r12
h.11.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
    push                  r12
    push                  r13
    push                  rbx
main.0.enter:
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     mov                  rsi,                  rax
     cmp                  rsi,                    0
      je  main.4.logical_true
     cmp                  rsi,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       main.6.if_true
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl     main.9.loop_body
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.2.enter:
     cmp                  rsi,                    0
      je  main.4.logical_true
     cmp                  rsi,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       main.6.if_true
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl     main.9.loop_body
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.3.logical_false:
     cmp                  rsi,                    1
     mov                  rbx,                    0
    sete                   bl
     cmp                  rbx,                    1
      je       main.6.if_true
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl     main.9.loop_body
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.4.logical_true:
     mov                  rbx,                    1
     cmp                  rbx,                    1
      je       main.6.if_true
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl     main.9.loop_body
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.5.logical_exit:
     cmp                  rbx,                    1
      je       main.6.if_true
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl     main.9.loop_body
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.6.if_true:
     mov                  rsi,                    1
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.8.if_exit:
     mov                  r12,                    0
     mov                  rbx,                    0
     cmp                  rbx,                  rsi
      jl     main.9.loop_body
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.9.loop_body:
     mov                  rdi,                  rbx
    push                  rsi
    call                    h
     pop                  rsi
     mov                   r8,                  rax
     mov                  rdi,                  rsi
     sub                  rdi,                    1
     sub                  rdi,                  rbx
    push                   r8
    push                  rsi
     sub                  rsp,                    8
    call                    h
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  r13,                  rax
     mov                  rdi,                   r8
    imul                  rdi,                  r13
     add                  r12,                  rdi
     add                  rbx,                    1
     cmp                  rbx,                  rsi
      jl     main.9.loop_body
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.10.loop_increment:
     add                  rbx,                    1
     cmp                  rbx,                  rsi
      jl     main.9.loop_body
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.11.loop_condition:
     cmp                  rbx,                  rsi
      jl     main.9.loop_body
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.12.loop_exit:
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.13.exit:
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
main.1.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
SECTION .data
SECTION .bss
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
