global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
search:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
search.0.enter:
     mov                   r8,                  rdi
     mov                  rbx,                  rsi
     mov                   r9,                  rdx
     cmp                  rbx,                    0
      jg search.2.logical_true
search.1.logical_false:
     cmp                  rbx,                    0
     mov                  rsi,                    0
    setl                  sil
     jmp search.3.logical_exit
search.2.logical_true:
     mov                  rsi,                    1
search.3.logical_exit:
     cmp                  rsi,                    1
      je search.5.logical_true
search.4.logical_false:
     cmp                   r8,                    0
     mov                  rsi,                    0
    sete                  sil
     jmp search.6.logical_exit
search.5.logical_true:
     mov                  rsi,                    1
search.6.logical_exit:
     cmp                  rsi,                    1
      je search.8.logical_true
search.7.logical_false:
     mov                  rdi,                   r8
     sub                  rdi,                    1
    imul                  rdi,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  r10,                   r8
     sub                  r10,                    1
    imul                  r10,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                  r10
     mov                  r10,                    1
    imul                  r10,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  r10
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,      qword [rdi - 0]
     mov                  r10,                   r8
     sub                  r10,                    1
    imul                  r10,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                  r10
     mov                  r10,                    2
    imul                  r10,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  r10
     add                  rsi,      qword [rdi - 0]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     jmp search.9.logical_exit
search.8.logical_true:
     mov                  rsi,                    1
search.9.logical_exit:
     cmp                  rsi,                    1
      je    search.10.if_true
     jmp       search.73.exit
search.10.if_true:
     cmp                   r8,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne search.12.logical_false
search.11.logical_true:
     cmp                  rbx,                    2
     mov                  rsi,                    0
    sete                  sil
     jmp search.13.logical_exit
search.12.logical_false:
     mov                  rsi,                    0
search.13.logical_exit:
     cmp                  rsi,                    1
      je    search.14.if_true
     jmp   search.44.if_false
search.14.if_true:
     mov                  rsi,                    2
    imul                  rsi,                    8
     mov                  rbx,    qword [@make - 0]
     add                  rbx,                  rsi
     mov                  rsi,                    2
    imul                  rsi,                    8
     mov                  rbx,      qword [rbx - 0]
     add                  rbx,                  rsi
     mov                  rsi,                   45
     sub                  rsi,                   r9
     mov      qword [rbx - 0],                  rsi
     mov                  rbx,                    0
    imul                  rbx,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rbx
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rbx,      qword [rsi - 0]
     add                  rbx,                  rdi
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    1
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rbx,      qword [rbx - 0]
     add                  rbx,      qword [rsi - 0]
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    2
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     add                  rbx,      qword [rsi - 0]
     mov                  rdi,                    1
    imul                  rdi,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                   r8,                    1
    imul                   r8,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                   r8
     mov                   r8,                    1
    imul                   r8,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                   r8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,      qword [rdi - 0]
     mov                   r8,                    1
    imul                   r8,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                   r8
     mov                   r8,                    2
    imul                   r8,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                   r8
     add                  rsi,      qword [rdi - 0]
     cmp                  rsi,                  rbx
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
     jne search.16.logical_false
search.15.logical_true:
     mov                  rdi,                    2
    imul                  rdi,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    2
    imul                  rdi,                    8
     mov                   r9,    qword [@make - 0]
     add                   r9,                  rdi
     mov                   r8,                    1
    imul                   r8,                    8
     mov                  rdi,       qword [r9 - 0]
     add                  rdi,                   r8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,      qword [rdi - 0]
     mov                   r8,                    2
    imul                   r8,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                   r8
     mov                   r8,                    2
    imul                   r8,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                   r8
     add                  rsi,      qword [rdi - 0]
     cmp                  rsi,                  rbx
     mov                  rsi,                    0
    sete                  sil
     jmp search.17.logical_exit
search.16.logical_false:
     mov                  rsi,                    0
search.17.logical_exit:
     cmp                  rsi,                    1
     jne search.19.logical_false
search.18.logical_true:
     mov                  rsi,                    0
    imul                  rsi,                    8
     mov                   r8,    qword [@make - 0]
     add                   r8,                  rsi
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,       qword [r8 - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    1
    imul                  rdi,                    8
     mov                   r8,    qword [@make - 0]
     add                   r8,                  rdi
     mov                   r9,                    0
    imul                   r9,                    8
     mov                  rdi,       qword [r8 - 0]
     add                  rdi,                   r9
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,      qword [rdi - 0]
     mov                  rdi,                    2
    imul                  rdi,                    8
     mov                   r8,    qword [@make - 0]
     add                   r8,                  rdi
     mov                   r9,                    0
    imul                   r9,                    8
     mov                  rdi,       qword [r8 - 0]
     add                  rdi,                   r9
     add                  rsi,      qword [rdi - 0]
     cmp                  rsi,                  rbx
     mov                  rsi,                    0
    sete                  sil
     jmp search.20.logical_exit
search.19.logical_false:
     mov                  rsi,                    0
search.20.logical_exit:
     cmp                  rsi,                    1
     jne search.22.logical_false
search.21.logical_true:
     mov                  rsi,                    0
    imul                  rsi,                    8
     mov                   r8,    qword [@make - 0]
     add                   r8,                  rsi
     mov                  rdi,                    1
    imul                  rdi,                    8
     mov                  rsi,       qword [r8 - 0]
     add                  rsi,                  rdi
     mov                   r8,                    1
    imul                   r8,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                   r8
     mov                   r8,                    1
    imul                   r8,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                   r8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,      qword [rdi - 0]
     mov                  rdi,                    2
    imul                  rdi,                    8
     mov                   r8,    qword [@make - 0]
     add                   r8,                  rdi
     mov                  rdi,                    1
    imul                  rdi,                    8
     mov                   r8,       qword [r8 - 0]
     add                   r8,                  rdi
     add                  rsi,       qword [r8 - 0]
     cmp                  rsi,                  rbx
     mov                  rsi,                    0
    sete                  sil
     jmp search.23.logical_exit
search.22.logical_false:
     mov                  rsi,                    0
search.23.logical_exit:
     cmp                  rsi,                    1
     jne search.25.logical_false
search.24.logical_true:
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    2
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    1
    imul                  rdi,                    8
     mov                   r8,    qword [@make - 0]
     add                   r8,                  rdi
     mov                   r9,                    2
    imul                   r9,                    8
     mov                  rdi,       qword [r8 - 0]
     add                  rdi,                   r9
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,      qword [rdi - 0]
     mov                  rdi,                    2
    imul                  rdi,                    8
     mov                   r8,    qword [@make - 0]
     add                   r8,                  rdi
     mov                  rdi,                    2
    imul                  rdi,                    8
     mov                   r8,       qword [r8 - 0]
     add                   r8,                  rdi
     add                  rsi,       qword [r8 - 0]
     cmp                  rsi,                  rbx
     mov                  rsi,                    0
    sete                  sil
     jmp search.26.logical_exit
search.25.logical_false:
     mov                  rsi,                    0
search.26.logical_exit:
     cmp                  rsi,                    1
     jne search.28.logical_false
search.27.logical_true:
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                   r8,                    1
    imul                   r8,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                   r8
     mov                   r8,                    1
    imul                   r8,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                   r8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,      qword [rdi - 0]
     mov                   r8,                    2
    imul                   r8,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                   r8
     mov                   r8,                    2
    imul                   r8,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                   r8
     add                  rsi,      qword [rdi - 0]
     cmp                  rsi,                  rbx
     mov                  rsi,                    0
    sete                  sil
     jmp search.29.logical_exit
search.28.logical_false:
     mov                  rsi,                    0
search.29.logical_exit:
     cmp                  rsi,                    1
     jne search.31.logical_false
search.30.logical_true:
     mov                  rsi,                    2
    imul                  rsi,                    8
     mov                   r8,    qword [@make - 0]
     add                   r8,                  rsi
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  rsi,       qword [r8 - 0]
     add                  rsi,                  rdi
     mov                  rdi,                    1
    imul                  rdi,                    8
     mov                   r8,    qword [@make - 0]
     add                   r8,                  rdi
     mov                  rdi,                    1
    imul                  rdi,                    8
     mov                   r8,       qword [r8 - 0]
     add                   r8,                  rdi
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,       qword [r8 - 0]
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                   r8,    qword [@make - 0]
     add                   r8,                  rdi
     mov                  rdi,                    2
    imul                  rdi,                    8
     mov                   r8,       qword [r8 - 0]
     add                   r8,                  rdi
     add                  rsi,       qword [r8 - 0]
     cmp                  rsi,                  rbx
     mov                  rbx,                    0
    sete                   bl
     jmp search.32.logical_exit
search.31.logical_false:
     mov                  rbx,                    0
search.32.logical_exit:
     cmp                  rbx,                    1
      je    search.33.if_true
     jmp       search.73.exit
search.33.if_true:
     mov                  rsi,                    0
    imul                  rsi,                    8
     mov                  rbx,   qword [@count - 0]
     add                  rbx,                  rsi
     mov                  rsi,                    0
    imul                  rsi,                    8
     mov                  rdi,   qword [@count - 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
     add                  rsi,                    1
     mov      qword [rbx - 0],                  rsi
     mov                  r10,                    0
     jmp search.40.loop_condition
search.34.loop_body:
     mov                  rbx,                    0
     jmp search.37.loop_condition
search.35.loop_body:
     mov                  rdi,                  r10
    imul                  rdi,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov                  rdi,      qword [rsi - 0]
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
    call                print
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rdi,      __string_const0
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call                print
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
search.36.loop_increment:
     add                  rbx,                    1
search.37.loop_condition:
     cmp                  rbx,                    2
     jle  search.35.loop_body
search.38.loop_exit:
     mov                  rdi,      __string_const1
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call                print
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
search.39.loop_increment:
     add                  r10,                    1
search.40.loop_condition:
     cmp                  r10,                    2
     jle  search.34.loop_body
search.41.loop_exit:
     mov                  rdi,      __string_const2
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call                print
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     jmp       search.73.exit
search.44.if_false:
     cmp                  rbx,                    2
      je    search.45.if_true
     jmp   search.58.if_false
search.45.if_true:
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  r10,    qword [@make - 0]
     add                  r10,                  rsi
     mov                  rdi,                  rbx
    imul                  rdi,                    8
     mov                  rsi,      qword [r10 - 0]
     add                  rsi,                  rdi
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  r10,    qword [@make - 0]
     add                  r10,                  rdi
     mov                  rdi,                    0
    imul                  rdi,                    8
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  rdi
     mov                  rdi,                   15
     sub                  rdi,      qword [r10 - 0]
     mov                  r11,                   r8
    imul                  r11,                    8
     mov                  r10,    qword [@make - 0]
     add                  r10,                  r11
     mov                  r11,                    1
    imul                  r11,                    8
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  r11
     sub                  rdi,      qword [r10 - 0]
     mov      qword [rsi - 0],                  rdi
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
     jne search.47.logical_false
search.46.logical_true:
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                   10
     mov                  rsi,                    0
    setl                  sil
     jmp search.48.logical_exit
search.47.logical_false:
     mov                  rsi,                    0
search.48.logical_exit:
     cmp                  rsi,                    1
     jne search.50.logical_false
search.49.logical_true:
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
    imul                  rsi,                    8
     mov                  rdi,   qword [@color - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
     mov                  rsi,                    0
    sete                  sil
     jmp search.51.logical_exit
search.50.logical_false:
     mov                  rsi,                    0
search.51.logical_exit:
     cmp                  rsi,                    1
      je    search.52.if_true
     jmp       search.73.exit
search.52.if_true:
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov                  rsi,      qword [rdi - 0]
    imul                  rsi,                    8
     mov                  rdi,   qword [@color - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    1
     cmp                  rbx,                    2
      je    search.53.if_true
     jmp   search.54.if_false
search.53.if_true:
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                  r10,                   r8
    imul                  r10,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                  r10
     mov                  r10,                  rbx
    imul                  r10,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  r10
     add                   r9,      qword [rdi - 0]
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                   r9
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call               search
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     jmp    search.55.if_exit
search.54.if_false:
     mov                  rsi,                  rbx
     add                  rsi,                    1
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  r10,    qword [@make - 0]
     add                  r10,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    8
     mov                  r10,      qword [r10 - 0]
     add                  r10,                  rdi
     add                   r9,      qword [r10 - 0]
     mov                  rdi,                   r8
     mov                  rdx,                   r9
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call               search
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
search.55.if_exit:
    imul                   r8,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                   r8
    imul                  rbx,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rbx
     mov                  rbx,      qword [rsi - 0]
    imul                  rbx,                    8
     mov                  rsi,   qword [@color - 0]
     add                  rsi,                  rbx
     mov      qword [rsi - 0],                    0
     jmp       search.73.exit
search.58.if_false:
     mov                  r10,                    1
     jmp search.67.loop_condition
search.59.loop_body:
     mov                  rsi,                  r10
    imul                  rsi,                    8
     mov                  rdi,   qword [@color - 0]
     add                  rdi,                  rsi
     cmp      qword [rdi - 0],                    0
      je    search.60.if_true
     jmp search.66.loop_increment
search.60.if_true:
     mov                  rsi,                  r10
    imul                  rsi,                    8
     mov                  rdi,   qword [@color - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    1
     mov                  rdi,                   r8
    imul                  rdi,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                    8
     mov                  rsi,      qword [rsi - 0]
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                  r10
     cmp                  rbx,                    2
      je    search.61.if_true
     jmp   search.62.if_false
search.61.if_true:
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                  r11,                   r9
     add                  r11,                  r10
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  r11
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call               search
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     jmp    search.63.if_exit
search.62.if_false:
     mov                  rsi,                  rbx
     add                  rsi,                    1
     mov                  r11,                   r9
     add                  r11,                  r10
     mov                  rdi,                   r8
     mov                  rdx,                  r11
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rdx
    push                  rsi
    call               search
     pop                  rsi
     pop                  rdx
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
search.63.if_exit:
     mov                  rsi,                   r8
    imul                  rsi,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    0
     mov                  rdi,                  r10
    imul                  rdi,                    8
     mov                  rsi,   qword [@color - 0]
     add                  rsi,                  rdi
     mov      qword [rsi - 0],                    0
search.66.loop_increment:
     add                  r10,                    1
search.67.loop_condition:
     cmp                  r10,                    9
     jle  search.59.loop_body
search.73.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
     mov                  rbx,                   10
     add                  rbx,                    1
    imul                  rbx,                    8
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],                   10
     add                  rbx,                    8
     mov   qword [@color - 0],                  rbx
     mov                  rbx,                    1
     add                  rbx,                    1
    imul                  rbx,                    8
     mov                  rdi,                  rbx
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov                  rbx,                  rax
     mov      qword [rbx - 0],                    1
     add                  rbx,                    8
     mov   qword [@count - 0],                  rbx
@GlobalDeclaration.1.exit:
     pop                  rbx
     add                  rsp,                    0
     pop                  rbp
     ret
origin:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
     sub                  rsp,                    0
origin.0.enter:
     mov                  rbx,                  rdi
     mov                  rsi,                  rbx
     add                  rsi,                    1
    imul                  rsi,                    8
    push                  rdi
    push                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov      qword [rsi - 0],                  rbx
     add                  rsi,                    8
     mov    qword [@make - 0],                  rsi
     mov       qword [@i - 0],                    0
     jmp origin.7.loop_condition
origin.1.loop_body:
     mov                  rdi,       qword [@i - 0]
    imul                  rdi,                    8
     mov                  rsi,    qword [@make - 0]
     add                  rsi,                  rdi
     mov                  rdi,                  rbx
     add                  rdi,                    1
    imul                  rdi,                    8
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov      qword [rdi - 0],                  rbx
     add                  rdi,                    8
     mov      qword [rsi - 0],                  rdi
     mov       qword [@j - 0],                    0
     jmp origin.4.loop_condition
origin.2.loop_body:
     mov                  rsi,       qword [@i - 0]
    imul                  rsi,                    8
     mov                  rdi,    qword [@make - 0]
     add                  rdi,                  rsi
     mov                  rsi,       qword [@j - 0]
    imul                  rsi,                    8
     mov                  rdi,      qword [rdi - 0]
     add                  rdi,                  rsi
     mov      qword [rdi - 0],                    0
origin.3.loop_increment:
     add       qword [@j - 0],                    1
origin.4.loop_condition:
     cmp       qword [@j - 0],                  rbx
      jl   origin.2.loop_body
origin.6.loop_increment:
     add       qword [@i - 0],                    1
origin.7.loop_condition:
     cmp       qword [@i - 0],                  rbx
      jl   origin.1.loop_body
origin.9.exit:
     pop                  rbx
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
     mov                  rdi,                    3
    push                  rdi
    push                  rdx
    push                  rsi
    call               origin
     pop                  rsi
     pop                  rdx
     pop                  rdi
     mov                  rdi,                    0
     mov                  rsi,                    0
     mov                  rdx,                    0
    push                  rdi
    push                  rdx
    push                  rsi
    call               search
     pop                  rsi
     pop                  rdx
     pop                  rdi
     mov                  rbx,                    0
    imul                  rbx,                    8
     mov                  rsi,   qword [@count - 0]
     add                  rsi,                  rbx
     mov                  rdi,      qword [rsi - 0]
    push                  rdi
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                  rdx
    push                  rsi
    call              println
     pop                  rsi
     pop                  rdx
     pop                  rdi
     mov                  rax,                    0
main.1.exit:
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
      dq                    2
__string_const1:
      db        "", 10, "", 0
      dq                    2
__string_const2:
      db        "", 10, "", 0
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
@make:
    resq                    1
@color:
    resq                    1
@count:
    resq                    1
@i:
    resq                    1
@j:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
