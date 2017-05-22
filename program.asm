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
     mov     qword [@age - 0],              1000000
     mov     qword [@eng - 0],      __string_const6
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
     sub                  rsp,                  400
main.0.enter:
     mov     qword [rbp - 24],                 2016
     mov     qword [rbp - 32],      __string_const0
     mov     qword [rbp - 40],                    1
     mov     qword [rbp - 48],                    0
    push                  rdi
    push                  rsi
     mov                  rdi,                    8
    call               malloc
     pop                  rsi
     pop                  rdi
     mov     qword [rbp - 56],                  rax
     mov                  r15,     qword [rbp - 56]
     mov     qword [rbp - 64],                  r15
     mov     qword [rbp - 72],                    3
     add     qword [rbp - 72],                    1
     mov                  r15,     qword [rbp - 72]
    imul                  r15,                    8
     mov     qword [rbp - 72],                  r15
    push                  rdi
    push                  rsi
     mov                  rdi,     qword [rbp - 72]
    call               malloc
     pop                  rsi
     pop                  rdi
     mov     qword [rbp - 80],                  rax
     sub     qword [rbp - 72],                    8
     mov                  r14,     qword [rbp - 80]
     mov                  r15,     qword [rbp - 72]
     mov      qword [r14 - 0],                  r15
     add     qword [rbp - 80],                    8
     mov                  r15,     qword [rbp - 80]
     mov     qword [rbp - 88],                  r15
     mov                  r15,     qword [rbp - 80]
     mov     qword [rbp - 96],                  r15
     mov                  r15,     qword [rbp - 72]
     add     qword [rbp - 96],                  r15
     jmp main.2.allocate_condition
main.1.allocate_body:
     mov                  r14,     qword [rbp - 88]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 104],                  r15
    push                  rdi
    push                  rsi
     mov                  rdi,                    8
    call               malloc
     pop                  rsi
     pop                  rdi
     mov    qword [rbp - 104],                  rax
     mov                  r14,     qword [rbp - 88]
     mov                  r15,    qword [rbp - 104]
     mov      qword [r14 - 0],                  r15
     add     qword [rbp - 88],                    8
     jmp main.2.allocate_condition
main.2.allocate_condition:
     mov                  r15,     qword [rbp - 96]
     cmp     qword [rbp - 88],                  r15
      jl main.1.allocate_body
     jmp main.3.allocate_exit
main.3.allocate_exit:
     mov                  r15,     qword [rbp - 80]
     mov    qword [rbp - 112],                  r15
     mov    qword [rbp - 120],                    1
     add    qword [rbp - 120],                    1
     mov                  r15,    qword [rbp - 120]
    imul                  r15,                    8
     mov    qword [rbp - 120],                  r15
    push                  rdi
    push                  rsi
     mov                  rdi,    qword [rbp - 120]
    call               malloc
     pop                  rsi
     pop                  rdi
     mov    qword [rbp - 128],                  rax
     sub    qword [rbp - 120],                    8
     mov                  r14,    qword [rbp - 128]
     mov                  r15,    qword [rbp - 120]
     mov      qword [r14 - 0],                  r15
     add    qword [rbp - 128],                    8
     mov                  r15,    qword [rbp - 128]
     mov    qword [rbp - 136],                  r15
     mov                  r15,    qword [rbp - 128]
     mov    qword [rbp - 144],                  r15
     mov                  r15,    qword [rbp - 120]
     add    qword [rbp - 144],                  r15
     jmp main.11.allocate_condition
main.4.allocate_body:
     mov                  r14,    qword [rbp - 136]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 152],                  r15
     mov    qword [rbp - 160],                    2
     add    qword [rbp - 160],                    1
     mov                  r15,    qword [rbp - 160]
    imul                  r15,                    8
     mov    qword [rbp - 160],                  r15
    push                  rdi
    push                  rsi
     mov                  rdi,    qword [rbp - 160]
    call               malloc
     pop                  rsi
     pop                  rdi
     mov    qword [rbp - 152],                  rax
     sub    qword [rbp - 160],                    8
     mov                  r14,    qword [rbp - 152]
     mov                  r15,    qword [rbp - 160]
     mov      qword [r14 - 0],                  r15
     add    qword [rbp - 152],                    8
     mov                  r15,    qword [rbp - 152]
     mov    qword [rbp - 168],                  r15
     mov                  r15,    qword [rbp - 152]
     mov    qword [rbp - 176],                  r15
     mov                  r15,    qword [rbp - 160]
     add    qword [rbp - 176],                  r15
     jmp main.9.allocate_condition
main.5.allocate_body:
     mov                  r14,    qword [rbp - 168]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 184],                  r15
     mov    qword [rbp - 192],                    3
     add    qword [rbp - 192],                    1
     mov                  r15,    qword [rbp - 192]
    imul                  r15,                    8
     mov    qword [rbp - 192],                  r15
    push                  rdi
    push                  rsi
     mov                  rdi,    qword [rbp - 192]
    call               malloc
     pop                  rsi
     pop                  rdi
     mov    qword [rbp - 184],                  rax
     sub    qword [rbp - 192],                    8
     mov                  r14,    qword [rbp - 184]
     mov                  r15,    qword [rbp - 192]
     mov      qword [r14 - 0],                  r15
     add    qword [rbp - 184],                    8
     mov                  r15,    qword [rbp - 184]
     mov    qword [rbp - 200],                  r15
     mov                  r15,    qword [rbp - 184]
     mov    qword [rbp - 208],                  r15
     mov                  r15,    qword [rbp - 192]
     add    qword [rbp - 208],                  r15
     jmp main.7.allocate_condition
main.6.allocate_body:
     mov                  r14,    qword [rbp - 200]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 216],                  r15
    push                  rdi
    push                  rsi
     mov                  rdi,                    8
    call               malloc
     pop                  rsi
     pop                  rdi
     mov    qword [rbp - 216],                  rax
     mov                  r14,    qword [rbp - 200]
     mov                  r15,    qword [rbp - 216]
     mov      qword [r14 - 0],                  r15
     add    qword [rbp - 200],                    8
     jmp main.7.allocate_condition
main.7.allocate_condition:
     mov                  r15,    qword [rbp - 208]
     cmp    qword [rbp - 200],                  r15
      jl main.6.allocate_body
     jmp main.8.allocate_exit
main.8.allocate_exit:
     mov                  r14,    qword [rbp - 168]
     mov                  r15,    qword [rbp - 184]
     mov      qword [r14 - 0],                  r15
     add    qword [rbp - 168],                    8
     jmp main.9.allocate_condition
main.9.allocate_condition:
     mov                  r15,    qword [rbp - 176]
     cmp    qword [rbp - 168],                  r15
      jl main.5.allocate_body
     jmp main.10.allocate_exit
main.10.allocate_exit:
     mov                  r14,    qword [rbp - 136]
     mov                  r15,    qword [rbp - 152]
     mov      qword [r14 - 0],                  r15
     add    qword [rbp - 136],                    8
     jmp main.11.allocate_condition
main.11.allocate_condition:
     mov                  r15,    qword [rbp - 144]
     cmp    qword [rbp - 136],                  r15
      jl main.4.allocate_body
     jmp main.12.allocate_exit
main.12.allocate_exit:
     mov                  r15,    qword [rbp - 128]
     mov    qword [rbp - 224],                  r15
    push                  rdi
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     pop                  rdi
     mov    qword [rbp - 232],                  rax
     mov                  r15,    qword [rbp - 232]
     mov    qword [rbp - 240],                  r15
     mov    qword [rbp - 248],                    1
     mov    qword [rbp - 256],                    2
     mov                  r15,    qword [rbp - 248]
     mov    qword [rbp - 264],                  r15
     mov                  r15,    qword [rbp - 256]
     add    qword [rbp - 264],                  r15
     mov                  r15,    qword [rbp - 248]
     mov    qword [rbp - 272],                  r15
     mov                  r15,    qword [rbp - 256]
     sub    qword [rbp - 272],                  r15
     mov                  r15,    qword [rbp - 248]
     mov    qword [rbp - 280],                  r15
     mov                  r15,    qword [rbp - 280]
    imul                  r15,    qword [rbp - 256]
     mov    qword [rbp - 280],                  r15
     mov                  r15,    qword [rbp - 248]
     mov    qword [rbp - 288],                  r15
     mov                  rax,    qword [rbp - 288]
     mov                  rdx,                    0
     cqo
    idiv    qword [rbp - 256]
     mov    qword [rbp - 288],                  rax
     mov                  r15,    qword [rbp - 248]
     mov    qword [rbp - 296],                  r15
     mov                  rax,    qword [rbp - 296]
     mov                  rdx,                    0
     cqo
    idiv    qword [rbp - 256]
     mov    qword [rbp - 296],                  rdx
     cmp    qword [rbp - 248],                    1
     mov                  r15,    qword [rbp - 304]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 304],                  r15
     cmp    qword [rbp - 248],                    2
     mov                  r15,    qword [rbp - 312]
     mov                  r15,                    0
    setg                 r15b
     mov    qword [rbp - 312],                  r15
     mov                  r15,    qword [rbp - 256]
     cmp    qword [rbp - 248],                  r15
     mov                  r15,    qword [rbp - 320]
     mov                  r15,                    0
    sete                 r15b
     mov    qword [rbp - 320],                  r15
     mov                  r15,    qword [rbp - 256]
     cmp    qword [rbp - 248],                  r15
     mov                  r15,    qword [rbp - 328]
     mov                  r15,                    0
   setne                 r15b
     mov    qword [rbp - 328],                  r15
     mov                  r15,    qword [rbp - 256]
     cmp    qword [rbp - 248],                  r15
     mov                  r15,    qword [rbp - 336]
     mov                  r15,                    0
   setle                 r15b
     mov    qword [rbp - 336],                  r15
     mov                  r15,    qword [rbp - 256]
     cmp    qword [rbp - 248],                  r15
     mov                  r15,    qword [rbp - 344]
     mov                  r15,                    0
   setge                 r15b
     mov    qword [rbp - 344],                  r15
     cmp    qword [rbp - 352],                    1
      je main.14.logical_true
     jmp main.13.logical_false
main.13.logical_false:
     mov    qword [rbp - 360],                    0
     jmp main.15.logical_exit
main.14.logical_true:
     mov                  r15,    qword [rbp - 368]
     mov    qword [rbp - 360],                  r15
     jmp main.15.logical_exit
main.15.logical_exit:
     cmp    qword [rbp - 352],                    1
      je main.17.logical_true
     jmp main.16.logical_false
main.16.logical_false:
     mov                  r15,    qword [rbp - 368]
     mov    qword [rbp - 376],                  r15
     jmp main.18.logical_exit
main.17.logical_true:
     mov    qword [rbp - 376],                    1
     jmp main.18.logical_exit
main.18.logical_exit:
     mov                  r15,    qword [rbp - 352]
     mov    qword [rbp - 384],                  r15
     cmp    qword [rbp - 384],                    1
     mov                  r15,    qword [rbp - 384]
     mov                  r15,                    0
   setne                 r15b
     mov    qword [rbp - 384],                  r15
     mov                  r15,    qword [rbp - 248]
     mov    qword [rbp - 392],                  r15
     mov                  rcx,                    1
     sal    qword [rbp - 392],                   cl
     mov                  r15,    qword [rbp - 248]
     mov    qword [rbp - 400],                  r15
     mov                  rcx,                    2
     sar    qword [rbp - 400],                   cl
     mov                  r15,    qword [rbp - 248]
     mov    qword [rbp - 408],                  r15
     not    qword [rbp - 408]
     mov                  r15,    qword [rbp - 248]
     mov    qword [rbp - 416],                  r15
     mov                  r15,    qword [rbp - 256]
      or    qword [rbp - 416],                  r15
     mov                  rax,                    0
     jmp         main.19.exit
main.19.exit:
     add                  rsp,                  400
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
travel:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                    8
travel.0.enter:
     mov     qword [rbp - 24],             10000000
     mov                  rax,     qword [rbp - 24]
     jmp        travel.1.exit
travel.1.exit:
     add                  rsp,                    8
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
journalists:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                    8
journalists.0.enter:
    push                  rdi
    push                  rsi
     mov                  rdi,                  rdi
     mov                  rsi,      __string_const2
     sub                  rsp,                    8
    call          __string_EQ
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov     qword [rbp - 24],                  rax
     cmp     qword [rbp - 24],                    1
      je journalists.1.if_true
     jmp journalists.2.if_false
journalists.1.if_true:
    push                  rdi
    push                  rsi
     mov                  rdi,      __string_const3
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
    push                  rdi
    push                  rsi
     mov                  rdi,      __string_const4
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
    push                  rdi
    push                  rsi
     mov                  rdi,      __string_const5
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     jmp journalists.3.if_exit
journalists.2.if_false:
     jmp journalists.3.if_exit
journalists.3.if_exit:
journalists.4.exit:
     add                  rsp,                    8
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
xu:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                   16
xu.0.enter:
     mov     qword [rbp - 24],                    0
     jmp  xu.3.loop_condition
xu.1.loop_body:
     jmp  xu.2.loop_increment
xu.2.loop_increment:
     add     qword [rbp - 24],                    1
     jmp  xu.3.loop_condition
xu.3.loop_condition:
     mov                  r15,      qword [rsi - 0]
     cmp     qword [rbp - 24],                  r15
     mov                  r15,     qword [rbp - 32]
     mov                  r15,                    0
    setl                 r15b
     mov     qword [rbp - 32],                  r15
     cmp     qword [rbp - 32],                    1
      je       xu.1.loop_body
     jmp       xu.4.loop_exit
xu.4.loop_exit:
     mov                  rax,                  rdi
     jmp            xu.5.exit
xu.5.exit:
     add                  rsp,                   16
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
      dq                   14
__string_const0:
      db  "wukefengggao\n", 0
      dq                   36
__string_const1:
      db "Four score and seven years ago\n\\\"", 0
      dq                    8
__string_const2:
      db        "HongKong", 0
      dq                    8
__string_const3:
      db        "naive!\n", 0
      dq                    7
__string_const4:
      db         "fast!\n", 0
      dq                   22
__string_const5:
      db "too young\\too simple.", 0
      dq                   30
__string_const6:
      db "Four score and seven years ago", 0
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
@age:
    resq                    1
@eng:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
