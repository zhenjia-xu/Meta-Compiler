global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
a:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  160
a.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                  rsi
     mov     qword [rbp - 24],                  rdx
     mov     qword [rbp - 32],                  rcx
     mov     qword [rbp - 40],                   r8
     mov     qword [rbp - 48],                   r9
     mov                  rdi,     qword [rbp + 16]
    call             printInt
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 16]
     add     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 56]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 24]
     add     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 32]
     add     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 40]
     add     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 80]
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 88]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp + 16]
     add     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
     mov    qword [rbp - 104],                  rax
     mov                  rax,     qword [rbp + 24]
     add    qword [rbp - 104],                  rax
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 112],                  rax
     mov                  rax,     qword [rbp + 32]
     add    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 112]
     mov    qword [rbp - 120],                  rax
     mov                  rax,     qword [rbp + 40]
     add    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 120]
     mov    qword [rbp - 128],                  rax
     mov                  rax,     qword [rbp + 48]
     add    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 128]
     mov    qword [rbp - 136],                  rax
     mov                  rax,     qword [rbp + 56]
     add    qword [rbp - 136],                  rax
     mov                  rax,    qword [rbp - 136]
     mov    qword [rbp - 144],                  rax
     mov                  rax,     qword [rbp + 64]
     add    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
     mov    qword [rbp - 152],                  rax
     mov                  rax,     qword [rbp + 72]
     add    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp - 152]
     mov    qword [rbp - 160],                  rax
     mov                  rax,     qword [rbp + 80]
     add    qword [rbp - 160],                  rax
     mov                  rax,    qword [rbp - 160]
a.1.exit:
     add                  rsp,                  160
     pop                  rbp
     ret
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
     sub                  rsp,                   16
main.0.enter:
     mov                  rdi,                    1
     mov                  rsi,                    2
     mov                  rdx,                    3
     mov                  rcx,                    4
     mov                   r8,                    5
     mov                   r9,                    6
     sub                  rsp,                    8
    push                   15
    push                   14
    push                   13
    push                   12
    push                   11
    push                   10
    push                    9
    push                    8
    push                    7
    call                    a
     add                  rsp,                   80
     mov      qword [rbp - 8],                  rax
     mov                  rdi,      qword [rbp - 8]
    call             toString
     mov     qword [rbp - 16],                  rax
     mov                  rdi,     qword [rbp - 16]
    call              println
     mov                  rax,                    0
main.1.exit:
     add                  rsp,                   16
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
