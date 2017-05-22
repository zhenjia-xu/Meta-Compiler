global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf
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
     sub                  rsp,                   24
main.0.enter:
     mov     qword [rbp - 24],      __string_const0
     mov     qword [rbp - 32],      __string_const1
     mov     qword [rbp - 40],      __string_const2
    push                  rdi
    push                  rsi
     mov                  rdi,     qword [rbp - 24]
     sub                  rsp,                    8
    call    __string_parseInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
    push                  rdi
    push                  rsi
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             printInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
    push                  rdi
    push                  rsi
     mov                  rdi,     qword [rbp - 32]
     sub                  rsp,                    8
    call    __string_parseInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
    push                  rdi
    push                  rsi
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             printInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
    push                  rdi
    push                  rsi
     mov                  rdi,     qword [rbp - 40]
     sub                  rsp,                    8
    call    __string_parseInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
    push                  rdi
    push                  rsi
     mov                  rdi,                  rax
     sub                  rsp,                    8
    call             printInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
main.1.exit:
     add                  rsp,                   24
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
printInt:
    push                  rax
    push                  rcx
     mov                  rsi,                  rdi
     mov                  rdi,     __printIntFormat
     xor                  rax,                  rax
    call               printf
     pop                  rcx
     pop                  rax
     ret
print:
    push                  rax
    push                  rcx
     mov                  rsi,                  rdi
     mov                  rdi,        __printFormat
     xor                  rax,                  rax
    call               printf
     pop                  rcx
     pop                  rax
     ret
println:
    push                  rax
    push                  rcx
     mov                  rsi,                  rdi
     mov                  rdi,      __printlnFormat
     xor                  rax,                  rax
    call               printf
     pop                  rcx
     pop                  rax
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
     mov                  rdi,                  300
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  rcx,                  rax
     add                  rcx,                    8
     mov                  rdi,    __getStringFormat
     mov                  rsi,                  rcx
     sub                  rsp,                    8
    call                scanf
     add                  rsp,                    8
     mov                  rdi,                  rcx
     sub                  rsp,                    8
    call               strlen
     add                  rsp,                    8
     mov      qword [rcx - 8],                  rax
     mov                  rax,                  rcx
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
     mov                  rsi,                  rdi
     mov                  rdi,     __parseIntFormat
     mov                  rdx,           @getIntBuf
     sub                  rsp,                    8
    call               sscanf
     add                  rsp,                    8
     mov                  rax,   qword [@getIntBuf]
     ret
    push                  r13
    push                  r14
    push                  r15
     mov                  r13,      qword [rdi - 8]
     add                  r13,      qword [rsi - 8]
     pop                  r15
     pop                  r14
     pop                  r13
     ret
SECTION .data
      dq                    5
__string_const0:
      db           "12345", 0
      dq                    7
__string_const1:
      db         "123dfsa", 0
      dq                    6
__string_const2:
      db          "drtvyu", 0
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
      db              "%d", 0
SECTION .bss
@getIntBuf:
    resq                    1
