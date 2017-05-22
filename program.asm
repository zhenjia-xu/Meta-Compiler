global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
h:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                   88
h.0.enter:
     cmp                  rdi,                    0
     mov                  r15,     qword [rbp - 24]
     mov                  r15,                    0
    sete                 r15b
     mov     qword [rbp - 24],                  r15
     cmp     qword [rbp - 24],                    1
      je     h.2.logical_true
     jmp    h.1.logical_false
h.1.logical_false:
     cmp                  rdi,                    1
     mov                  r15,     qword [rbp - 32]
     mov                  r15,                    0
    sete                 r15b
     mov     qword [rbp - 32],                  r15
     mov                  r15,     qword [rbp - 32]
     mov     qword [rbp - 40],                  r15
     jmp     h.3.logical_exit
h.2.logical_true:
     mov     qword [rbp - 40],                    1
     jmp     h.3.logical_exit
h.3.logical_exit:
     cmp     qword [rbp - 40],                    1
      je          h.4.if_true
     jmp         h.5.if_false
h.4.if_true:
     mov                  rax,                    1
     jmp            h.11.exit
     jmp          h.6.if_exit
h.5.if_false:
     jmp          h.6.if_exit
h.6.if_exit:
     mov     qword [rbp - 48],                    0
     mov     qword [rbp - 56],                    0
     jmp   h.9.loop_condition
h.7.loop_body:
    push                  rdi
    push                  rsi
     mov                  rdi,     qword [rbp - 56]
     sub                  rsp,                    8
    call                    h
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov     qword [rbp - 64],                  rdi
     sub     qword [rbp - 64],                    1
     mov                  r15,     qword [rbp - 64]
     mov     qword [rbp - 72],                  r15
     mov                  r15,     qword [rbp - 56]
     sub     qword [rbp - 72],                  r15
    push                  rdi
    push                  rsi
     mov                  rdi,     qword [rbp - 72]
     sub                  rsp,                    8
    call                    h
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov     qword [rbp - 80],                  rax
     mov                  r15,     qword [rbp - 80]
    imul                  r15,                  rax
     mov     qword [rbp - 80],                  r15
     mov                  r15,     qword [rbp - 48]
     mov     qword [rbp - 88],                  r15
     mov                  r15,     qword [rbp - 80]
     add     qword [rbp - 88],                  r15
     mov                  r15,     qword [rbp - 88]
     mov     qword [rbp - 48],                  r15
     jmp   h.8.loop_increment
h.8.loop_increment:
     mov                  r15,     qword [rbp - 56]
     mov     qword [rbp - 96],                  r15
     add     qword [rbp - 56],                    1
     jmp   h.9.loop_condition
h.9.loop_condition:
     cmp     qword [rbp - 56],                  rdi
     mov                  r15,    qword [rbp - 104]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 104],                  r15
     cmp    qword [rbp - 104],                    1
      je        h.7.loop_body
     jmp       h.10.loop_exit
h.10.loop_exit:
     mov                  rax,     qword [rbp - 48]
     jmp            h.11.exit
h.11.exit:
     add                  rsp,                   88
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
    push                  r14
    push                  r15
     sub                  rsp,                    8
main.0.enter:
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov     qword [rbp - 24],                  rax
    push                  rdi
    push                  rsi
     mov                  rdi,     qword [rbp - 24]
     sub                  rsp,                    8
    call                    h
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
    push                  rdi
    push                  rsi
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
    push                  rdi
    push                  rsi
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rax,                    0
     jmp          main.1.exit
main.1.exit:
     add                  rsp,                    8
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
printInt:
    push                  rax
    push                  rcx
     mov                  rsi,                  rdi
     mov                  rdi,     __printIntFormat
     xor                  rax,                  rax
    call               printf
     pop                  rcx
     pop                  rax
     ret
print:
    push                  rax
    push                  rcx
     mov                  rsi,                  rdi
     mov                  rdi,        __printFormat
     xor                  rax,                  rax
    call               printf
     pop                  rcx
     pop                  rax
     ret
println:
    push                  rax
    push                  rcx
     mov                  rsi,                  rdi
     mov                  rdi,      __printlnFormat
     xor                  rax,                  rax
    call               printf
     pop                  rcx
     pop                  rax
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
SECTION .data
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
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
