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
    push                  rbx
    push                  r12
    push                  r13
     sub                  rsp,                    0
main.0.enter:
     mov                  rbx,                    0
     jmp main.12.loop_condition
main.1.loop_body:
     mov                  rsi,                  rbx
     add                  rsi,                    1
     mov       qword [@C - 0],                  rsi
     mov                  rsi,       qword [@C - 0]
     mov       qword [@B - 0],                  rsi
     mov                  rsi,       qword [@B - 0]
     mov       qword [@A - 0],                  rsi
     jmp main.3.loop_condition
main.2.loop_body:
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     mov                   r8,                  rdi
     add                   r8,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                   r9,                   r8
     sub                   r9,                  rdi
     mov                   r8,                  rsi
     add                   r8,                   r9
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  rdi,                   r8
     add                  rdi,                  rsi
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,                   r9
     add                  rsi,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                   r9,                  rsi
     sub                   r9,                   r8
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     mov                  r10,                   r8
     add                  r10,       qword [@B - 0]
     mov                   r8,                  rsi
     add                   r8,                  r10
     mov                  rsi,                   r9
     add                  rsi,                   r8
     mov                   r8,                  rdi
     sub                   r8,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                  rdi
     add                   r9,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  r10,                   r9
     sub                  r10,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                  rdi
     add                   r9,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,                   r9
     sub                  rsi,                  rdi
     mov                   r9,                  r10
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  r10,                  rdi
     add                  r10,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  r11,                  rdi
     add                  r11,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,                  r11
     sub                  rsi,                  rdi
     mov                  rdi,                  r10
     sub                  rdi,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rdi
     mov                   r9,                   r8
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                   r8,                  rsi
     sub                   r8,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     add                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     add                  r10,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     mov                   r8,                  rdi
     add                   r8,       qword [@B - 0]
     mov                  rdi,                  rsi
     add                  rdi,                   r8
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,                  rdi
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     add                   r8,                  rsi
     mov                  rdi,                  r10
     sub                  rdi,                   r8
     mov                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,                  r10
     add                  rsi,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  r10,                  rsi
     sub                  r10,                   r8
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rsi,                   r8
     add                  r10,                  rsi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  r11,                   r8
     sub                  r11,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rsi,                   r8
     mov                   r8,                  r11
     add                   r8,                  rsi
     sub                  r10,                   r8
     mov                  rsi,                  rdi
     sub                  rsi,                  r10
     mov                  r11,                   r9
     add                  r11,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                   r8,                  rsi
     add                   r8,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     sub                   r8,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rdi,                  rsi
     sub                   r8,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rdi,                  rsi
     sub                  rdi,                   r9
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  r10,                   r9
     add                  r10,                  rsi
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rsi,                  r10
     sub                  rsi,                   r9
     sub                  rdi,                  rsi
     mov                  r10,                   r8
     add                  r10,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rdi,                  rsi
     sub                  rdi,                   r8
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rsi,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r9,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r9,                  rsi
     mov                  rsi,                   r8
     sub                  rsi,                   r9
     add                  rdi,                  rsi
     mov                  r12,                  r10
     add                  r12,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,                  rdi
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rdi,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                   r9,                  rdi
     sub                   r9,                   r8
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     mov                   r8,                  rdi
     add                   r8,       qword [@B - 0]
     mov                  rdi,                   r9
     add                  rdi,                   r8
     mov                   r8,                  rsi
     add                   r8,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r9,                  rsi
     add                   r9,       qword [@B - 0]
     mov                  rsi,                  rdi
     add                  rsi,                   r9
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rdi,                  rsi
     sub                  rdi,                   r9
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     sub                  rsi,                   r9
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     add                  rsi,                   r9
     add                  rdi,                  rsi
     mov                  r10,                   r8
     sub                  r10,                  rdi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                   r8,                  rsi
     sub                   r8,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                   r9,                   r8
     add                   r9,                  rsi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rdi,                   r8
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rdi,                   r8
     mov                   r8,                  rsi
     add                   r8,                  rdi
     mov                  rsi,                   r9
     sub                  rsi,                   r8
     mov                  rdi,                  r10
     sub                  rdi,                  rsi
     mov                  rsi,                  r12
     add                  rsi,                  rdi
     mov                  rdi,                  r11
     sub                  rdi,                  rsi
     mov       qword [@A - 0],                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     add                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r9,                  rsi
     add                   r9,       qword [@B - 0]
     mov                  rsi,                   r8
     add                  rsi,                   r9
     mov                   r8,                  rdi
     add                   r8,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                  rdi
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  rdi
     sub                   r8,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                  rdi
     add                   r9,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     sub                   r9,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  r10,                   r9
     sub                  r10,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r9,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,                   r9
     sub                  rdi,                  rsi
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov                  rdi,                   r8
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                   r8
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     add                   r9,                   r8
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     mov                  r10,                   r9
     add                  r10,                   r8
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                   r9,                  rsi
     add                   r9,                   r8
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,                   r9
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  r11,                  rsi
     sub                  r11,                   r9
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                  r11
     add                   r9,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                   r9
     mov                   r9,                  r10
     sub                   r9,                  rsi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  r10,                   r8
     sub                  r10,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     add                  r10,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  r11,                   r8
     sub                  r11,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     mov                  rsi,                  r11
     add                  rsi,                   r8
     mov                   r8,                  r10
     sub                   r8,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                   r8
     mov                  r11,                  rdi
     add                  r11,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rsi,                   r8
     sub                  rdi,                  rsi
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,                   r9
     add                  rsi,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     mov                   r8,                  rdi
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     mov                   r9,                  rdi
     add                   r9,       qword [@B - 0]
     mov                  rdi,                  rsi
     add                  rdi,                   r9
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r9,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r9,                  rsi
     mov                  rsi,                  rdi
     sub                  rsi,                   r9
     add                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                   r9,                  rsi
     sub                   r9,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r9,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rdi,                  rsi
     mov                  r10,                   r9
     sub                  r10,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                  rdi
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,                   r9
     add                  rsi,                  rdi
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                   r9,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                   r9,                  rdi
     sub                  rsi,                   r9
     mov                  rdi,                  r10
     add                  rdi,                  rsi
     add                   r8,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rdi,                  rsi
     sub                  rdi,                   r9
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     sub                  rsi,                   r9
     mov                   r9,                  rdi
     add                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  r10,                  rsi
     add                  r10,       qword [@B - 0]
     mov                  rsi,                  rdi
     add                  rsi,                  r10
     add                   r9,                  rsi
     mov                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,                  r10
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  r10,                  rsi
     sub                  r10,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  r10
     add                  rdi,                  rsi
     mov                  r10,                   r9
     sub                  r10,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                  rdi
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     add                   r9,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  r13,                  rdi
     sub                  r13,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     mov                  r12,                  rdi
     add                  r12,       qword [@B - 0]
     mov                  rdi,                  rsi
     add                  rdi,                  r12
     mov                  rsi,                  r13
     add                  rsi,                  rdi
     mov                  rdi,                   r9
     sub                  rdi,                  rsi
     mov                  rsi,                  r10
     sub                  rsi,                  rdi
     mov                  rdi,                   r8
     add                  rdi,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                  rdi
     mov       qword [@B - 0],                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,                  rdi
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     add                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     add                  r10,                  rsi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rdi,                  rsi
     sub                  rdi,                   r8
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     mov                   r9,                   r8
     add                   r9,       qword [@B - 0]
     mov                   r8,                  rsi
     add                   r8,                   r9
     mov                  rsi,                  rdi
     add                  rsi,                   r8
     mov                   r9,                  r10
     sub                   r9,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  r10,                   r8
     add                  r10,                  rdi
     mov                   r8,                  rsi
     sub                   r8,                  r10
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,                   r8
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  r10,                   r8
     add                  r10,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rsi,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     mov                   r8,                  r10
     sub                   r8,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                   r8
     mov                  r10,                   r9
     sub                  r10,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  rdi,                  rsi
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     mov                   r8,                  rdi
     add                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  rdi,                   r8
     add                  rdi,                  rsi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     sub                  rsi,                   r9
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     add                  rsi,                   r9
     mov                   r9,                   r8
     add                   r9,                  rsi
     mov                   r8,                  rdi
     sub                   r8,                   r9
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     mov                   r9,                  rdi
     add                   r9,       qword [@B - 0]
     mov                  rdi,                  rsi
     add                  rdi,                   r9
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  r11,       qword [@A - 0]
     add                  r11,       qword [@B - 0]
     mov                   r9,                  rsi
     sub                   r9,                  r11
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r9,                  rsi
     mov                  r11,                  rdi
     add                  r11,                   r9
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  r12,                  rsi
     sub                  r12,                   r9
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                  r12
     add                   r9,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                   r9
     mov                  rdi,                  r11
     sub                  rdi,                  rsi
     mov                  rsi,                   r8
     sub                  rsi,                  rdi
     mov                  rdi,                  r10
     add                  rdi,                  rsi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                   r8
     add                   r9,                  rsi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     sub                   r9,                   r8
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     mov                  r10,                   r8
     add                  r10,       qword [@B - 0]
     mov                   r8,                  rsi
     add                   r8,                  r10
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  r10,                   r8
     sub                  r10,                  rsi
     mov                   r8,                   r9
     sub                   r8,                  r10
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     sub                  rsi,                   r9
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     mov                  r10,                   r9
     add                  r10,       qword [@B - 0]
     mov                   r9,                  rsi
     add                   r9,                  r10
     mov                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  r11,                  rsi
     add                  r11,       qword [@B - 0]
     mov                  rsi,                  r10
     add                  rsi,                  r11
     mov                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     sub                  rsi,                  r10
     sub                   r9,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                   r9
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     sub                   r8,                   r9
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  r10,                   r8
     add                  r10,                   r9
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     mov                  r11,                   r8
     add                  r11,       qword [@B - 0]
     mov                   r8,                   r9
     add                   r8,                  r11
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     sub                   r8,                   r9
     mov                  r11,                  r10
     sub                  r11,                   r8
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  r10,                   r8
     sub                  r10,                   r9
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  r10,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     add                   r8,                   r9
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     sub                   r8,                   r9
     mov                   r9,                  r10
     sub                   r9,                   r8
     mov                   r8,                  r11
     add                   r8,                   r9
     mov                  r12,                  rsi
     add                  r12,                   r8
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                   r9,                  rsi
     sub                   r9,                   r8
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     mov                   r8,                   r9
     add                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r9,                  rsi
     add                   r9,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r9,                  rsi
     mov                  r10,                   r8
     add                  r10,                   r9
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r9,                   r8
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                   r8,                  rsi
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  r11,                  rsi
     add                  r11,       qword [@B - 0]
     mov                  rsi,                   r8
     add                  rsi,                  r11
     add                   r9,                  rsi
     mov                   r8,                  r10
     sub                   r8,                   r9
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r9,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     mov                  r10,                  rsi
     add                  r10,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  r10,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  r10,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r10
     mov                  r11,       qword [@A - 0]
     add                  r11,       qword [@B - 0]
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     mov                  r10,                   r9
     add                  r10,       qword [@B - 0]
     mov                   r9,                  r11
     add                   r9,                  r10
     mov                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  r11,                   r9
     sub                  r11,                  r10
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     mov                  r10,                   r9
     add                  r10,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     sub                  r10,                   r9
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     add                  r10,                   r9
     mov                   r9,                  r11
     add                   r9,                  r10
     sub                  rsi,                   r9
     sub                   r8,                  rsi
     mov                   r9,                  r12
     add                   r9,                   r8
     mov                  rsi,                  rdi
     sub                  rsi,                   r9
     mov       qword [@C - 0],                  rsi
main.3.loop_condition:
     cmp       qword [@C - 0],            536870912
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je  main.5.logical_true
main.4.logical_false:
     mov                  rsi,                    0
     jmp  main.6.logical_exit
main.5.logical_true:
     mov                  rsi,            536870912
     neg                  rsi
     cmp       qword [@C - 0],                  rsi
     mov                  rsi,                    0
    setg                  sil
main.6.logical_exit:
     cmp                  rsi,                    1
      je     main.2.loop_body
main.7.loop_exit:
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                 1000
     cqo
    idiv                  rcx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je       main.8.if_true
     jmp main.11.loop_increment
main.8.if_true:
     mov                  rdi,       qword [@A - 0]
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
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const0
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,       qword [@B - 0]
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
     mov                  rdi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rdi
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const1
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
     mov                  rdi,       qword [@C - 0]
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
     mov                  rsi,                  rax
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
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
main.11.loop_increment:
     add                  rbx,                    1
main.12.loop_condition:
     cmp                  rbx,              1000000
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
      je     main.1.loop_body
main.13.loop_exit:
     mov                  rax,                    0
main.14.exit:
     pop                  r13
     pop                  r12
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
      dq                    1
__string_const0:
      db               " ", 0
      dq                    1
__string_const1:
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
@A:
    resq                    1
@B:
    resq                    1
@C:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
