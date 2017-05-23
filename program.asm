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
     sub                  rsp,                    8
main.0.enter:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,                   18
     mov                  rsi,                   12
     mov                  rdx,                    6
    call                  tak
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 24],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 24]
    call             printInt
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
main.1.exit:
     add                  rsp,                    8
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
tak:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                   96
tak.0.enter:
     mov     qword [rbp - 24],                  rdi
     mov     qword [rbp - 32],                  rsi
     mov     qword [rbp - 40],                  rdx
     mov                  r15,     qword [rbp - 32]
     cmp                  r15,     qword [rbp - 24]
     mov                  r15,     qword [rbp - 48]
     mov                  r15,                    0
    setl                 r15b
     mov     qword [rbp - 48],                  r15
     cmp     qword [rbp - 48],                    1
      je        tak.1.if_true
     jmp       tak.2.if_false
tak.1.if_true:
     mov                  r15,     qword [rbp - 24]
     mov     qword [rbp - 56],                  r15
     sub     qword [rbp - 56],                    1
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 56]
     mov                  rsi,     qword [rbp - 32]
     mov                  rdx,     qword [rbp - 40]
     sub                  rsp,                    8
    call                  tak
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 64],                  rax
     mov                  r15,     qword [rbp - 32]
     mov     qword [rbp - 72],                  r15
     sub     qword [rbp - 72],                    1
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 72]
     mov                  rsi,     qword [rbp - 40]
     mov                  rdx,     qword [rbp - 24]
     sub                  rsp,                    8
    call                  tak
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 80],                  rax
     mov                  r15,     qword [rbp - 40]
     mov     qword [rbp - 88],                  r15
     sub     qword [rbp - 88],                    1
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 88]
     mov                  rsi,     qword [rbp - 24]
     mov                  rdx,     qword [rbp - 32]
     sub                  rsp,                    8
    call                  tak
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 96],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 64]
     mov                  rsi,     qword [rbp - 80]
     mov                  rdx,     qword [rbp - 96]
     sub                  rsp,                    8
    call                  tak
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 104],                  rax
     mov    qword [rbp - 112],                    1
     mov                  r15,    qword [rbp - 104]
     add    qword [rbp - 112],                  r15
     mov                  rax,    qword [rbp - 112]
     jmp           tak.4.exit
     jmp        tak.3.if_exit
tak.2.if_false:
     mov                  rax,     qword [rbp - 40]
     jmp           tak.4.exit
     jmp        tak.3.if_exit
tak.3.if_exit:
tak.4.exit:
     add                  rsp,                   96
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
