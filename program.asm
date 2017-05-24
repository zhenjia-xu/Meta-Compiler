global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
Node.null:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
Node.null.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov                  rcx,      qword [rbp - 8]
     mov      qword [rcx - 0],                    1
Node.null.1.exit:
     add                  rsp,                    8
     pop                  rbp
     ret
work:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
work.0.enter:
     mov      qword [rbp - 8],                   11
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 16],                  rax
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 24]
    imul                  rax,                    8
     mov     qword [rbp - 24],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 24]
     add     qword [rbp - 32],                  rax
     mov                  rcx,     qword [rbp - 32]
     mov                  rdi,      qword [rcx - 0]
     mov                  rsi,      qword [rbp - 8]
     sub                  rsp,                    8
    call            Node.work
     add                  rsp,                    8
     mov     qword [rbp - 40],                  rax
     jmp          work.1.exit
work.1.exit:
     add                  rsp,                   40
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   88
@GlobalDeclaration.0.enter:
     mov      qword [rbp - 8],                  723
     add      qword [rbp - 8],                    1
     mov                  rax,      qword [rbp - 8]
    imul                  rax,                    8
     mov      qword [rbp - 8],                  rax
     mov                  rdi,      qword [rbp - 8]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov     qword [rbp - 16],                  rax
     sub      qword [rbp - 8],                    8
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                  723
     add     qword [rbp - 16],                    8
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 32],                  rax
     mov                  rax,      qword [rbp - 8]
     add     qword [rbp - 32],                  rax
     jmp @GlobalDeclaration.2.allocate_condition
@GlobalDeclaration.1.allocate_body:
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rdi,                    8
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov     qword [rbp - 40],                  rax
     mov                  rdi,     qword [rbp - 40]
     sub                  rsp,                    8
    call            Node.null
     add                  rsp,                    8
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,     qword [rbp - 40]
     mov      qword [rcx - 0],                  rax
     add     qword [rbp - 24],                    8
     jmp @GlobalDeclaration.2.allocate_condition
@GlobalDeclaration.2.allocate_condition:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,     qword [rbp - 32]
      jl @GlobalDeclaration.1.allocate_body
     jmp @GlobalDeclaration.3.allocate_exit
@GlobalDeclaration.3.allocate_exit:
     mov                  rax,     qword [rbp - 16]
     mov       qword [@a - 0],                  rax
     mov       qword [@b - 0],                    0
     mov     qword [@str - 0],      __string_const0
     mov     qword [rbp - 48],                  153
     add     qword [rbp - 48],                    1
     mov                  rax,     qword [rbp - 48]
    imul                  rax,                    8
     mov     qword [rbp - 48],                  rax
     mov                  rdi,     qword [rbp - 48]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov     qword [rbp - 56],                  rax
     sub     qword [rbp - 48],                    8
     mov                  rcx,     qword [rbp - 56]
     mov      qword [rcx - 0],                  153
     add     qword [rbp - 56],                    8
     mov                  rax,     qword [rbp - 56]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 56]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 72],                  rax
     jmp @GlobalDeclaration.5.allocate_condition
@GlobalDeclaration.4.allocate_body:
     mov                  rcx,     qword [rbp - 64]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 80],                  rax
     mov     qword [rbp - 88],                  144
     add     qword [rbp - 88],                    1
     mov                  rax,     qword [rbp - 88]
    imul                  rax,                    8
     mov     qword [rbp - 88],                  rax
     mov                  rdi,     qword [rbp - 88]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov     qword [rbp - 80],                  rax
     sub     qword [rbp - 88],                    8
     mov                  rcx,     qword [rbp - 80]
     mov      qword [rcx - 0],                  144
     add     qword [rbp - 80],                    8
     mov                  rcx,     qword [rbp - 64]
     mov                  rax,     qword [rbp - 80]
     mov      qword [rcx - 0],                  rax
     add     qword [rbp - 64],                    8
     jmp @GlobalDeclaration.5.allocate_condition
@GlobalDeclaration.5.allocate_condition:
     mov                  rax,     qword [rbp - 64]
     cmp                  rax,     qword [rbp - 72]
      jl @GlobalDeclaration.4.allocate_body
     jmp @GlobalDeclaration.6.allocate_exit
@GlobalDeclaration.6.allocate_exit:
     mov                  rax,     qword [rbp - 56]
     mov     qword [@map - 0],                  rax
@GlobalDeclaration.7.exit:
     add                  rsp,                   88
     pop                  rbp
     ret
Node.work:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
Node.work.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                  rsi
     mov     qword [rbp - 24],                   10
     jmp Node.work.3.loop_condition
Node.work.1.loop_body:
     mov                  rax,      qword [rbp - 8]
     jmp     Node.work.5.exit
Node.work.2.loop_increment:
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 32],                  rax
     add     qword [rbp - 24],                    1
     jmp Node.work.3.loop_condition
Node.work.3.loop_condition:
     mov                  rcx,      qword [rbp - 8]
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,      qword [rcx - 0]
     mov                  rax,     qword [rbp - 40]
     mov                  rax,                    0
   setle                   al
     mov     qword [rbp - 40],                  rax
     cmp     qword [rbp - 40],                    1
      je Node.work.1.loop_body
     jmp Node.work.4.loop_exit
Node.work.4.loop_exit:
     mov                  rax,      qword [rbp - 8]
     jmp     Node.work.5.exit
Node.work.5.exit:
     add                  rsp,                   40
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                  168
main.0.enter:
     mov      qword [rbp - 8],                10213
     mov     qword [rbp - 16],                    0
     jmp main.12.loop_condition
main.1.loop_body:
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 24]
    imul                  rax,     qword [rbp - 16]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 32],                  rax
     sub     qword [rbp - 32],                   13
     mov                  rax,     qword [rbp - 32]
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 48]
    imul                  rax,                    8
     mov     qword [rbp - 48],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 56],                  rax
     mov                  rcx,     qword [rbp - 56]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 64],                  rax
     mov                  rcx,     qword [rbp - 64]
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,      qword [rcx - 0]
     mov                  rax,     qword [rbp - 72]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 72],                  rax
     cmp     qword [rbp - 72],                    1
      je       main.2.if_true
     jmp      main.3.if_false
main.2.if_true:
     jmp      main.10.if_exit
main.3.if_false:
     mov                  rax,                    0
     cmp                  rax,                    1
      je       main.4.if_true
     jmp      main.5.if_false
main.4.if_true:
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 80],                  rax
     sub     qword [rbp - 80],                    1
     mov                  rax,     qword [rbp - 80]
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 88]
    imul                  rax,                    8
     mov     qword [rbp - 88],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 88]
     add     qword [rbp - 96],                  rax
     mov                  rcx,     qword [rbp - 96]
     mov                  rdi,      qword [rcx - 0]
     mov                  rsi,     qword [rbp - 40]
     sub                  rsp,                    8
    call            Node.work
     add                  rsp,                    8
     mov    qword [rbp - 104],                  rax
     jmp    main.13.loop_exit
main.5.if_false:
     mov                  rax,                    1
     cmp                  rax,                    1
      je       main.6.if_true
     jmp      main.7.if_false
main.6.if_true:
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 112]
    imul                  rax,                    8
     mov    qword [rbp - 112],                  rax
     mov                  rax,       qword [@a - 0]
     mov    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 112]
     add    qword [rbp - 120],                  rax
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 128],                  rax
     add    qword [rbp - 128],                    1
     mov                  rax,    qword [rbp - 128]
     mov    qword [rbp - 136],                  rax
     mov                  rax,    qword [rbp - 136]
    imul                  rax,                    8
     mov    qword [rbp - 136],                  rax
     mov                  rax,       qword [@a - 0]
     mov    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 136]
     add    qword [rbp - 144],                  rax
     mov                  rcx,    qword [rbp - 144]
     mov                  rdi,      qword [rcx - 0]
     mov                  rsi,     qword [rbp - 40]
     sub                  rsp,                    8
    call            Node.work
     add                  rsp,                    8
     mov    qword [rbp - 152],                  rax
     mov                  rcx,    qword [rbp - 120]
     mov                  rax,    qword [rbp - 152]
     mov      qword [rcx - 0],                  rax
     sub                  rsp,                    8
    call                 work
     add                  rsp,                    8
     jmp main.11.loop_increment
main.7.if_false:
     jmp       main.8.if_exit
main.8.if_exit:
     jmp       main.9.if_exit
main.9.if_exit:
     jmp      main.10.if_exit
main.10.if_exit:
     jmp main.11.loop_increment
main.11.loop_increment:
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 160],                  rax
     add     qword [rbp - 16],                    1
     jmp main.12.loop_condition
main.12.loop_condition:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,      qword [rbp - 8]
     mov                  rax,    qword [rbp - 168]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 168],                  rax
     cmp    qword [rbp - 168],                    1
      je     main.1.loop_body
     jmp    main.13.loop_exit
main.13.loop_exit:
     mov                  rax,                    0
     jmp         main.14.exit
main.14.exit:
     add                  rsp,                  168
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
      dq                   12
__string_const0:
      db    "19asdojkhkj1", 0
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
@a:
    resq                    1
@b:
    resq                    1
@str:
    resq                    1
@map:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
