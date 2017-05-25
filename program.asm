global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
     mov       qword [@h - 0],                   99
     mov       qword [@i - 0],                  100
     mov       qword [@j - 0],                  101
     mov       qword [@k - 0],                  102
     mov   qword [@total - 0],                    0
@GlobalDeclaration.1.exit:
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
     mov       qword [@N - 0],                   17
     mov                  rbx,                    1
     jmp main.146.loop_condition
main.1.loop_body:
     mov                  rsi,                    1
     jmp main.143.loop_condition
main.2.loop_body:
     mov                  rdi,                    1
     jmp main.140.loop_condition
main.3.loop_body:
     mov                   r8,                    1
     jmp main.137.loop_condition
main.4.loop_body:
     mov                   r9,                    1
     jmp main.134.loop_condition
main.5.loop_body:
     mov                  r10,                    1
     jmp main.131.loop_condition
main.6.loop_body:
     cmp                  rbx,                  rsi
     mov                  r11,                    0
   setne                 r11b
     cmp                  r11,                    1
      je  main.8.logical_true
main.7.logical_false:
     mov                  r11,                    0
     jmp  main.9.logical_exit
main.8.logical_true:
     cmp                  rbx,                  rdi
     mov                  r11,                    0
   setne                 r11b
main.9.logical_exit:
     cmp                  r11,                    1
      je main.11.logical_true
main.10.logical_false:
     mov                  r11,                    0
     jmp main.12.logical_exit
main.11.logical_true:
     cmp                  rbx,                   r8
     mov                  r11,                    0
   setne                 r11b
main.12.logical_exit:
     cmp                  r11,                    1
      je main.14.logical_true
main.13.logical_false:
     mov                  r11,                    0
     jmp main.15.logical_exit
main.14.logical_true:
     cmp                  rbx,                   r9
     mov                  r11,                    0
   setne                 r11b
main.15.logical_exit:
     cmp                  r11,                    1
      je main.17.logical_true
main.16.logical_false:
     mov                  r11,                    0
     jmp main.18.logical_exit
main.17.logical_true:
     cmp                  rbx,                  r10
     mov                  r11,                    0
   setne                 r11b
main.18.logical_exit:
     cmp                  r11,                    1
      je main.20.logical_true
main.19.logical_false:
     mov                  r11,                    0
     jmp main.21.logical_exit
main.20.logical_true:
     cmp                  rbx,       qword [@h - 0]
     mov                  r11,                    0
   setne                 r11b
main.21.logical_exit:
     cmp                  r11,                    1
      je main.23.logical_true
main.22.logical_false:
     mov                  r11,                    0
     jmp main.24.logical_exit
main.23.logical_true:
     cmp                  rbx,       qword [@i - 0]
     mov                  r11,                    0
   setne                 r11b
main.24.logical_exit:
     cmp                  r11,                    1
      je main.26.logical_true
main.25.logical_false:
     mov                  r11,                    0
     jmp main.27.logical_exit
main.26.logical_true:
     cmp                  rbx,       qword [@j - 0]
     mov                  r11,                    0
   setne                 r11b
main.27.logical_exit:
     cmp                  r11,                    1
      je main.29.logical_true
main.28.logical_false:
     mov                  r11,                    0
     jmp main.30.logical_exit
main.29.logical_true:
     cmp                  rbx,       qword [@k - 0]
     mov                  r11,                    0
   setne                 r11b
main.30.logical_exit:
     cmp                  r11,                    1
      je main.32.logical_true
main.31.logical_false:
     mov                  r11,                    0
     jmp main.33.logical_exit
main.32.logical_true:
     cmp                  rsi,                  rdi
     mov                  r11,                    0
   setne                 r11b
main.33.logical_exit:
     cmp                  r11,                    1
      je main.35.logical_true
main.34.logical_false:
     mov                  r11,                    0
     jmp main.36.logical_exit
main.35.logical_true:
     cmp                  rsi,                   r8
     mov                  r11,                    0
   setne                 r11b
main.36.logical_exit:
     cmp                  r11,                    1
      je main.38.logical_true
main.37.logical_false:
     mov                  r11,                    0
     jmp main.39.logical_exit
main.38.logical_true:
     cmp                  rsi,                   r9
     mov                  r11,                    0
   setne                 r11b
main.39.logical_exit:
     cmp                  r11,                    1
      je main.41.logical_true
main.40.logical_false:
     mov                  r11,                    0
     jmp main.42.logical_exit
main.41.logical_true:
     cmp                  rsi,                  r10
     mov                  r11,                    0
   setne                 r11b
main.42.logical_exit:
     cmp                  r11,                    1
      je main.44.logical_true
main.43.logical_false:
     mov                  r11,                    0
     jmp main.45.logical_exit
main.44.logical_true:
     cmp                  rsi,       qword [@h - 0]
     mov                  r11,                    0
   setne                 r11b
main.45.logical_exit:
     cmp                  r11,                    1
      je main.47.logical_true
main.46.logical_false:
     mov                  r11,                    0
     jmp main.48.logical_exit
main.47.logical_true:
     cmp                  rsi,       qword [@i - 0]
     mov                  r11,                    0
   setne                 r11b
main.48.logical_exit:
     cmp                  r11,                    1
      je main.50.logical_true
main.49.logical_false:
     mov                  r11,                    0
     jmp main.51.logical_exit
main.50.logical_true:
     cmp                  rsi,       qword [@j - 0]
     mov                  r11,                    0
   setne                 r11b
main.51.logical_exit:
     cmp                  r11,                    1
      je main.53.logical_true
main.52.logical_false:
     mov                  r11,                    0
     jmp main.54.logical_exit
main.53.logical_true:
     cmp                  rsi,       qword [@k - 0]
     mov                  r11,                    0
   setne                 r11b
main.54.logical_exit:
     cmp                  r11,                    1
      je main.56.logical_true
main.55.logical_false:
     mov                  r11,                    0
     jmp main.57.logical_exit
main.56.logical_true:
     cmp                  rdi,                   r8
     mov                  r11,                    0
   setne                 r11b
main.57.logical_exit:
     cmp                  r11,                    1
      je main.59.logical_true
main.58.logical_false:
     mov                  r11,                    0
     jmp main.60.logical_exit
main.59.logical_true:
     cmp                  rdi,                   r9
     mov                  r11,                    0
   setne                 r11b
main.60.logical_exit:
     cmp                  r11,                    1
      je main.62.logical_true
main.61.logical_false:
     mov                  r11,                    0
     jmp main.63.logical_exit
main.62.logical_true:
     cmp                  rdi,                  r10
     mov                  r11,                    0
   setne                 r11b
main.63.logical_exit:
     cmp                  r11,                    1
      je main.65.logical_true
main.64.logical_false:
     mov                  r11,                    0
     jmp main.66.logical_exit
main.65.logical_true:
     cmp                  rdi,       qword [@h - 0]
     mov                  r11,                    0
   setne                 r11b
main.66.logical_exit:
     cmp                  r11,                    1
      je main.68.logical_true
main.67.logical_false:
     mov                  r11,                    0
     jmp main.69.logical_exit
main.68.logical_true:
     cmp                  rdi,       qword [@i - 0]
     mov                  r11,                    0
   setne                 r11b
main.69.logical_exit:
     cmp                  r11,                    1
      je main.71.logical_true
main.70.logical_false:
     mov                  r11,                    0
     jmp main.72.logical_exit
main.71.logical_true:
     cmp                  rdi,       qword [@j - 0]
     mov                  r11,                    0
   setne                 r11b
main.72.logical_exit:
     cmp                  r11,                    1
      je main.74.logical_true
main.73.logical_false:
     mov                  r11,                    0
     jmp main.75.logical_exit
main.74.logical_true:
     cmp                  rdi,       qword [@k - 0]
     mov                  r11,                    0
   setne                 r11b
main.75.logical_exit:
     cmp                  r11,                    1
      je main.77.logical_true
main.76.logical_false:
     mov                  r11,                    0
     jmp main.78.logical_exit
main.77.logical_true:
     cmp                   r8,                   r9
     mov                  r11,                    0
   setne                 r11b
main.78.logical_exit:
     cmp                  r11,                    1
      je main.80.logical_true
main.79.logical_false:
     mov                  r11,                    0
     jmp main.81.logical_exit
main.80.logical_true:
     cmp                   r8,                  r10
     mov                  r11,                    0
   setne                 r11b
main.81.logical_exit:
     cmp                  r11,                    1
      je main.83.logical_true
main.82.logical_false:
     mov                  r11,                    0
     jmp main.84.logical_exit
main.83.logical_true:
     cmp                   r8,       qword [@h - 0]
     mov                  r11,                    0
   setne                 r11b
main.84.logical_exit:
     cmp                  r11,                    1
      je main.86.logical_true
main.85.logical_false:
     mov                  r11,                    0
     jmp main.87.logical_exit
main.86.logical_true:
     cmp                   r8,       qword [@i - 0]
     mov                  r11,                    0
   setne                 r11b
main.87.logical_exit:
     cmp                  r11,                    1
      je main.89.logical_true
main.88.logical_false:
     mov                  r11,                    0
     jmp main.90.logical_exit
main.89.logical_true:
     cmp                   r8,       qword [@j - 0]
     mov                  r11,                    0
   setne                 r11b
main.90.logical_exit:
     cmp                  r11,                    1
      je main.92.logical_true
main.91.logical_false:
     mov                  r11,                    0
     jmp main.93.logical_exit
main.92.logical_true:
     cmp                   r8,       qword [@k - 0]
     mov                  r11,                    0
   setne                 r11b
main.93.logical_exit:
     cmp                  r11,                    1
      je main.95.logical_true
main.94.logical_false:
     mov                  r11,                    0
     jmp main.96.logical_exit
main.95.logical_true:
     cmp                   r9,                  r10
     mov                  r11,                    0
   setne                 r11b
main.96.logical_exit:
     cmp                  r11,                    1
      je main.98.logical_true
main.97.logical_false:
     mov                  r11,                    0
     jmp main.99.logical_exit
main.98.logical_true:
     cmp                   r9,       qword [@h - 0]
     mov                  r11,                    0
   setne                 r11b
main.99.logical_exit:
     cmp                  r11,                    1
      je main.101.logical_true
main.100.logical_false:
     mov                  r11,                    0
     jmp main.102.logical_exit
main.101.logical_true:
     cmp                   r9,       qword [@i - 0]
     mov                  r11,                    0
   setne                 r11b
main.102.logical_exit:
     cmp                  r11,                    1
      je main.104.logical_true
main.103.logical_false:
     mov                  r11,                    0
     jmp main.105.logical_exit
main.104.logical_true:
     cmp                   r9,       qword [@j - 0]
     mov                  r11,                    0
   setne                 r11b
main.105.logical_exit:
     cmp                  r11,                    1
      je main.107.logical_true
main.106.logical_false:
     mov                  r11,                    0
     jmp main.108.logical_exit
main.107.logical_true:
     cmp                   r9,       qword [@k - 0]
     mov                  r11,                    0
   setne                 r11b
main.108.logical_exit:
     cmp                  r11,                    1
      je main.110.logical_true
main.109.logical_false:
     mov                  r11,                    0
     jmp main.111.logical_exit
main.110.logical_true:
     cmp                  r10,       qword [@h - 0]
     mov                  r11,                    0
   setne                 r11b
main.111.logical_exit:
     cmp                  r11,                    1
      je main.113.logical_true
main.112.logical_false:
     mov                  r11,                    0
     jmp main.114.logical_exit
main.113.logical_true:
     cmp                  r10,       qword [@i - 0]
     mov                  r11,                    0
   setne                 r11b
main.114.logical_exit:
     cmp                  r11,                    1
      je main.116.logical_true
main.115.logical_false:
     mov                  r11,                    0
     jmp main.117.logical_exit
main.116.logical_true:
     cmp                  r10,       qword [@j - 0]
     mov                  r11,                    0
   setne                 r11b
main.117.logical_exit:
     cmp                  r11,                    1
      je main.119.logical_true
main.118.logical_false:
     mov                  r11,                    0
     jmp main.120.logical_exit
main.119.logical_true:
     cmp                  r10,       qword [@k - 0]
     mov                  r11,                    0
   setne                 r11b
main.120.logical_exit:
     cmp                  r11,                    1
      je main.122.logical_true
main.121.logical_false:
     mov                  r11,                    0
     jmp main.123.logical_exit
main.122.logical_true:
     mov                  r11,       qword [@i - 0]
     cmp                  r11,       qword [@j - 0]
     mov                  r11,                    0
   setne                 r11b
main.123.logical_exit:
     cmp                  r11,                    1
      je main.125.logical_true
main.124.logical_false:
     mov                  r11,                    0
     jmp main.126.logical_exit
main.125.logical_true:
     mov                  r11,       qword [@h - 0]
     cmp                  r11,       qword [@k - 0]
     mov                  r11,                    0
   setne                 r11b
main.126.logical_exit:
     cmp                  r11,                    1
      je     main.127.if_true
     jmp main.130.loop_increment
main.127.if_true:
     mov                  r11,   qword [@total - 0]
     add   qword [@total - 0],                    1
main.130.loop_increment:
     add                  r10,                    1
main.131.loop_condition:
     cmp                  r10,       qword [@N - 0]
     mov                  r11,                    0
   setle                 r11b
     cmp                  r11,                    1
      je     main.6.loop_body
main.133.loop_increment:
     add                   r9,                    1
main.134.loop_condition:
     cmp                   r9,       qword [@N - 0]
     mov                  r10,                    0
   setle                 r10b
     cmp                  r10,                    1
      je     main.5.loop_body
main.136.loop_increment:
     add                   r8,                    1
main.137.loop_condition:
     cmp                   r8,       qword [@N - 0]
     mov                   r9,                    0
   setle                  r9b
     cmp                   r9,                    1
      je     main.4.loop_body
main.139.loop_increment:
     add                  rdi,                    1
main.140.loop_condition:
     cmp                  rdi,       qword [@N - 0]
     mov                   r8,                    0
   setle                  r8b
     cmp                   r8,                    1
      je     main.3.loop_body
main.142.loop_increment:
     add                  rsi,                    1
main.143.loop_condition:
     cmp                  rsi,       qword [@N - 0]
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
      je     main.2.loop_body
main.145.loop_increment:
     add                  rbx,                    1
main.146.loop_condition:
     cmp                  rbx,       qword [@N - 0]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
      je     main.1.loop_body
main.147.loop_exit:
     mov                  rdi,   qword [@total - 0]
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
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
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
     mov                  rax,                    0
main.148.exit:
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
@N:
    resq                    1
@h:
    resq                    1
@i:
    resq                    1
@j:
    resq                    1
@k:
    resq                    1
@total:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
