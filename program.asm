global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
     sub                  rsp,                   32
main.0.enter:
     mov                  r12,                   14
     mov                  r13,                    0
     mov                  rdi,                    0
     jmp main.171.loop_condition
main.1.loop_body:
     mov                   r9,                    0
     jmp main.168.loop_condition
main.2.loop_body:
     mov                  r10,                    0
     jmp main.165.loop_condition
main.3.loop_body:
     mov                  rsi,                    0
     jmp main.162.loop_condition
main.4.loop_body:
     mov                  r11,                    0
     jmp main.159.loop_condition
main.5.loop_body:
     mov                  rbx,                    0
     jmp main.156.loop_condition
main.6.loop_body:
     mov                   r8,                    0
     jmp main.153.loop_condition
main.7.loop_body:
     cmp                  rdi,                   r9
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.9.logical_false
main.8.logical_true:
     cmp                  r10,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.10.logical_exit
main.9.logical_false:
     mov                  r14,                    0
main.10.logical_exit:
     cmp                  r14,                    1
      je main.18.logical_true
main.11.logical_false:
     cmp                  rsi,                  r11
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.13.logical_false
main.12.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.14.logical_exit
main.13.logical_false:
     mov                  r14,                    0
main.14.logical_exit:
     cmp                  r14,                    1
     jne main.16.logical_false
main.15.logical_true:
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.17.logical_exit
main.16.logical_false:
     mov                  r14,                    0
main.17.logical_exit:
     jmp main.19.logical_exit
main.18.logical_true:
     mov                  r14,                    1
main.19.logical_exit:
     cmp                  r14,                    1
      je main.21.logical_true
main.20.logical_false:
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     jmp main.22.logical_exit
main.21.logical_true:
     mov                  r14,                    1
main.22.logical_exit:
     cmp                  r14,                    1
      je main.27.logical_true
main.23.logical_false:
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.25.logical_false
main.24.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.26.logical_exit
main.25.logical_false:
     mov                  r14,                    0
main.26.logical_exit:
     jmp main.28.logical_exit
main.27.logical_true:
     mov                  r14,                    1
main.28.logical_exit:
     mov      qword [rbp - 8],                  r14
     cmp                  rdi,                   r9
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.30.logical_false
main.29.logical_true:
     cmp                  r10,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.31.logical_exit
main.30.logical_false:
     mov                  r14,                    0
main.31.logical_exit:
     cmp                  r14,                    1
      je main.39.logical_true
main.32.logical_false:
     cmp                  rsi,                  r11
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.34.logical_false
main.33.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.35.logical_exit
main.34.logical_false:
     mov                  r14,                    0
main.35.logical_exit:
     cmp                  r14,                    1
     jne main.37.logical_false
main.36.logical_true:
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.38.logical_exit
main.37.logical_false:
     mov                  r14,                    0
main.38.logical_exit:
     jmp main.40.logical_exit
main.39.logical_true:
     mov                  r14,                    1
main.40.logical_exit:
     cmp                  r14,                    1
      je main.42.logical_true
main.41.logical_false:
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     jmp main.43.logical_exit
main.42.logical_true:
     mov                  r14,                    1
main.43.logical_exit:
     cmp                  r14,                    1
      je main.48.logical_true
main.44.logical_false:
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.46.logical_false
main.45.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.47.logical_exit
main.46.logical_false:
     mov                  r14,                    0
main.47.logical_exit:
     jmp main.49.logical_exit
main.48.logical_true:
     mov                  r14,                    1
main.49.logical_exit:
     mov     qword [rbp - 16],                  r14
     cmp                  rdi,                   r9
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.51.logical_false
main.50.logical_true:
     cmp                  r10,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.52.logical_exit
main.51.logical_false:
     mov                  r14,                    0
main.52.logical_exit:
     cmp                  r14,                    1
      je main.60.logical_true
main.53.logical_false:
     cmp                  rsi,                  r11
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.55.logical_false
main.54.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.56.logical_exit
main.55.logical_false:
     mov                  r14,                    0
main.56.logical_exit:
     cmp                  r14,                    1
     jne main.58.logical_false
main.57.logical_true:
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.59.logical_exit
main.58.logical_false:
     mov                  r14,                    0
main.59.logical_exit:
     jmp main.61.logical_exit
main.60.logical_true:
     mov                  r14,                    1
main.61.logical_exit:
     cmp                  r14,                    1
      je main.63.logical_true
main.62.logical_false:
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     jmp main.64.logical_exit
main.63.logical_true:
     mov                  r14,                    1
main.64.logical_exit:
     cmp                  r14,                    1
      je main.69.logical_true
main.65.logical_false:
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.67.logical_false
main.66.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.68.logical_exit
main.67.logical_false:
     mov                  r14,                    0
main.68.logical_exit:
     jmp main.70.logical_exit
main.69.logical_true:
     mov                  r14,                    1
main.70.logical_exit:
     mov     qword [rbp - 24],                  r14
     cmp                  rdi,                   r9
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.72.logical_false
main.71.logical_true:
     cmp                  r10,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.73.logical_exit
main.72.logical_false:
     mov                  r14,                    0
main.73.logical_exit:
     cmp                  r14,                    1
      je main.81.logical_true
main.74.logical_false:
     cmp                  rsi,                  r11
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.76.logical_false
main.75.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.77.logical_exit
main.76.logical_false:
     mov                  r14,                    0
main.77.logical_exit:
     cmp                  r14,                    1
     jne main.79.logical_false
main.78.logical_true:
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.80.logical_exit
main.79.logical_false:
     mov                  r14,                    0
main.80.logical_exit:
     jmp main.82.logical_exit
main.81.logical_true:
     mov                  r14,                    1
main.82.logical_exit:
     cmp                  r14,                    1
      je main.84.logical_true
main.83.logical_false:
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     jmp main.85.logical_exit
main.84.logical_true:
     mov                  r14,                    1
main.85.logical_exit:
     cmp                  r14,                    1
      je main.90.logical_true
main.86.logical_false:
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.88.logical_false
main.87.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.89.logical_exit
main.88.logical_false:
     mov                  r14,                    0
main.89.logical_exit:
     jmp main.91.logical_exit
main.90.logical_true:
     mov                  r14,                    1
main.91.logical_exit:
     mov     qword [rbp - 32],                  r14
     cmp                  rdi,                   r9
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.93.logical_false
main.92.logical_true:
     cmp                  r10,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.94.logical_exit
main.93.logical_false:
     mov                  r14,                    0
main.94.logical_exit:
     cmp                  r14,                    1
      je main.102.logical_true
main.95.logical_false:
     cmp                  rsi,                  r11
     mov                  r14,                    0
    sete                 r14b
     cmp                  r14,                    1
     jne main.97.logical_false
main.96.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.98.logical_exit
main.97.logical_false:
     mov                  r14,                    0
main.98.logical_exit:
     cmp                  r14,                    1
     jne main.100.logical_false
main.99.logical_true:
     cmp                   r8,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.101.logical_exit
main.100.logical_false:
     mov                  r14,                    0
main.101.logical_exit:
     jmp main.103.logical_exit
main.102.logical_true:
     mov                  r14,                    1
main.103.logical_exit:
     cmp                  r14,                    1
      je main.105.logical_true
main.104.logical_false:
     cmp                  rdi,                   r8
     mov                  r14,                    0
    sete                 r14b
     jmp main.106.logical_exit
main.105.logical_true:
     mov                  r14,                    1
main.106.logical_exit:
     cmp                  r14,                    1
      je main.111.logical_true
main.107.logical_false:
     cmp                  rsi,                    0
     mov                  r14,                    0
    setg                 r14b
     cmp                  r14,                    1
     jne main.109.logical_false
main.108.logical_true:
     cmp                  rbx,                    0
     mov                  r14,                    0
    setg                 r14b
     jmp main.110.logical_exit
main.109.logical_false:
     mov                  r14,                    0
main.110.logical_exit:
     jmp main.112.logical_exit
main.111.logical_true:
     mov                  r14,                    1
main.112.logical_exit:
     cmp                  rdi,                   r9
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.114.logical_false
main.113.logical_true:
     cmp                  r10,                    0
     mov                  r15,                    0
    setg                 r15b
     jmp main.115.logical_exit
main.114.logical_false:
     mov                  r15,                    0
main.115.logical_exit:
     cmp                  r15,                    1
      je main.123.logical_true
main.116.logical_false:
     cmp                  rsi,                  r11
     mov                  r15,                    0
    sete                 r15b
     cmp                  r15,                    1
     jne main.118.logical_false
main.117.logical_true:
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     jmp main.119.logical_exit
main.118.logical_false:
     mov                  r15,                    0
main.119.logical_exit:
     cmp                  r15,                    1
     jne main.121.logical_false
main.120.logical_true:
     cmp                   r8,                    0
     mov                  r15,                    0
    setg                 r15b
     jmp main.122.logical_exit
main.121.logical_false:
     mov                  r15,                    0
main.122.logical_exit:
     jmp main.124.logical_exit
main.123.logical_true:
     mov                  r15,                    1
main.124.logical_exit:
     cmp                  r15,                    1
      je main.126.logical_true
main.125.logical_false:
     cmp                  rdi,                   r8
     mov                  r15,                    0
    sete                 r15b
     jmp main.127.logical_exit
main.126.logical_true:
     mov                  r15,                    1
main.127.logical_exit:
     cmp                  r15,                    1
      je main.132.logical_true
main.128.logical_false:
     cmp                  rsi,                    0
     mov                  r15,                    0
    setg                 r15b
     cmp                  r15,                    1
     jne main.130.logical_false
main.129.logical_true:
     cmp                  rbx,                    0
     mov                  r15,                    0
    setg                 r15b
     jmp main.131.logical_exit
main.130.logical_false:
     mov                  r15,                    0
main.131.logical_exit:
     jmp main.133.logical_exit
main.132.logical_true:
     mov                  r15,                    1
main.133.logical_exit:
     cmp      qword [rbp - 8],                    1
      je     main.134.if_true
     jmp     main.136.if_exit
main.134.if_true:
     add                  r13,                    1
main.136.if_exit:
     cmp     qword [rbp - 16],                    1
      je     main.137.if_true
     jmp     main.139.if_exit
main.137.if_true:
     add                  r13,                    1
main.139.if_exit:
     cmp     qword [rbp - 24],                    1
      je     main.140.if_true
     jmp     main.142.if_exit
main.140.if_true:
     add                  r13,                    1
main.142.if_exit:
     cmp     qword [rbp - 32],                    1
      je     main.143.if_true
     jmp     main.145.if_exit
main.143.if_true:
     add                  r13,                    1
main.145.if_exit:
     cmp                  r14,                    1
      je     main.146.if_true
     jmp     main.148.if_exit
main.146.if_true:
     add                  r13,                    1
main.148.if_exit:
     cmp                  r15,                    1
      je     main.149.if_true
     jmp main.152.loop_increment
main.149.if_true:
     add                  r13,                    1
main.152.loop_increment:
     add                   r8,                    1
main.153.loop_condition:
     cmp                   r8,                  r12
      jl     main.7.loop_body
main.155.loop_increment:
     add                  rbx,                    1
main.156.loop_condition:
     cmp                  rbx,                  r12
      jl     main.6.loop_body
main.158.loop_increment:
     add                  r11,                    1
main.159.loop_condition:
     cmp                  r11,                  r12
      jl     main.5.loop_body
main.161.loop_increment:
     add                  rsi,                    1
main.162.loop_condition:
     cmp                  rsi,                  r12
      jl     main.4.loop_body
main.164.loop_increment:
     add                  r10,                    1
main.165.loop_condition:
     cmp                  r10,                  r12
      jl     main.3.loop_body
main.167.loop_increment:
     add                   r9,                    1
main.168.loop_condition:
     cmp                   r9,                  r12
      jl     main.2.loop_body
main.170.loop_increment:
     add                  rdi,                    1
main.171.loop_condition:
     cmp                  rdi,                  r12
      jl     main.1.loop_body
main.172.loop_exit:
     mov                  rdi,                  r13
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
main.173.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   32
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
