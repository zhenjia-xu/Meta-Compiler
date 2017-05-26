global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                  360
main.0.enter:
     mov      qword [rbp - 8],                  100
     add      qword [rbp - 8],                    1
     mov                  rax,      qword [rbp - 8]
    imul                  rax,                    8
     mov      qword [rbp - 8],                  rax
    push                  rdi
     mov                  rdi,      qword [rbp - 8]
    call               malloc
     pop                  rdi
     mov     qword [rbp - 16],                  rax
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                  100
     add     qword [rbp - 16],                    8
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 24],                  rax
     mov     qword [rbp - 32],                    0
     jmp main.3.loop_condition
main.1.loop_body:
     mov                  rax,     qword [rbp - 32]
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 40]
    imul                  rax,                    8
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 40]
     add     qword [rbp - 48],                  rax
     mov     qword [rbp - 56],                  100
     add     qword [rbp - 56],                    1
     mov                  rax,     qword [rbp - 56]
    imul                  rax,                    8
     mov     qword [rbp - 56],                  rax
    push                  rdi
     mov                  rdi,     qword [rbp - 56]
    call               malloc
     pop                  rdi
     mov     qword [rbp - 64],                  rax
     mov                  rcx,     qword [rbp - 64]
     mov      qword [rcx - 0],                  100
     add     qword [rbp - 64],                    8
     mov                  rcx,     qword [rbp - 48]
     mov                  rax,     qword [rbp - 64]
     mov      qword [rcx - 0],                  rax
     jmp main.2.loop_increment
main.2.loop_increment:
     add     qword [rbp - 32],                    1
     jmp main.3.loop_condition
main.3.loop_condition:
     cmp     qword [rbp - 32],                  100
     mov                  rax,     qword [rbp - 72]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 72],                  rax
     cmp     qword [rbp - 72],                    1
      je     main.1.loop_body
     jmp     main.4.loop_exit
main.4.loop_exit:
     mov     qword [rbp - 80],                    0
     mov     qword [rbp - 32],                    0
     jmp main.11.loop_condition
main.5.loop_body:
     mov     qword [rbp - 88],                    0
     jmp main.8.loop_condition
main.6.loop_body:
     mov                  rax,     qword [rbp - 32]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
    imul                  rax,                    8
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 104],                  rax
     mov                  rax,     qword [rbp - 96]
     add    qword [rbp - 104],                  rax
     mov                  rax,     qword [rbp - 88]
     mov    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 112]
    imul                  rax,                    8
     mov    qword [rbp - 112],                  rax
     mov                  rcx,    qword [rbp - 104]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 112]
     add    qword [rbp - 120],                  rax
     mov                  rcx,    qword [rbp - 120]
     mov      qword [rcx - 0],                    0
     jmp main.7.loop_increment
main.7.loop_increment:
     add     qword [rbp - 88],                    1
     jmp main.8.loop_condition
main.8.loop_condition:
     cmp     qword [rbp - 88],                  100
     mov                  rax,    qword [rbp - 128]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 128],                  rax
     cmp    qword [rbp - 128],                    1
      je     main.6.loop_body
     jmp     main.9.loop_exit
main.9.loop_exit:
     jmp main.10.loop_increment
main.10.loop_increment:
     add     qword [rbp - 32],                    1
     jmp main.11.loop_condition
main.11.loop_condition:
     cmp     qword [rbp - 32],                  100
     mov                  rax,    qword [rbp - 136]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 136],                  rax
     cmp    qword [rbp - 136],                    1
      je     main.5.loop_body
     jmp    main.12.loop_exit
main.12.loop_exit:
     mov     qword [rbp - 32],                    0
     jmp main.31.loop_condition
main.13.loop_body:
     cmp     qword [rbp - 32],                   20
     mov                  rax,    qword [rbp - 144]
     mov                  rax,                    0
    setg                   al
     mov    qword [rbp - 144],                  rax
     cmp    qword [rbp - 144],                    1
     jne main.15.logical_false
     jmp main.14.logical_true
main.14.logical_true:
     cmp     qword [rbp - 32],                   80
     mov                  rax,    qword [rbp - 152]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp - 152]
     mov    qword [rbp - 160],                  rax
     jmp main.16.logical_exit
main.15.logical_false:
     mov    qword [rbp - 160],                    0
     jmp main.16.logical_exit
main.16.logical_exit:
     cmp    qword [rbp - 160],                    1
      je      main.17.if_true
     jmp     main.28.if_false
main.17.if_true:
     mov     qword [rbp - 88],                    0
     jmp main.26.loop_condition
main.18.loop_body:
     cmp     qword [rbp - 88],                    5
     mov                  rax,    qword [rbp - 168]
     mov                  rax,                    0
    setg                   al
     mov    qword [rbp - 168],                  rax
     cmp    qword [rbp - 168],                    1
      je main.20.logical_true
     jmp main.19.logical_false
main.19.logical_false:
     cmp     qword [rbp - 32],                   90
     mov                  rax,    qword [rbp - 176]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 176]
     mov    qword [rbp - 184],                  rax
     jmp main.21.logical_exit
main.20.logical_true:
     mov    qword [rbp - 184],                    1
     jmp main.21.logical_exit
main.21.logical_exit:
     cmp    qword [rbp - 184],                    1
      je      main.22.if_true
     jmp     main.23.if_false
main.22.if_true:
     mov                  rax,     qword [rbp - 88]
     mov    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp - 192]
    imul                  rax,                    4
     mov    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp - 192]
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 200]
     mov                  rcx,                  100
     cqo
    idiv                  rcx
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 200]
     mov    qword [rbp - 208],                  rax
     mov                  rax,     qword [rbp - 88]
     mov    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp - 216]
    imul                  rax,                    4
     mov    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp - 216]
     mov    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp - 224]
     mov                  rcx,                  100
     cqo
    idiv                  rcx
     mov    qword [rbp - 224],                  rdx
     mov                  rax,    qword [rbp - 224]
     mov    qword [rbp - 232],                  rax
     mov                  rax,     qword [rbp - 32]
     mov    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp - 208]
     add    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp - 240]
     mov    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp - 248]
    imul                  rax,                    8
     mov    qword [rbp - 248],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp - 248]
     add    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp - 232]
     mov    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp - 264]
    imul                  rax,                    8
     mov    qword [rbp - 264],                  rax
     mov                  rcx,    qword [rbp - 256]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 264]
     add    qword [rbp - 272],                  rax
     mov                  rax,     qword [rbp - 88]
     mov    qword [rbp - 280],                  rax
     add    qword [rbp - 280],                   50
     mov                  rcx,    qword [rbp - 272]
     mov                  rax,    qword [rbp - 280]
     mov      qword [rcx - 0],                  rax
     jmp      main.24.if_exit
main.23.if_false:
     jmp      main.24.if_exit
main.24.if_exit:
     jmp main.25.loop_increment
main.25.loop_increment:
     add     qword [rbp - 88],                    1
     jmp main.26.loop_condition
main.26.loop_condition:
     cmp     qword [rbp - 88],                  100
     mov                  rax,    qword [rbp - 288]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 288],                  rax
     cmp    qword [rbp - 288],                    1
      je    main.18.loop_body
     jmp    main.27.loop_exit
main.27.loop_exit:
     jmp      main.29.if_exit
main.28.if_false:
     jmp      main.29.if_exit
main.29.if_exit:
     jmp main.30.loop_increment
main.30.loop_increment:
     add     qword [rbp - 32],                    1
     jmp main.31.loop_condition
main.31.loop_condition:
     cmp     qword [rbp - 32],                  100
     mov                  rax,    qword [rbp - 296]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 296],                  rax
     cmp    qword [rbp - 296],                    1
      je    main.13.loop_body
     jmp    main.32.loop_exit
main.32.loop_exit:
     mov     qword [rbp - 32],                    0
     jmp main.39.loop_condition
main.33.loop_body:
     mov     qword [rbp - 88],                    0
     jmp main.36.loop_condition
main.34.loop_body:
     mov                  rax,     qword [rbp - 32]
     mov    qword [rbp - 304],                  rax
     mov                  rax,    qword [rbp - 304]
    imul                  rax,                    8
     mov    qword [rbp - 304],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 312],                  rax
     mov                  rax,    qword [rbp - 304]
     add    qword [rbp - 312],                  rax
     mov                  rax,     qword [rbp - 88]
     mov    qword [rbp - 320],                  rax
     mov                  rax,    qword [rbp - 320]
    imul                  rax,                    8
     mov    qword [rbp - 320],                  rax
     mov                  rcx,    qword [rbp - 312]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 328],                  rax
     mov                  rax,    qword [rbp - 320]
     add    qword [rbp - 328],                  rax
     mov                  rax,     qword [rbp - 80]
     mov    qword [rbp - 336],                  rax
     mov                  rcx,    qword [rbp - 328]
     mov                  rax,      qword [rcx - 0]
     add    qword [rbp - 336],                  rax
     mov                  rax,    qword [rbp - 336]
     mov     qword [rbp - 80],                  rax
     jmp main.35.loop_increment
main.35.loop_increment:
     add     qword [rbp - 88],                    1
     jmp main.36.loop_condition
main.36.loop_condition:
     cmp     qword [rbp - 88],                  100
     mov                  rax,    qword [rbp - 344]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 344],                  rax
     cmp    qword [rbp - 344],                    1
      je    main.34.loop_body
     jmp    main.37.loop_exit
main.37.loop_exit:
     jmp main.38.loop_increment
main.38.loop_increment:
     add     qword [rbp - 32],                    1
     jmp main.39.loop_condition
main.39.loop_condition:
     cmp     qword [rbp - 32],                  100
     mov                  rax,    qword [rbp - 352]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 352],                  rax
     cmp    qword [rbp - 352],                    1
      je    main.33.loop_body
     jmp    main.40.loop_exit
main.40.loop_exit:
     mov                  rdi,     qword [rbp - 80]
    push                  rdi
    call             toString
     pop                  rdi
     mov    qword [rbp - 360],                  rax
     mov                  rdi,    qword [rbp - 360]
    push                  rdi
    call              println
     pop                  rdi
     mov                  rax,                    0
     jmp         main.41.exit
main.41.exit:
     add                  rsp,                  360
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
