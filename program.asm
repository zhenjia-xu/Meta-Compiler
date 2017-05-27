global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
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
     sub                  rsp,                  792
main.0.enter:
     sub                  rsp,                    8
    call            getString
     add                  rsp,                    8
     mov     qword [rbp - 16],                  rax
     mov                  rax,     qword [rbp - 16]
     mov       qword [@A - 0],                  rax
     sub                  rsp,                    8
    call            getString
     add                  rsp,                    8
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 40]
     mov       qword [@B - 0],                  rax
     mov                  rdi,       qword [@B - 0]
     sub                  rsp,                    8
    call    __string_parseInt
     add                  rsp,                    8
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 80]
     mov       qword [@N - 0],                  rax
     mov                  rdi,       qword [@A - 0]
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 120]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 136]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 136],                  rax
     cmp    qword [rbp - 136],                    1
      je       main.1.if_true
     jmp      main.2.if_false
main.1.if_true:
     mov                  rdi,      __string_const0
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.4.exit
main.2.if_false:
     jmp       main.3.if_exit
main.3.if_exit:
     mov                  rax,       qword [@N - 0]
     mov    qword [rbp - 152],                  rax
     sub    qword [rbp - 152],                    1
     mov                  rdi,       qword [@A - 0]
     mov                  rsi,                    0
     mov                  rdx,    qword [rbp - 152]
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     mov    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp - 208]
     mov    qword [rbp - 216],                  rax
     jmp         main.5.enter
main.5.enter:
     mov                  rdi,    qword [rbp - 216]
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp - 240]
     mov    qword [rbp - 248],                  rax
     mov                  rax,                    1
     cmp                  rax,    qword [rbp - 248]
     mov                  rax,    qword [rbp - 256]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 256],                  rax
     cmp    qword [rbp - 256],                    1
      je       main.6.if_true
     jmp      main.7.if_false
main.6.if_true:
     mov                  rax,    qword [rbp - 216]
     jmp         main.21.exit
main.7.if_false:
     jmp       main.8.if_exit
main.8.if_exit:
     mov                  rax,    qword [rbp - 248]
     mov    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp - 264]
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp - 264]
     mov    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 272]
     mov    qword [rbp - 280],                  rax
     sub    qword [rbp - 280],                    1
     mov                  rdi,    qword [rbp - 216]
     mov                  rsi,                    0
     mov                  rdx,    qword [rbp - 280]
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     mov    qword [rbp - 320],                  rax
     mov                  rdi,    qword [rbp - 320]
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     mov    qword [rbp - 344],                  rax
     mov                  rax,    qword [rbp - 344]
     mov    qword [rbp - 352],                  rax
     mov                  rax,    qword [rbp - 248]
     mov    qword [rbp - 360],                  rax
     sub    qword [rbp - 360],                    1
     mov                  rdi,    qword [rbp - 216]
     mov                  rsi,    qword [rbp - 272]
     mov                  rdx,    qword [rbp - 360]
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     mov    qword [rbp - 400],                  rax
     mov                  rdi,    qword [rbp - 400]
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     mov    qword [rbp - 424],                  rax
     mov                  rax,    qword [rbp - 424]
     mov    qword [rbp - 432],                  rax
     mov                  rdi,    qword [rbp - 352]
     mov                  rsi,    qword [rbp - 432]
     sub                  rsp,                    8
    call          __string_LE
     add                  rsp,                    8
     mov    qword [rbp - 464],                  rax
     cmp    qword [rbp - 464],                    1
      je       main.9.if_true
     jmp     main.10.if_false
main.9.if_true:
     mov                  rdi,    qword [rbp - 352]
     mov                  rsi,    qword [rbp - 432]
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov    qword [rbp - 496],                  rax
     mov                  rax,    qword [rbp - 496]
     jmp         main.21.exit
main.10.if_false:
     mov                  rdi,    qword [rbp - 352]
     mov                  rsi,    qword [rbp - 432]
     sub                  rsp,                    8
    call          __string_EQ
     add                  rsp,                    8
     mov    qword [rbp - 528],                  rax
     cmp    qword [rbp - 528],                    1
      je      main.11.if_true
     jmp     main.15.if_false
main.11.if_true:
     mov                  rdi,    qword [rbp - 352]
     mov                  rsi,                    0
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov    qword [rbp - 560],                  rax
     mov                  rax,    qword [rbp - 560]
     mov    qword [rbp - 568],                  rax
     mov                  rdi,    qword [rbp - 432]
     mov                  rsi,                    0
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov    qword [rbp - 600],                  rax
     mov                  rax,    qword [rbp - 600]
     mov    qword [rbp - 608],                  rax
     mov                  rax,    qword [rbp - 568]
     cmp                  rax,    qword [rbp - 608]
     mov                  rax,    qword [rbp - 616]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 616],                  rax
     cmp    qword [rbp - 616],                    1
      je      main.12.if_true
     jmp     main.13.if_false
main.12.if_true:
     mov                  rdi,    qword [rbp - 352]
     mov                  rsi,    qword [rbp - 432]
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov    qword [rbp - 648],                  rax
     mov                  rax,    qword [rbp - 648]
     jmp         main.21.exit
main.13.if_false:
     jmp      main.14.if_exit
main.14.if_exit:
     mov                  rdi,    qword [rbp - 432]
     mov                  rsi,    qword [rbp - 352]
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov    qword [rbp - 680],                  rax
     mov                  rax,    qword [rbp - 680]
     jmp         main.21.exit
main.15.if_false:
     mov                  rdi,    qword [rbp - 352]
     mov                  rsi,    qword [rbp - 432]
     sub                  rsp,                    8
    call          __string_GR
     add                  rsp,                    8
     mov    qword [rbp - 712],                  rax
     cmp    qword [rbp - 712],                    1
      je      main.16.if_true
     jmp     main.17.if_false
main.16.if_true:
     mov                  rdi,    qword [rbp - 432]
     mov                  rsi,    qword [rbp - 352]
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov    qword [rbp - 744],                  rax
     mov                  rax,    qword [rbp - 744]
     jmp         main.21.exit
main.17.if_false:
     jmp      main.18.if_exit
main.18.if_exit:
     jmp      main.19.if_exit
main.19.if_exit:
     jmp      main.20.if_exit
main.20.if_exit:
     mov                  rdi,      __string_const2
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
main.21.exit:
     mov    qword [rbp - 760],                  rax
     mov                  rax,    qword [rbp - 760]
     mov       qword [@C - 0],                  rax
     mov                  rdi,       qword [@C - 0]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.4.exit
main.4.exit:
     add                  rsp,                  792
     pop                  rbp
     ret
calc:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  552
calc.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov                  rdi,      qword [rbp - 8]
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 40]
     mov     qword [rbp - 48],                  rax
     mov                  rax,                    1
     cmp                  rax,     qword [rbp - 48]
     mov                  rax,     qword [rbp - 56]
     mov                  rax,                    0
    sete                   al
     mov     qword [rbp - 56],                  rax
     cmp     qword [rbp - 56],                    1
      je       calc.1.if_true
     jmp      calc.2.if_false
calc.1.if_true:
     mov                  rax,      qword [rbp - 8]
     jmp         calc.16.exit
calc.2.if_false:
     jmp       calc.3.if_exit
calc.3.if_exit:
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     mov     qword [rbp - 80],                  rax
     sub     qword [rbp - 80],                    1
     mov                  rdi,      qword [rbp - 8]
     mov                  rsi,                    0
     mov                  rdx,     qword [rbp - 80]
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     mov    qword [rbp - 120],                  rax
     mov                  rdi,    qword [rbp - 120]
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     mov    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
     mov    qword [rbp - 152],                  rax
     mov                  rax,     qword [rbp - 48]
     mov    qword [rbp - 160],                  rax
     sub    qword [rbp - 160],                    1
     mov                  rdi,      qword [rbp - 8]
     mov                  rsi,     qword [rbp - 72]
     mov                  rdx,    qword [rbp - 160]
     sub                  rsp,                    8
    call   __string_substring
     add                  rsp,                    8
     mov    qword [rbp - 200],                  rax
     mov                  rdi,    qword [rbp - 200]
     sub                  rsp,                    8
    call                 calc
     add                  rsp,                    8
     mov    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp - 224]
     mov    qword [rbp - 232],                  rax
     mov                  rdi,    qword [rbp - 152]
     mov                  rsi,    qword [rbp - 232]
     sub                  rsp,                    8
    call          __string_LE
     add                  rsp,                    8
     mov    qword [rbp - 264],                  rax
     cmp    qword [rbp - 264],                    1
      je       calc.4.if_true
     jmp      calc.5.if_false
calc.4.if_true:
     mov                  rdi,    qword [rbp - 152]
     mov                  rsi,    qword [rbp - 232]
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov    qword [rbp - 296],                  rax
     mov                  rax,    qword [rbp - 296]
     jmp         calc.16.exit
calc.5.if_false:
     mov                  rdi,    qword [rbp - 152]
     mov                  rsi,    qword [rbp - 232]
     sub                  rsp,                    8
    call          __string_EQ
     add                  rsp,                    8
     mov    qword [rbp - 328],                  rax
     cmp    qword [rbp - 328],                    1
      je       calc.6.if_true
     jmp     calc.10.if_false
calc.6.if_true:
     mov                  rdi,    qword [rbp - 152]
     mov                  rsi,                    0
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov    qword [rbp - 360],                  rax
     mov                  rax,    qword [rbp - 360]
     mov    qword [rbp - 368],                  rax
     mov                  rdi,    qword [rbp - 232]
     mov                  rsi,                    0
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov    qword [rbp - 400],                  rax
     mov                  rax,    qword [rbp - 400]
     mov    qword [rbp - 408],                  rax
     mov                  rax,    qword [rbp - 368]
     cmp                  rax,    qword [rbp - 408]
     mov                  rax,    qword [rbp - 416]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 416],                  rax
     cmp    qword [rbp - 416],                    1
      je       calc.7.if_true
     jmp      calc.8.if_false
calc.7.if_true:
     mov                  rdi,    qword [rbp - 152]
     mov                  rsi,    qword [rbp - 232]
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov    qword [rbp - 448],                  rax
     mov                  rax,    qword [rbp - 448]
     jmp         calc.16.exit
calc.8.if_false:
     jmp       calc.9.if_exit
calc.9.if_exit:
     mov                  rdi,    qword [rbp - 232]
     mov                  rsi,    qword [rbp - 152]
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov    qword [rbp - 480],                  rax
     mov                  rax,    qword [rbp - 480]
     jmp         calc.16.exit
calc.10.if_false:
     mov                  rdi,    qword [rbp - 152]
     mov                  rsi,    qword [rbp - 232]
     sub                  rsp,                    8
    call          __string_GR
     add                  rsp,                    8
     mov    qword [rbp - 512],                  rax
     cmp    qword [rbp - 512],                    1
      je      calc.11.if_true
     jmp     calc.12.if_false
calc.11.if_true:
     mov                  rdi,    qword [rbp - 232]
     mov                  rsi,    qword [rbp - 152]
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov    qword [rbp - 544],                  rax
     mov                  rax,    qword [rbp - 544]
     jmp         calc.16.exit
calc.12.if_false:
     jmp      calc.13.if_exit
calc.13.if_exit:
     jmp      calc.14.if_exit
calc.14.if_exit:
     jmp      calc.15.if_exit
calc.15.if_exit:
     mov                  rdi,      __string_const1
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
calc.16.exit:
     add                  rsp,                  552
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
      dq                   13
__string_const0:
      db   "length error!", 0
      dq                   11
__string_const1:
      db     "Never Ever!", 0
      dq                   11
__string_const2:
      db     "Never Ever!", 0
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
@A:
    resq                    1
@B:
    resq                    1
@C:
    resq                    1
@N:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
