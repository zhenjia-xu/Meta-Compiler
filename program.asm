global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
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
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
    push                  r14
    push                  r15
     sub                  rsp,                  264
main.0.enter:
     mov     qword [rbp - 24],                10000
     mov     qword [rbp - 32],                    0
     mov     qword [rbp - 40],                 2800
     mov     qword [rbp - 48],                    0
     mov     qword [rbp - 56],                    0
     mov     qword [rbp - 64],                 2801
     add     qword [rbp - 64],                    1
     mov                  r15,     qword [rbp - 64]
    imul                  r15,                    8
     mov     qword [rbp - 64],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 64]
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 72],                  rax
     sub     qword [rbp - 64],                    8
     mov                  r14,     qword [rbp - 72]
     mov                  r15,     qword [rbp - 64]
     mov      qword [r14 - 0],                  r15
     add     qword [rbp - 72],                    8
     mov                  r15,     qword [rbp - 72]
     mov     qword [rbp - 80],                  r15
     mov     qword [rbp - 88],                    0
     jmp main.3.loop_condition
main.1.loop_body:
     mov                  r15,     qword [rbp - 32]
     mov     qword [rbp - 96],                  r15
     add     qword [rbp - 32],                    1
     mov                  r15,     qword [rbp - 96]
     mov    qword [rbp - 104],                  r15
     mov                  r15,    qword [rbp - 104]
    imul                  r15,                    8
     mov    qword [rbp - 104],                  r15
     mov                  r15,     qword [rbp - 80]
     mov    qword [rbp - 112],                  r15
     mov                  r15,    qword [rbp - 104]
     add    qword [rbp - 112],                  r15
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 120],                  r15
     mov                  rax,    qword [rbp - 120]
     mov                  r15,                    5
     mov                  rdx,                    0
     cqo
    idiv                  r15
     mov    qword [rbp - 120],                  rax
     mov                  r14,    qword [rbp - 112]
     mov                  r15,    qword [rbp - 120]
     mov      qword [r14 - 0],                  r15
     jmp main.2.loop_increment
main.2.loop_increment:
     jmp main.3.loop_condition
main.3.loop_condition:
     mov                  r15,     qword [rbp - 32]
     mov    qword [rbp - 128],                  r15
     mov                  r15,     qword [rbp - 40]
     sub    qword [rbp - 128],                  r15
     cmp    qword [rbp - 128],                    0
     mov                  r15,    qword [rbp - 136]
     mov                  r15,                    0
   setne                 r15b
     mov    qword [rbp - 136],                  r15
     cmp    qword [rbp - 136],                    1
      je     main.1.loop_body
     jmp     main.4.loop_exit
main.4.loop_exit:
     jmp main.17.loop_condition
main.5.loop_body:
     mov     qword [rbp - 48],                    0
     mov                  r15,     qword [rbp - 40]
     mov    qword [rbp - 144],                  r15
     mov                  r15,    qword [rbp - 144]
    imul                  r15,                    2
     mov    qword [rbp - 144],                  r15
     mov                  r15,    qword [rbp - 144]
     mov     qword [rbp - 88],                  r15
     cmp     qword [rbp - 88],                    0
     mov                  r15,    qword [rbp - 152]
     mov                  r15,                    0
    sete                 r15b
     mov    qword [rbp - 152],                  r15
     cmp    qword [rbp - 152],                    1
      je       main.6.if_true
     jmp      main.7.if_false
main.6.if_true:
     jmp    main.18.loop_exit
     jmp       main.8.if_exit
main.7.if_false:
     jmp       main.8.if_exit
main.8.if_exit:
     mov                  r15,     qword [rbp - 40]
     mov     qword [rbp - 32],                  r15
     jmp main.14.loop_condition
main.9.loop_body:
     mov                  r15,     qword [rbp - 32]
     mov    qword [rbp - 160],                  r15
     mov                  r15,    qword [rbp - 160]
    imul                  r15,                    8
     mov    qword [rbp - 160],                  r15
     mov                  r15,     qword [rbp - 80]
     mov    qword [rbp - 168],                  r15
     mov                  r15,    qword [rbp - 160]
     add    qword [rbp - 168],                  r15
     mov                  r14,    qword [rbp - 168]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 176],                  r15
     mov                  r15,    qword [rbp - 176]
    imul                  r15,     qword [rbp - 24]
     mov    qword [rbp - 176],                  r15
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 184],                  r15
     mov                  r15,    qword [rbp - 176]
     add    qword [rbp - 184],                  r15
     mov                  r15,    qword [rbp - 184]
     mov     qword [rbp - 48],                  r15
     mov                  r15,     qword [rbp - 32]
     mov    qword [rbp - 192],                  r15
     mov                  r15,    qword [rbp - 192]
    imul                  r15,                    8
     mov    qword [rbp - 192],                  r15
     mov                  r15,     qword [rbp - 80]
     mov    qword [rbp - 200],                  r15
     mov                  r15,    qword [rbp - 192]
     add    qword [rbp - 200],                  r15
     sub     qword [rbp - 88],                    1
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 208],                  r15
     mov                  rax,    qword [rbp - 208]
     mov                  r15,     qword [rbp - 88]
     mov                  rdx,                    0
     cqo
    idiv                  r15
     mov    qword [rbp - 208],                  rdx
     mov                  r14,    qword [rbp - 200]
     mov                  r15,    qword [rbp - 208]
     mov      qword [r14 - 0],                  r15
     mov                  r15,     qword [rbp - 88]
     mov    qword [rbp - 216],                  r15
     sub     qword [rbp - 88],                    1
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 224],                  r15
     mov                  rax,    qword [rbp - 224]
     mov                  r15,    qword [rbp - 216]
     mov                  rdx,                    0
     cqo
    idiv                  r15
     mov    qword [rbp - 224],                  rax
     mov                  r15,    qword [rbp - 224]
     mov     qword [rbp - 48],                  r15
     sub     qword [rbp - 32],                    1
     cmp     qword [rbp - 32],                    0
     mov                  r15,    qword [rbp - 232]
     mov                  r15,                    0
    sete                 r15b
     mov    qword [rbp - 232],                  r15
     cmp    qword [rbp - 232],                    1
      je      main.10.if_true
     jmp     main.11.if_false
main.10.if_true:
     jmp    main.15.loop_exit
     jmp      main.12.if_exit
main.11.if_false:
     jmp      main.12.if_exit
main.12.if_exit:
     jmp main.13.loop_increment
main.13.loop_increment:
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 240],                  r15
     mov                  r15,    qword [rbp - 240]
    imul                  r15,     qword [rbp - 32]
     mov    qword [rbp - 240],                  r15
     mov                  r15,    qword [rbp - 240]
     mov     qword [rbp - 48],                  r15
     jmp main.14.loop_condition
main.14.loop_condition:
     mov                  r15,                    1
     cmp                  r15,                    1
      je     main.9.loop_body
     jmp    main.15.loop_exit
main.15.loop_exit:
     mov                  r15,     qword [rbp - 40]
     mov    qword [rbp - 248],                  r15
     sub    qword [rbp - 248],                   14
     mov                  r15,    qword [rbp - 248]
     mov     qword [rbp - 40],                  r15
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 256],                  r15
     mov                  rax,    qword [rbp - 256]
     mov                  r15,     qword [rbp - 24]
     mov                  rdx,                    0
     cqo
    idiv                  r15
     mov    qword [rbp - 256],                  rax
     mov                  r15,     qword [rbp - 56]
     mov    qword [rbp - 264],                  r15
     mov                  r15,    qword [rbp - 256]
     add    qword [rbp - 264],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 264]
    call             toString
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 272],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 272]
    call                print
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     jmp main.16.loop_increment
main.16.loop_increment:
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 280],                  r15
     mov                  rax,    qword [rbp - 280]
     mov                  r15,     qword [rbp - 24]
     mov                  rdx,                    0
     cqo
    idiv                  r15
     mov    qword [rbp - 280],                  rdx
     mov                  r15,    qword [rbp - 280]
     mov     qword [rbp - 56],                  r15
     jmp main.17.loop_condition
main.17.loop_condition:
     mov                  r15,                    1
     cmp                  r15,                    1
      je     main.5.loop_body
     jmp    main.18.loop_exit
main.18.loop_exit:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,      __string_const0
    call                print
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rax,                    0
     jmp         main.19.exit
main.19.exit:
     add                  rsp,                  264
     pop                  r15
     pop                  r14
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
      dq                    6
__string_const0:
      db "", 34, "", 92, "", 10, "", 0
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
