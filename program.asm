global main
extern printf, malloc, strcpy
SECTION .text
main:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                   24
main.0.enter:
     mov     qword [rbp - 24],      __string_const0
     mov     qword [rbp - 32],      __string_const1
    push                  rdi
    push                  rsi
     mov                  rdi,     qword [rbp - 24]
     mov                  rsi,     qword [rbp - 32]
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov     qword [rbp - 40],                  rax
    push                  rdi
    push                  rsi
     mov                  rdi,     qword [rbp - 40]
     sub                  rsp,                    8
    call      __string_length
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
__array_size:
     mov                  rax,      qword [rdi - 8]
     ret
__string_length:
     mov                  rax,      qword [rdi - 8]
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
      dq                    3
__string_const0:
      db             "abc", 0
      dq                    3
__string_const1:
      db             "def", 0
__printIntFormat:
      db         "%ld", 10, 0
__printFormat:
      db              "%s", 0
__printlnFormat:
      db          "%s", 10, 0
