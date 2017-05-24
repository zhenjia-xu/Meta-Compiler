global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
getHash:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
getHash.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 16],                  rax
     mov                  rax,     qword [rbp - 16]
    imul                  rax,                  237
     mov     qword [rbp - 16],                  rax
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 24]
     mov                  rcx, qword [@hashsize - 0]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov     qword [rbp - 24],                  rdx
     mov                  rax,     qword [rbp - 24]
     jmp       getHash.1.exit
getHash.1.exit:
     add                  rsp,                   24
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
     mov qword [@hashsize - 0],                  100
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
get:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
get.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                    0
     mov                  rdi,      qword [rbp - 8]
    call              getHash
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 32]
    imul                  rax,                    8
     mov     qword [rbp - 32],                  rax
     mov                  rax,   qword [@table - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 32]
     add     qword [rbp - 40],                  rax
     mov                  rcx,     qword [rbp - 40]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 16],                  rax
     jmp get.2.loop_condition
get.1.loop_body:
     mov                  rcx,     qword [rbp - 16]
     mov                  rax,     qword [rcx + 16]
     mov     qword [rbp - 16],                  rax
     jmp get.2.loop_condition
get.2.loop_condition:
     mov                  rcx,     qword [rbp - 16]
     mov                  rax,      qword [rcx - 0]
     cmp                  rax,      qword [rbp - 8]
     mov                  rax,     qword [rbp - 48]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 48],                  rax
     cmp     qword [rbp - 48],                    1
      je      get.1.loop_body
     jmp      get.3.loop_exit
get.3.loop_exit:
     mov                  rcx,     qword [rbp - 16]
     mov                  rax,      qword [rcx + 8]
     jmp           get.4.exit
get.4.exit:
     add                  rsp,                   48
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                  152
main.0.enter:
     mov      qword [rbp - 8],                  100
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
     mov      qword [rcx - 0],                  100
     add     qword [rbp - 16],                    8
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 32],                  rax
     mov                  rax,      qword [rbp - 8]
     add     qword [rbp - 32],                  rax
     jmp main.2.allocate_condition
main.1.allocate_body:
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov     qword [rbp - 40],                  rax
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,     qword [rbp - 40]
     mov      qword [rcx - 0],                  rax
     add     qword [rbp - 24],                    8
     jmp main.2.allocate_condition
main.2.allocate_condition:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,     qword [rbp - 32]
      jl main.1.allocate_body
     jmp main.3.allocate_exit
main.3.allocate_exit:
     mov                  rax,     qword [rbp - 16]
     mov   qword [@table - 0],                  rax
     mov     qword [rbp - 48],                    0
     jmp main.6.loop_condition
main.4.loop_body:
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 56]
    imul                  rax,                    8
     mov     qword [rbp - 56],                  rax
     mov                  rax,   qword [@table - 0]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 56]
     add     qword [rbp - 64],                  rax
     mov                  rcx,     qword [rbp - 64]
     mov      qword [rcx - 0],                    0
     jmp main.5.loop_increment
main.5.loop_increment:
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 72],                  rax
     add     qword [rbp - 48],                    1
     jmp main.6.loop_condition
main.6.loop_condition:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax, qword [@hashsize - 0]
     mov                  rax,     qword [rbp - 80]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 80],                  rax
     cmp     qword [rbp - 80],                    1
      je     main.4.loop_body
     jmp     main.7.loop_exit
main.7.loop_exit:
     mov     qword [rbp - 48],                    0
     jmp main.10.loop_condition
main.8.loop_body:
     mov                  rdi,     qword [rbp - 48]
     mov                  rsi,     qword [rbp - 48]
     sub                  rsp,                    8
    call                  put
     add                  rsp,                    8
     jmp main.9.loop_increment
main.9.loop_increment:
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 88],                  rax
     add     qword [rbp - 48],                    1
     jmp main.10.loop_condition
main.10.loop_condition:
     cmp     qword [rbp - 48],                 1000
     mov                  rax,     qword [rbp - 96]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 96],                  rax
     cmp     qword [rbp - 96],                    1
      je     main.8.loop_body
     jmp    main.11.loop_exit
main.11.loop_exit:
     mov     qword [rbp - 48],                    0
     jmp main.14.loop_condition
main.12.loop_body:
     mov                  rdi,     qword [rbp - 48]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov    qword [rbp - 104],                  rax
     mov                  rdi,    qword [rbp - 104]
     mov                  rsi,      __string_const0
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov    qword [rbp - 112],                  rax
     mov                  rdi,     qword [rbp - 48]
     sub                  rsp,                    8
    call                  get
     add                  rsp,                    8
     mov    qword [rbp - 120],                  rax
     mov                  rdi,    qword [rbp - 120]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov    qword [rbp - 128],                  rax
     mov                  rdi,    qword [rbp - 112]
     mov                  rsi,    qword [rbp - 128]
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     mov    qword [rbp - 136],                  rax
     mov                  rdi,    qword [rbp - 136]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     jmp main.13.loop_increment
main.13.loop_increment:
     mov                  rax,     qword [rbp - 48]
     mov    qword [rbp - 144],                  rax
     add     qword [rbp - 48],                    1
     jmp main.14.loop_condition
main.14.loop_condition:
     cmp     qword [rbp - 48],                 1000
     mov                  rax,    qword [rbp - 152]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 152],                  rax
     cmp    qword [rbp - 152],                    1
      je    main.12.loop_body
     jmp    main.15.loop_exit
main.15.loop_exit:
     mov                  rax,                    0
     jmp         main.16.exit
main.16.exit:
     add                  rsp,                  152
     pop                  rbp
     ret
put:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  216
put.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                  rsi
     mov     qword [rbp - 24],                    0
     mov                  rdi,      qword [rbp - 8]
     sub                  rsp,                    8
    call              getHash
     add                  rsp,                    8
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 32]
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 40]
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 48]
    imul                  rax,                    8
     mov     qword [rbp - 48],                  rax
     mov                  rax,   qword [@table - 0]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 56],                  rax
     mov                  rcx,     qword [rbp - 56]
     cmp      qword [rcx - 0],                    0
     mov                  rax,     qword [rbp - 64]
     mov                  rax,                    0
    sete                   al
     mov     qword [rbp - 64],                  rax
     cmp     qword [rbp - 64],                    1
      je        put.1.if_true
     jmp       put.2.if_false
put.1.if_true:
     mov                  rax,     qword [rbp - 40]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
    imul                  rax,                    8
     mov     qword [rbp - 72],                  rax
     mov                  rax,   qword [@table - 0]
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 72]
     add     qword [rbp - 80],                  rax
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov     qword [rbp - 88],                  rax
     mov                  rcx,     qword [rbp - 80]
     mov                  rax,     qword [rbp - 88]
     mov      qword [rcx - 0],                  rax
     mov                  rax,     qword [rbp - 40]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
    imul                  rax,                    8
     mov     qword [rbp - 96],                  rax
     mov                  rax,   qword [@table - 0]
     mov    qword [rbp - 104],                  rax
     mov                  rax,     qword [rbp - 96]
     add    qword [rbp - 104],                  rax
     mov                  rcx,    qword [rbp - 104]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 112],                  rax
     mov                  rcx,    qword [rbp - 112]
     mov                  rax,      qword [rbp - 8]
     mov      qword [rcx - 0],                  rax
     mov                  rax,     qword [rbp - 40]
     mov    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 120]
    imul                  rax,                    8
     mov    qword [rbp - 120],                  rax
     mov                  rax,   qword [@table - 0]
     mov    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 120]
     add    qword [rbp - 128],                  rax
     mov                  rcx,    qword [rbp - 128]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 136],                  rax
     mov                  rcx,    qword [rbp - 136]
     mov                  rax,     qword [rbp - 16]
     mov      qword [rcx + 8],                  rax
     mov                  rax,     qword [rbp - 40]
     mov    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
    imul                  rax,                    8
     mov    qword [rbp - 144],                  rax
     mov                  rax,   qword [@table - 0]
     mov    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp - 144]
     add    qword [rbp - 152],                  rax
     mov                  rcx,    qword [rbp - 152]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 160],                  rax
     mov                  rcx,    qword [rbp - 160]
     mov     qword [rcx + 16],                    0
     jmp          put.10.exit
put.2.if_false:
     jmp        put.3.if_exit
put.3.if_exit:
     mov                  rax,     qword [rbp - 40]
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 168]
    imul                  rax,                    8
     mov    qword [rbp - 168],                  rax
     mov                  rax,   qword [@table - 0]
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 168]
     add    qword [rbp - 176],                  rax
     mov                  rcx,    qword [rbp - 176]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 24],                  rax
     jmp put.8.loop_condition
put.4.loop_body:
     mov                  rcx,     qword [rbp - 24]
     cmp     qword [rcx + 16],                    0
     mov                  rax,    qword [rbp - 184]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 184],                  rax
     cmp    qword [rbp - 184],                    1
      je        put.5.if_true
     jmp       put.6.if_false
put.5.if_true:
     mov                  rdi,                   24
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov    qword [rbp - 192],                  rax
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,    qword [rbp - 192]
     mov     qword [rcx + 16],                  rax
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,     qword [rcx + 16]
     mov    qword [rbp - 200],                  rax
     mov                  rcx,    qword [rbp - 200]
     mov                  rax,      qword [rbp - 8]
     mov      qword [rcx - 0],                  rax
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,     qword [rcx + 16]
     mov    qword [rbp - 208],                  rax
     mov                  rcx,    qword [rbp - 208]
     mov     qword [rcx + 16],                    0
     jmp        put.7.if_exit
put.6.if_false:
     jmp        put.7.if_exit
put.7.if_exit:
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,     qword [rcx + 16]
     mov     qword [rbp - 24],                  rax
     jmp put.8.loop_condition
put.8.loop_condition:
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,      qword [rcx - 0]
     cmp                  rax,      qword [rbp - 8]
     mov                  rax,    qword [rbp - 216]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 216],                  rax
     cmp    qword [rbp - 216],                    1
      je      put.4.loop_body
     jmp      put.9.loop_exit
put.9.loop_exit:
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,     qword [rbp - 16]
     mov      qword [rcx + 8],                  rax
put.10.exit:
     add                  rsp,                  216
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
      dq                    1
__string_const0:
      db               " ", 0
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
@hashsize:
    resq                    1
@table:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
