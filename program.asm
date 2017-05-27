global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
a:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
     sub                  rsp,                    0
a.0.enter:
     mov                  r11,                  rdi
     mov                  r12,                  rdx
     mov                  r10,                  rcx
     mov                  rdi,                   r8
     mov                  rbx,                   r9
     mov                   r8,                  r11
     add                   r8,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     add                  rsi,                  r10
     add                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  rsi
     add                  rbx,     qword [rbp + 16]
     add                  rbx,     qword [rbp + 24]
     add                  rbx,     qword [rbp + 32]
     add                  rbx,     qword [rbp + 40]
     add                  rbx,     qword [rbp + 48]
     add                  rbx,     qword [rbp + 56]
     add                  rbx,     qword [rbp + 64]
     add                  rbx,     qword [rbp + 72]
     add                  rbx,     qword [rbp + 80]
     mov                  rax,                  rbx
a.1.exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                    0
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
    push                  rbx
     sub                  rsp,                    0
main.0.enter:
     mov                  rdi,                    1
     mov                  rsi,                    2
     mov                  rdx,                    3
     mov                  rcx,                    4
     mov                   r8,                    5
     mov                   r9,                    6
    push                  rdi
    push                   r8
    push                  rdx
    push                   r9
    push                  rsi
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
     pop                  rsi
     pop                   r9
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                   r9
    push                  rsi
    call             toString
     pop                  rsi
     pop                   r9
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rdx
    push                   r9
    push                  rsi
    call              println
     pop                  rsi
     pop                   r9
     pop                  rdx
     pop                   r8
     pop                  rdi
     mov                  rax,                    0
main.1.exit:
     pop                  rbx
     add                  rsp,                    0
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
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
