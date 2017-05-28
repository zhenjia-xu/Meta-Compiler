global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
point.printPoint:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
point.printPoint.0.enter:
     mov                  rbx,                  rdi
     mov                  rdi,      qword [rbx - 0]
    push                  rdi
    push                   r8
    push                  rsi
    call             toString
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,      __string_const0
    push                  rdi
    push                   r8
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const1
    push                  rdi
    push                   r8
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,      qword [rbx + 8]
    push                  rdi
    push                   r8
    push                  rsi
    call             toString
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                   r8,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
    push                  rdi
    push                   r8
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const2
    push                  rdi
    push                   r8
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,     qword [rbx + 16]
    push                  rdi
    push                   r8
    push                  rsi
    call             toString
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                  rdi
    push                   r8
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,      __string_const3
    push                  rdi
    push                   r8
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rsi
    call              println
     pop                  rsi
     pop                   r8
     pop                  rdi
point.printPoint.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
point.cross:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
point.cross.0.enter:
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rbx,                  rax
point.cross.2.enter:
     mov      qword [rbx - 0],                    0
     mov      qword [rbx + 8],                    0
     mov     qword [rbx + 16],                    0
point.cross.3.exit:
     mov                   r8,      qword [rdi + 8]
    imul                   r8,     qword [rsi + 16]
     mov                   r9,     qword [rdi + 16]
    imul                   r9,      qword [rsi + 8]
     sub                   r8,                   r9
     mov                   r9,     qword [rdi + 16]
    imul                   r9,      qword [rsi - 0]
     mov                  r10,      qword [rdi - 0]
    imul                  r10,     qword [rsi + 16]
     sub                   r9,                  r10
     mov                  r10,      qword [rdi - 0]
    imul                  r10,      qword [rsi + 8]
     mov                  rdi,      qword [rdi + 8]
    imul                  rdi,      qword [rsi - 0]
     mov                  rsi,                  r10
     sub                  rsi,                  rdi
     mov                  rdi,                   r8
     mov                   r8,                   r9
point.cross.4.enter:
     mov      qword [rbx - 0],                  rdi
     mov      qword [rbx + 8],                   r8
     mov     qword [rbx + 16],                  rsi
point.cross.5.exit:
     mov                  rax,                  rbx
point.cross.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
point.null:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
point.null.0.enter:
     mov                  rbx,                  rdi
     mov      qword [rbx - 0],                    0
     mov      qword [rbx + 8],                    0
     mov     qword [rbx + 16],                    0
point.null.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
point.sqrDis:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
point.sqrDis.0.enter:
     mov                  rbx,                  rdi
     mov                  rdi,      qword [rbx - 0]
     sub                  rdi,      qword [rsi - 0]
     mov                   r8,      qword [rbx - 0]
     sub                   r8,      qword [rsi - 0]
    imul                  rdi,                   r8
     mov                   r9,      qword [rbx + 8]
     sub                   r9,      qword [rsi + 8]
     mov                   r8,      qword [rbx + 8]
     sub                   r8,      qword [rsi + 8]
    imul                   r9,                   r8
     add                  rdi,                   r9
     mov                   r8,     qword [rbx + 16]
     sub                   r8,     qword [rsi + 16]
     mov                  rbx,     qword [rbx + 16]
     sub                  rbx,     qword [rsi + 16]
     mov                  rsi,                   r8
    imul                  rsi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  rsi
     mov                  rax,                  rbx
point.sqrDis.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
point.dot:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
point.dot.0.enter:
     mov                  rbx,                  rdi
     mov                   r8,      qword [rbx - 0]
    imul                   r8,      qword [rsi - 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rsi + 8]
     add                   r8,                  rdi
     mov                  rbx,     qword [rbx + 16]
    imul                  rbx,     qword [rsi + 16]
     mov                  rsi,                   r8
     add                  rsi,                  rbx
     mov                  rax,                  rsi
point.dot.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
point.sqrLen:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
point.sqrLen.0.enter:
     mov                  rbx,                  rdi
     mov                  rsi,      qword [rbx - 0]
    imul                  rsi,      qword [rbx - 0]
     mov                  rdi,      qword [rbx + 8]
    imul                  rdi,      qword [rbx + 8]
     add                  rsi,                  rdi
     mov                  rdi,     qword [rbx + 16]
    imul                  rdi,     qword [rbx + 16]
     mov                  rbx,                  rsi
     add                  rbx,                  rdi
     mov                  rax,                  rbx
point.sqrLen.1.exit:
     pop                  rbx
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
    push                  r12
    push                  r13
    push                  rbx
     sub                  rsp,                    0
main.0.enter:
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
main.2.enter:
     mov      qword [rbx - 0],                    0
     mov      qword [rbx + 8],                    0
     mov     qword [rbx + 16],                    0
main.3.exit:
     mov                  r10,                  rbx
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
main.4.enter:
     mov      qword [rbx - 0],                    0
     mov      qword [rbx + 8],                    0
     mov     qword [rbx + 16],                    0
main.5.exit:
     mov                   r9,                  rbx
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
main.6.enter:
     mov      qword [rbx - 0],                    0
     mov      qword [rbx + 8],                    0
     mov     qword [rbx + 16],                    0
main.7.exit:
     mov                   r8,                  rbx
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
main.8.enter:
     mov      qword [rbx - 0],                    0
     mov      qword [rbx + 8],                    0
     mov     qword [rbx + 16],                    0
main.9.exit:
     mov                  r11,                  r10
main.10.enter:
     mov                  rdi,      qword [r11 - 0]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,      __string_const4
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const5
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,      qword [r11 + 8]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r12,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r12
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const6
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,     qword [r11 + 16]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r11,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const7
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
main.11.exit:
     mov                  r11,                  463
     neg                  r11
     mov                  rsi,                  r10
     mov                  rdi,                  849
     mov                  r12,                  480
main.12.enter:
     mov      qword [rsi - 0],                  rdi
     mov      qword [rsi + 8],                  r11
     mov     qword [rsi + 16],                  r12
main.13.exit:
     mov                  rdi,                  208
     neg                  rdi
     mov                  r12,                  150
     neg                  r12
     mov                  rsi,                   r9
     mov                  r11,                  585
main.14.enter:
     mov      qword [rsi - 0],                  rdi
     mov      qword [rsi + 8],                  r11
     mov     qword [rsi + 16],                  r12
main.15.exit:
     mov                  r11,                  670
     neg                  r11
     mov                  r12,                  742
     neg                  r12
     mov                  rsi,                   r8
     mov                  rdi,                  360
main.16.enter:
     mov      qword [rsi - 0],                  rdi
     mov      qword [rsi + 8],                  r11
     mov     qword [rsi + 16],                  r12
main.17.exit:
     mov                  rdi,                   29
     neg                  rdi
     mov                  r11,                  591
     neg                  r11
     mov                  r12,                  960
     neg                  r12
     mov                  rsi,                  rbx
main.18.enter:
     mov      qword [rsi - 0],                  rdi
     mov      qword [rsi + 8],                  r11
     mov     qword [rsi + 16],                  r12
main.19.exit:
     mov                  rsi,                  r10
     mov                  rdi,                   r9
main.20.enter:
     mov                  r11,      qword [rsi - 0]
     add                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     add                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     add                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.21.exit:
     mov                  rsi,                   r9
     mov                  rdi,                   r8
main.22.enter:
     mov                  r11,      qword [rsi - 0]
     add                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     add                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     add                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.23.exit:
     mov                  rsi,                  rbx
     mov                  rdi,                   r8
main.24.enter:
     mov                  r11,      qword [rsi - 0]
     add                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     add                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     add                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.25.exit:
     mov                  rsi,                   r8
     mov                  rdi,                  r10
main.26.enter:
     mov                  r11,      qword [rsi - 0]
     sub                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     sub                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     sub                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.27.exit:
     mov                  rsi,                   r9
     mov                  rdi,                  rbx
main.28.enter:
     mov                  r11,      qword [rsi - 0]
     sub                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     sub                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     sub                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.29.exit:
     mov                  rsi,                  rbx
     mov                  rdi,                   r8
main.30.enter:
     mov                  r11,      qword [rsi - 0]
     sub                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     sub                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     sub                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.31.exit:
     mov                  rsi,                   r8
     mov                  rdi,                   r9
main.32.enter:
     mov                  r11,      qword [rsi - 0]
     add                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     add                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     add                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.33.exit:
     mov                  rsi,                  r10
     mov                  rdi,                   r9
main.34.enter:
     mov                  r11,      qword [rsi - 0]
     add                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     add                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     add                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.35.exit:
     mov                  rsi,                   r9
     mov                  rdi,                   r9
main.36.enter:
     mov                  r11,      qword [rsi - 0]
     add                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     add                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     add                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.37.exit:
     mov                  rsi,                   r8
     mov                  rdi,                   r8
main.38.enter:
     mov                  r11,      qword [rsi - 0]
     add                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     add                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     add                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.39.exit:
     mov                  rsi,                  r10
     mov                  rdi,                  rbx
main.40.enter:
     mov                  r11,      qword [rsi - 0]
     sub                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     sub                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     sub                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.41.exit:
     mov                  rsi,                  r10
     mov                  rdi,                   r9
main.42.enter:
     mov                  r11,      qword [rsi - 0]
     add                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     add                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     add                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.43.exit:
     mov                  rsi,                   r9
     mov                  rdi,                   r8
main.44.enter:
     mov                  r11,      qword [rsi - 0]
     sub                  r11,      qword [rdi - 0]
     mov      qword [rsi - 0],                  r11
     mov                  r11,      qword [rsi + 8]
     sub                  r11,      qword [rdi + 8]
     mov      qword [rsi + 8],                  r11
     mov                  r11,     qword [rsi + 16]
     sub                  r11,     qword [rdi + 16]
     mov     qword [rsi + 16],                  r11
main.45.exit:
     mov                  rsi,                  r10
main.46.enter:
     mov                  r11,      qword [rsi - 0]
    imul                  r11,      qword [rsi - 0]
     mov                  rdi,      qword [rsi + 8]
    imul                  rdi,      qword [rsi + 8]
     add                  r11,                  rdi
     mov                  rdi,     qword [rsi + 16]
    imul                  rdi,     qword [rsi + 16]
     mov                  rsi,                  r11
     add                  rsi,                  rdi
main.47.exit:
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                   r9
main.48.enter:
     mov                  rdi,      qword [rsi - 0]
    imul                  rdi,      qword [rsi - 0]
     mov                  r11,      qword [rsi + 8]
    imul                  r11,      qword [rsi + 8]
     add                  rdi,                  r11
     mov                  r11,     qword [rsi + 16]
    imul                  r11,     qword [rsi + 16]
     mov                  rsi,                  rdi
     add                  rsi,                  r11
main.49.exit:
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rdi,                   r9
     mov                  rsi,                   r8
main.50.enter:
     mov                  r11,      qword [rdi - 0]
     sub                  r11,      qword [rsi - 0]
     mov                  r12,      qword [rdi - 0]
     sub                  r12,      qword [rsi - 0]
    imul                  r11,                  r12
     mov                  r13,      qword [rdi + 8]
     sub                  r13,      qword [rsi + 8]
     mov                  r12,      qword [rdi + 8]
     sub                  r12,      qword [rsi + 8]
    imul                  r13,                  r12
     add                  r11,                  r13
     mov                  r12,     qword [rdi + 16]
     sub                  r12,     qword [rsi + 16]
     mov                  rdi,     qword [rdi + 16]
     sub                  rdi,     qword [rsi + 16]
     mov                  rsi,                  r12
    imul                  rsi,                  rdi
     mov                  rdi,                  r11
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
main.51.exit:
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rdi,                  rbx
     mov                  rsi,                  r10
main.52.enter:
     mov                  r11,      qword [rdi - 0]
     sub                  r11,      qword [rsi - 0]
     mov                  r12,      qword [rdi - 0]
     sub                  r12,      qword [rsi - 0]
    imul                  r11,                  r12
     mov                  r13,      qword [rdi + 8]
     sub                  r13,      qword [rsi + 8]
     mov                  r12,      qword [rdi + 8]
     sub                  r12,      qword [rsi + 8]
    imul                  r13,                  r12
     add                  r11,                  r13
     mov                  r12,     qword [rdi + 16]
     sub                  r12,     qword [rsi + 16]
     mov                  rdi,     qword [rdi + 16]
     sub                  rdi,     qword [rsi + 16]
     mov                  rsi,                  r12
    imul                  rsi,                  rdi
     mov                  rdi,                  r11
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
main.53.exit:
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
main.54.enter:
     mov                  rdi,       qword [r8 - 0]
    imul                  rdi,      qword [r10 - 0]
     mov                  rsi,       qword [r8 + 8]
    imul                  rsi,      qword [r10 + 8]
     add                  rdi,                  rsi
     mov                  rsi,      qword [r8 + 16]
    imul                  rsi,     qword [r10 + 16]
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
main.55.exit:
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
main.56.enter:
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
     mov                  rdi,                   24
    call               malloc
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call           point.null
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rdi,                  rsi
     mov                  rsi,       qword [r9 + 8]
    imul                  rsi,     qword [rbx + 16]
     mov                  r11,      qword [r9 + 16]
    imul                  r11,      qword [rbx + 8]
     sub                  rsi,                  r11
     mov                  r11,      qword [r9 + 16]
    imul                  r11,      qword [rbx - 0]
     mov                  r12,       qword [r9 - 0]
    imul                  r12,     qword [rbx + 16]
     sub                  r11,                  r12
     mov                  r12,       qword [r9 - 0]
    imul                  r12,      qword [rbx + 8]
     mov                  r13,       qword [r9 + 8]
    imul                  r13,      qword [rbx - 0]
     sub                  r12,                  r13
     mov                  rdx,                  r11
     mov                  rcx,                  r12
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call            point.set
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rdi
main.57.exit:
     mov                  r11,                  rsi
main.58.enter:
     mov                  rdi,      qword [r11 - 0]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,      __string_const8
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const9
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,      qword [r11 + 8]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r12,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r12
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const10
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,     qword [r11 + 16]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r11,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const11
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
main.59.exit:
     mov                  r11,                  r10
main.60.enter:
     mov                  rdi,      qword [r11 - 0]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,     __string_const12
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const13
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,      qword [r11 + 8]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r10
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const14
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,     qword [r11 + 16]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r10
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const15
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
main.61.exit:
     mov                  r11,                   r9
main.62.enter:
     mov                  rdi,      qword [r11 - 0]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,     __string_const16
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const17
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,      qword [r11 + 8]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                   r9,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const18
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,     qword [r11 + 16]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                   r9,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const19
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
main.63.exit:
     mov                  r11,                   r8
main.64.enter:
     mov                  rdi,      qword [r11 - 0]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,     __string_const20
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const21
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,      qword [r11 + 8]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                   r8,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const22
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,     qword [r11 + 16]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                   r8,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,     __string_const23
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
main.65.exit:
     mov                  r11,                  rbx
main.66.enter:
     mov                  rdi,      qword [r11 - 0]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,     __string_const24
     mov                  rsi,                  rbx
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,     __string_const25
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,      qword [r11 + 8]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,     __string_const26
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,     qword [r11 + 16]
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rsi,     __string_const27
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call  __string_connection
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
main.67.exit:
     mov                  rax,                    0
main.1.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                    0
     pop                  rbp
     ret
point.set:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
point.set.0.enter:
     mov                  rbx,                  rdi
     mov                  rdi,                  rdx
     mov                   r8,                  rcx
     mov      qword [rbx - 0],                  rsi
     mov      qword [rbx + 8],                  rdi
     mov     qword [rbx + 16],                   r8
point.set.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
point.add:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
point.add.0.enter:
     mov                  rbx,                  rdi
     mov                  rdi,      qword [rbx - 0]
     add                  rdi,      qword [rsi - 0]
     mov      qword [rbx - 0],                  rdi
     mov                  rdi,      qword [rbx + 8]
     add                  rdi,      qword [rsi + 8]
     mov      qword [rbx + 8],                  rdi
     mov                  rdi,     qword [rbx + 16]
     add                  rdi,     qword [rsi + 16]
     mov     qword [rbx + 16],                  rdi
     mov                  rax,                  rbx
point.add.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
point.sub:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
point.sub.0.enter:
     mov                  rbx,                  rdi
     mov                  rdi,      qword [rbx - 0]
     sub                  rdi,      qword [rsi - 0]
     mov      qword [rbx - 0],                  rdi
     mov                  rdi,      qword [rbx + 8]
     sub                  rdi,      qword [rsi + 8]
     mov      qword [rbx + 8],                  rdi
     mov                  rdi,     qword [rbx + 16]
     sub                  rdi,     qword [rsi + 16]
     mov     qword [rbx + 16],                  rdi
     mov                  rax,                  rbx
point.sub.1.exit:
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
      dq                    1
__string_const0:
      db               "(", 0
      dq                    2
__string_const1:
      db              ", ", 0
      dq                    2
__string_const2:
      db              ", ", 0
      dq                    1
__string_const3:
      db               ")", 0
      dq                    1
__string_const4:
      db               "(", 0
      dq                    2
__string_const5:
      db              ", ", 0
      dq                    2
__string_const6:
      db              ", ", 0
      dq                    1
__string_const7:
      db               ")", 0
      dq                    1
__string_const8:
      db               "(", 0
      dq                    2
__string_const9:
      db              ", ", 0
      dq                    2
__string_const10:
      db              ", ", 0
      dq                    1
__string_const11:
      db               ")", 0
      dq                    1
__string_const12:
      db               "(", 0
      dq                    2
__string_const13:
      db              ", ", 0
      dq                    2
__string_const14:
      db              ", ", 0
      dq                    1
__string_const15:
      db               ")", 0
      dq                    1
__string_const16:
      db               "(", 0
      dq                    2
__string_const17:
      db              ", ", 0
      dq                    2
__string_const18:
      db              ", ", 0
      dq                    1
__string_const19:
      db               ")", 0
      dq                    1
__string_const20:
      db               "(", 0
      dq                    2
__string_const21:
      db              ", ", 0
      dq                    2
__string_const22:
      db              ", ", 0
      dq                    1
__string_const23:
      db               ")", 0
      dq                    1
__string_const24:
      db               "(", 0
      dq                    2
__string_const25:
      db              ", ", 0
      dq                    2
__string_const26:
      db              ", ", 0
      dq                    1
__string_const27:
      db               ")", 0
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
