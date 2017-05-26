global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
     mov       qword [@A - 0],                    1
     mov       qword [@B - 0],                    1
     mov       qword [@C - 0],                    1
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
main.1.loop_body:
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     add                  rdi,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r8,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r8,                  rbx
     add                  rsi,                   r8
     sub                  rdi,                  rsi
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rsi,                   r8
     sub                  rbx,                  rsi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     sub                  rbx,                   r8
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r9,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r9,                  rsi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     sub                   r9,                   r8
     add                  rbx,                   r9
     sub                  rdi,                  rbx
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r8,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     add                   r8,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                   r8,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r9,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r9,                  rbx
     add                  rsi,                   r9
     sub                   r8,                  rsi
     mov                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  r10,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  r10,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                  r10,                  rsi
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r9,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r9,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                   r9,                  rsi
     sub                  r10,                   r9
     sub                   r8,                  r10
     add                  rdi,                   r8
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rbx,                   r8
     sub                  rsi,                  rbx
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r8,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r8,                  rbx
     sub                  rsi,                   r8
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r9,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r9,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rbx,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rbx,                   r8
     sub                   r9,                  rbx
     add                  rsi,                   r9
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rbx,                   r8
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rbx,                   r8
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                   r9,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                   r9,                   r8
     sub                  rbx,                   r9
     mov                  r10,       qword [@C - 0]
     sub                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  r10,                   r8
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
     sub                  r10,                   r8
     add                  rbx,                  r10
     add                  rsi,                  rbx
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r8,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     sub                  rbx,                   r9
     add                   r8,                  rbx
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r9,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r9,                  rbx
     add                   r8,                   r9
     mov                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  r10,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  r10,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     sub                  rbx,                   r9
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     add                  rbx,                   r9
     add                  r10,                  rbx
     sub                   r8,                  r10
     mov                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  r10,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  r10,                  rbx
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r9,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r9,                  rbx
     add                  r10,                   r9
     mov                  r11,       qword [@A - 0]
     add                  r11,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  r11,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  r11,                  rbx
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r9,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r9,                  rbx
     add                  r11,                   r9
     sub                  r10,                  r11
     sub                   r8,                  r10
     add                  rsi,                   r8
     sub                  rdi,                  rsi
     mov       qword [@A - 0],                  rdi
     mov                  r11,       qword [@C - 0]
     sub                  r11,       qword [@A - 0]
     add                  r11,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  r11,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     add                  r11,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                  r11,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     add                  rsi,                  rdi
     sub                  r11,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     sub                  rdi,                  rsi
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rsi,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     sub                  rbx,                  rsi
     add                  rdi,                  rbx
     sub                  r11,                  rdi
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r8,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     add                   r8,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                   r8,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     add                  rsi,                  rdi
     sub                   r8,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r9,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r9,                  rbx
     add                  rdi,                   r9
     sub                  rsi,                  rdi
     sub                   r8,                  rsi
     add                  r11,                   r8
     mov                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r9,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     sub                   r9,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     sub                   r9,                  rbx
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     sub                  rdi,                  rsi
     add                   r9,                  rdi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     sub                  rsi,                  rdi
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r8,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r8,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rbx,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rbx,                  rdi
     sub                   r8,                  rbx
     add                  rsi,                   r8
     add                   r9,                  rsi
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r8,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     add                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                   r8,                  rsi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                  rdi,                  rsi
     sub                   r8,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  r10,       qword [@C - 0]
     sub                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  r10,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  r10,                  rbx
     add                  rsi,                  r10
     sub                  rdi,                  rsi
     sub                   r8,                  rdi
     add                   r9,                   r8
     sub                  r11,                   r9
     mov       qword [@B - 0],                  r11
     mov                   r9,       qword [@C - 0]
     sub                   r9,       qword [@A - 0]
     add                   r9,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r9,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     add                   r9,                  rsi
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     add                   r9,                  rbx
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     add                  rdi,                  rbx
     sub                   r9,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     sub                  rdi,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     sub                  rdi,                  rsi
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     add                  rsi,                   r8
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     sub                  rsi,                   r8
     sub                  rbx,                  rsi
     add                  rdi,                  rbx
     sub                   r9,                  rdi
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     add                  rdi,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                  rdi,                  rsi
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     mov                   r8,       qword [@C - 0]
     sub                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                   r8,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                   r8,                  rsi
     add                  rbx,                   r8
     sub                  rdi,                  rbx
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r8,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                   r8,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     add                   r8,                  rsi
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     mov                  r10,       qword [@C - 0]
     sub                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  r10,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  r10,                  rsi
     add                  rbx,                  r10
     sub                   r8,                  rbx
     sub                  rdi,                   r8
     add                   r9,                  rdi
     mov                   r8,       qword [@A - 0]
     add                   r8,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                   r8,                  rbx
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     sub                   r8,                  rsi
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     sub                   r8,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     add                  rsi,                  rdi
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     sub                  rsi,                  rdi
     sub                  rbx,                  rsi
     add                   r8,                  rbx
     mov                  rdi,       qword [@C - 0]
     sub                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     sub                  rdi,                  rbx
     mov                  r10,       qword [@C - 0]
     sub                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  r10,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  r10,                  rbx
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rsi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     sub                  r10,                  rsi
     add                  rdi,                  r10
     add                   r8,                  rdi
     mov                  r10,       qword [@C - 0]
     sub                  r10,       qword [@A - 0]
     add                  r10,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  r10,                  rbx
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rsi,                  rbx
     add                  r10,                  rsi
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     add                  r10,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
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
     add                  rbx,                  rsi
     sub                  r10,                  rbx
     mov                  r11,       qword [@A - 0]
     add                  r11,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  r11,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  r11,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     add                  r11,                  rbx
     mov                  rdi,       qword [@A - 0]
     add                  rdi,       qword [@B - 0]
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     add                  rdi,                  rbx
     mov                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     sub                  rdi,                  rbx
     mov                  rbx,       qword [@C - 0]
     sub                  rbx,       qword [@A - 0]
     add                  rbx,       qword [@B - 0]
     mov                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     sub                  rbx,                  rsi
     mov                  rsi,       qword [@C - 0]
     sub                  rsi,       qword [@A - 0]
     add                  rsi,       qword [@B - 0]
     add                  rbx,                  rsi
     add                  rdi,                  rbx
     sub                  r11,                  rdi
     sub                  r10,                  r11
     add                   r8,                  r10
     sub                   r9,                   r8
     mov       qword [@C - 0],                   r9
main.2.loop_condition:
     cmp       qword [@C - 0],            536870912
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
     jne main.4.logical_false
main.3.logical_true:
     mov                  rbx,            536870912
     neg                  rbx
     cmp       qword [@C - 0],                  rbx
     mov                  rbx,                    0
    setg                   bl
     jmp  main.5.logical_exit
main.4.logical_false:
     mov                  rbx,                    0
main.5.logical_exit:
     cmp                  rbx,                    1
      je     main.1.loop_body
main.6.loop_exit:
     mov                  rdi,       qword [@A - 0]
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
     mov                  rsi,      __string_const0
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,       qword [@B - 0]
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
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,      __string_const1
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,       qword [@C - 0]
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
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call  __string_connection
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
    call              println
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
main.7.exit:
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
