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
     sub                  rsp,                  416
main.0.enter:
     mov     qword [rbp - 24],                  100
     add     qword [rbp - 24],                    1
     mov                  r15,     qword [rbp - 24]
    imul                  r15,                    8
     mov     qword [rbp - 24],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 24]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 32],                  rax
     sub     qword [rbp - 24],                    8
     mov                  r14,     qword [rbp - 32]
     mov                  r15,     qword [rbp - 24]
     mov      qword [r14 - 0],                  r15
     add     qword [rbp - 32],                    8
     mov                  r15,     qword [rbp - 32]
     mov     qword [rbp - 40],                  r15
     mov     qword [rbp - 48],                    0
     jmp main.3.loop_condition
main.1.loop_body:
     mov                  r15,     qword [rbp - 48]
     mov     qword [rbp - 56],                  r15
     mov                  r15,     qword [rbp - 56]
    imul                  r15,                    8
     mov     qword [rbp - 56],                  r15
     mov                  r15,     qword [rbp - 40]
     mov     qword [rbp - 64],                  r15
     mov                  r15,     qword [rbp - 56]
     add     qword [rbp - 64],                  r15
     mov     qword [rbp - 72],                  100
     add     qword [rbp - 72],                    1
     mov                  r15,     qword [rbp - 72]
    imul                  r15,                    8
     mov     qword [rbp - 72],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 72]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 80],                  rax
     sub     qword [rbp - 72],                    8
     mov                  r14,     qword [rbp - 80]
     mov                  r15,     qword [rbp - 72]
     mov      qword [r14 - 0],                  r15
     add     qword [rbp - 80],                    8
     mov                  r14,     qword [rbp - 64]
     mov                  r15,     qword [rbp - 80]
     mov      qword [r14 - 0],                  r15
     jmp main.2.loop_increment
main.2.loop_increment:
     mov                  r15,     qword [rbp - 48]
     mov     qword [rbp - 88],                  r15
     add     qword [rbp - 48],                    1
     jmp main.3.loop_condition
main.3.loop_condition:
     cmp     qword [rbp - 48],                  100
     mov                  r15,     qword [rbp - 96]
     mov                  r15,                    0
    setl                 r15b
     mov     qword [rbp - 96],                  r15
     cmp     qword [rbp - 96],                    1
      je     main.1.loop_body
     jmp     main.4.loop_exit
main.4.loop_exit:
     mov    qword [rbp - 104],                    0
     mov     qword [rbp - 48],                    0
     jmp main.11.loop_condition
main.5.loop_body:
     mov    qword [rbp - 112],                    0
     jmp main.8.loop_condition
main.6.loop_body:
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 120],                  r15
     mov                  r15,    qword [rbp - 120]
    imul                  r15,                    8
     mov    qword [rbp - 120],                  r15
     mov                  r15,     qword [rbp - 40]
     mov    qword [rbp - 128],                  r15
     mov                  r15,    qword [rbp - 120]
     add    qword [rbp - 128],                  r15
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 136],                  r15
     mov                  r15,    qword [rbp - 136]
    imul                  r15,                    8
     mov    qword [rbp - 136],                  r15
     mov                  r14,    qword [rbp - 128]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 144],                  r15
     mov                  r15,    qword [rbp - 136]
     add    qword [rbp - 144],                  r15
     mov                  r14,    qword [rbp - 144]
     mov      qword [r14 - 0],                    0
     jmp main.7.loop_increment
main.7.loop_increment:
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 152],                  r15
     add    qword [rbp - 112],                    1
     jmp main.8.loop_condition
main.8.loop_condition:
     cmp    qword [rbp - 112],                  100
     mov                  r15,    qword [rbp - 160]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 160],                  r15
     cmp    qword [rbp - 160],                    1
      je     main.6.loop_body
     jmp     main.9.loop_exit
main.9.loop_exit:
     jmp main.10.loop_increment
main.10.loop_increment:
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 168],                  r15
     add     qword [rbp - 48],                    1
     jmp main.11.loop_condition
main.11.loop_condition:
     cmp     qword [rbp - 48],                  100
     mov                  r15,    qword [rbp - 176]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 176],                  r15
     cmp    qword [rbp - 176],                    1
      je     main.5.loop_body
     jmp    main.12.loop_exit
main.12.loop_exit:
     mov     qword [rbp - 48],                    0
     jmp main.31.loop_condition
main.13.loop_body:
     cmp     qword [rbp - 48],                   20
     mov                  r15,    qword [rbp - 184]
     mov                  r15,                    0
    setg                 r15b
     mov    qword [rbp - 184],                  r15
     cmp    qword [rbp - 184],                    1
      je main.15.logical_true
     jmp main.14.logical_false
main.14.logical_false:
     mov    qword [rbp - 192],                    0
     jmp main.16.logical_exit
main.15.logical_true:
     cmp     qword [rbp - 48],                   80
     mov                  r15,    qword [rbp - 200]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 200],                  r15
     mov                  r15,    qword [rbp - 200]
     mov    qword [rbp - 192],                  r15
     jmp main.16.logical_exit
main.16.logical_exit:
     cmp    qword [rbp - 192],                    1
      je      main.17.if_true
     jmp     main.28.if_false
main.17.if_true:
     mov    qword [rbp - 112],                    0
     jmp main.26.loop_condition
main.18.loop_body:
     cmp    qword [rbp - 112],                    5
     mov                  r15,    qword [rbp - 208]
     mov                  r15,                    0
    setg                 r15b
     mov    qword [rbp - 208],                  r15
     cmp    qword [rbp - 208],                    1
      je main.20.logical_true
     jmp main.19.logical_false
main.19.logical_false:
     cmp     qword [rbp - 48],                   90
     mov                  r15,    qword [rbp - 216]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 216],                  r15
     mov                  r15,    qword [rbp - 216]
     mov    qword [rbp - 224],                  r15
     jmp main.21.logical_exit
main.20.logical_true:
     mov    qword [rbp - 224],                    1
     jmp main.21.logical_exit
main.21.logical_exit:
     cmp    qword [rbp - 224],                    1
      je      main.22.if_true
     jmp     main.23.if_false
main.22.if_true:
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 232],                  r15
     mov                  r15,    qword [rbp - 232]
    imul                  r15,                    4
     mov    qword [rbp - 232],                  r15
     mov                  r15,    qword [rbp - 232]
     mov    qword [rbp - 240],                  r15
     mov                  rax,    qword [rbp - 240]
     mov                  r15,                  100
     mov                  rdx,                    0
     cqo
    idiv                  r15
     mov    qword [rbp - 240],                  rax
     mov                  r15,    qword [rbp - 240]
     mov    qword [rbp - 248],                  r15
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 256],                  r15
     mov                  r15,    qword [rbp - 256]
    imul                  r15,                    4
     mov    qword [rbp - 256],                  r15
     mov                  r15,    qword [rbp - 256]
     mov    qword [rbp - 264],                  r15
     mov                  rax,    qword [rbp - 264]
     mov                  r15,                  100
     mov                  rdx,                    0
     cqo
    idiv                  r15
     mov    qword [rbp - 264],                  rdx
     mov                  r15,    qword [rbp - 264]
     mov    qword [rbp - 272],                  r15
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 280],                  r15
     mov                  r15,    qword [rbp - 248]
     add    qword [rbp - 280],                  r15
     mov                  r15,    qword [rbp - 280]
     mov    qword [rbp - 288],                  r15
     mov                  r15,    qword [rbp - 288]
    imul                  r15,                    8
     mov    qword [rbp - 288],                  r15
     mov                  r15,     qword [rbp - 40]
     mov    qword [rbp - 296],                  r15
     mov                  r15,    qword [rbp - 288]
     add    qword [rbp - 296],                  r15
     mov                  r15,    qword [rbp - 272]
     mov    qword [rbp - 304],                  r15
     mov                  r15,    qword [rbp - 304]
    imul                  r15,                    8
     mov    qword [rbp - 304],                  r15
     mov                  r14,    qword [rbp - 296]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 312],                  r15
     mov                  r15,    qword [rbp - 304]
     add    qword [rbp - 312],                  r15
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 320],                  r15
     add    qword [rbp - 320],                   50
     mov                  r14,    qword [rbp - 312]
     mov                  r15,    qword [rbp - 320]
     mov      qword [r14 - 0],                  r15
     jmp      main.24.if_exit
main.23.if_false:
     jmp      main.24.if_exit
main.24.if_exit:
     jmp main.25.loop_increment
main.25.loop_increment:
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 328],                  r15
     add    qword [rbp - 112],                    1
     jmp main.26.loop_condition
main.26.loop_condition:
     cmp    qword [rbp - 112],                  100
     mov                  r15,    qword [rbp - 336]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 336],                  r15
     cmp    qword [rbp - 336],                    1
      je    main.18.loop_body
     jmp    main.27.loop_exit
main.27.loop_exit:
     jmp      main.29.if_exit
main.28.if_false:
     jmp      main.29.if_exit
main.29.if_exit:
     jmp main.30.loop_increment
main.30.loop_increment:
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 344],                  r15
     add     qword [rbp - 48],                    1
     jmp main.31.loop_condition
main.31.loop_condition:
     cmp     qword [rbp - 48],                  100
     mov                  r15,    qword [rbp - 352]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 352],                  r15
     cmp    qword [rbp - 352],                    1
      je    main.13.loop_body
     jmp    main.32.loop_exit
main.32.loop_exit:
     mov     qword [rbp - 48],                    0
     jmp main.39.loop_condition
main.33.loop_body:
     mov    qword [rbp - 112],                    0
     jmp main.36.loop_condition
main.34.loop_body:
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 360],                  r15
     mov                  r15,    qword [rbp - 360]
    imul                  r15,                    8
     mov    qword [rbp - 360],                  r15
     mov                  r15,     qword [rbp - 40]
     mov    qword [rbp - 368],                  r15
     mov                  r15,    qword [rbp - 360]
     add    qword [rbp - 368],                  r15
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 376],                  r15
     mov                  r15,    qword [rbp - 376]
    imul                  r15,                    8
     mov    qword [rbp - 376],                  r15
     mov                  r14,    qword [rbp - 368]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 384],                  r15
     mov                  r15,    qword [rbp - 376]
     add    qword [rbp - 384],                  r15
     mov                  r15,    qword [rbp - 104]
     mov    qword [rbp - 392],                  r15
     mov                  r14,    qword [rbp - 384]
     mov                  r15,      qword [r14 - 0]
     add    qword [rbp - 392],                  r15
     mov                  r15,    qword [rbp - 392]
     mov    qword [rbp - 104],                  r15
     jmp main.35.loop_increment
main.35.loop_increment:
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 400],                  r15
     add    qword [rbp - 112],                    1
     jmp main.36.loop_condition
main.36.loop_condition:
     cmp    qword [rbp - 112],                  100
     mov                  r15,    qword [rbp - 408]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 408],                  r15
     cmp    qword [rbp - 408],                    1
      je    main.34.loop_body
     jmp    main.37.loop_exit
main.37.loop_exit:
     jmp main.38.loop_increment
main.38.loop_increment:
     mov                  r15,     qword [rbp - 48]
     mov    qword [rbp - 416],                  r15
     add     qword [rbp - 48],                    1
     jmp main.39.loop_condition
main.39.loop_condition:
     cmp     qword [rbp - 48],                  100
     mov                  r15,    qword [rbp - 424]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 424],                  r15
     cmp    qword [rbp - 424],                    1
      je    main.33.loop_body
     jmp    main.40.loop_exit
main.40.loop_exit:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 104]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 432],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 432]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rax,                    0
     jmp         main.41.exit
main.41.exit:
     add                  rsp,                  416
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
