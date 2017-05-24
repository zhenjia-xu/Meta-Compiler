global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
random:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   64
random.0.enter:
     mov                  rax,    qword [@seed - 0]
     mov      qword [rbp - 8],                  rax
     mov                  rax,      qword [rbp - 8]
     mov                  rcx,       qword [@Q - 0]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov      qword [rbp - 8],                  rdx
     mov                  rax,       qword [@A - 0]
     mov     qword [rbp - 16],                  rax
     mov                  rax,     qword [rbp - 16]
    imul                  rax,      qword [rbp - 8]
     mov     qword [rbp - 16],                  rax
     mov                  rax,    qword [@seed - 0]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 24]
     mov                  rcx,       qword [@Q - 0]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov     qword [rbp - 24],                  rax
     mov                  rax,       qword [@R - 0]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 32]
    imul                  rax,     qword [rbp - 24]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 32]
     sub     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 40]
     mov     qword [rbp - 48],                  rax
     cmp     qword [rbp - 48],                    0
     mov                  rax,     qword [rbp - 56]
     mov                  rax,                    0
   setge                   al
     mov     qword [rbp - 56],                  rax
     cmp     qword [rbp - 56],                    1
      je     random.1.if_true
     jmp    random.2.if_false
random.1.if_true:
     mov                  rax,     qword [rbp - 48]
     jmp        random.4.exit
random.2.if_false:
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 64],                  rax
     mov                  rax,       qword [@M - 0]
     add     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     jmp        random.4.exit
random.3.if_exit:
random.4.exit:
     add                  rsp,                   64
     pop                  rbp
     ret
move:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   72
move.0.enter:
     mov      qword [rbp - 8],                    0
     jmp move.3.loop_condition
move.1.loop_body:
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 16],                  rax
     mov                  rax,     qword [rbp - 16]
    imul                  rax,                    8
     mov     qword [rbp - 16],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 16]
     add     qword [rbp - 24],                  rax
     mov                  rcx,     qword [rbp - 24]
     sub      qword [rcx - 0],                    1
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 32],                  rax
     add     qword [rbp - 32],                    1
     mov                  rax,     qword [rbp - 32]
     mov      qword [rbp - 8],                  rax
     jmp move.2.loop_increment
move.2.loop_increment:
     jmp move.3.loop_condition
move.3.loop_condition:
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,     qword [@now - 0]
     mov                  rax,     qword [rbp - 40]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 40],                  rax
     cmp     qword [rbp - 40],                    1
      je     move.1.loop_body
     jmp     move.4.loop_exit
move.4.loop_exit:
     mov                  rax,     qword [@now - 0]
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 48]
    imul                  rax,                    8
     mov     qword [rbp - 48],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 56],                  rax
     mov                  rax,     qword [@now - 0]
     mov     qword [rbp - 64],                  rax
     mov                  rcx,     qword [rbp - 56]
     mov                  rax,     qword [rbp - 64]
     mov      qword [rcx - 0],                  rax
     mov                  rax,     qword [@now - 0]
     mov     qword [rbp - 72],                  rax
     add     qword [@now - 0],                    1
move.5.exit:
     add                  rsp,                   72
     pop                  rbp
     ret
pd:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
pd.0.enter:
     mov      qword [rbp - 8],                  rdi
     jmp  pd.6.loop_condition
pd.1.loop_body:
     mov                  rax,       qword [@h - 0]
     mov     qword [rbp - 16],                  rax
     add     qword [rbp - 16],                    1
     mov                  rax,       qword [@h - 0]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 24]
    imul                  rax,     qword [rbp - 16]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 32]
     mov                  rcx,                    2
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov     qword [rbp - 32],                  rax
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,     qword [rbp - 32]
     mov                  rax,     qword [rbp - 40]
     mov                  rax,                    0
    sete                   al
     mov     qword [rbp - 40],                  rax
     cmp     qword [rbp - 40],                    1
      je         pd.2.if_true
     jmp        pd.3.if_false
pd.2.if_true:
     mov                  rax,                    1
     jmp            pd.8.exit
pd.3.if_false:
     jmp         pd.4.if_exit
pd.4.if_exit:
     jmp  pd.5.loop_increment
pd.5.loop_increment:
     add       qword [@h - 0],                    1
     jmp  pd.6.loop_condition
pd.6.loop_condition:
     mov                  rax,       qword [@h - 0]
     cmp                  rax,      qword [rbp - 8]
     mov                  rax,     qword [rbp - 48]
     mov                  rax,                    0
   setle                   al
     mov     qword [rbp - 48],                  rax
     cmp     qword [rbp - 48],                    1
      je       pd.1.loop_body
     jmp       pd.7.loop_exit
pd.7.loop_exit:
     mov                  rax,                    0
     jmp            pd.8.exit
pd.8.exit:
     add                  rsp,                   48
     pop                  rbp
     ret
swap:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   96
swap.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                  rsi
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 24]
    imul                  rax,                    8
     mov     qword [rbp - 24],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 24]
     add     qword [rbp - 32],                  rax
     mov                  rcx,     qword [rbp - 32]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 48]
    imul                  rax,                    8
     mov     qword [rbp - 48],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
    imul                  rax,                    8
     mov     qword [rbp - 64],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 64]
     add     qword [rbp - 72],                  rax
     mov                  rcx,     qword [rbp - 72]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 80],                  rax
     mov                  rcx,     qword [rbp - 56]
     mov                  rax,     qword [rbp - 80]
     mov      qword [rcx - 0],                  rax
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 88]
    imul                  rax,                    8
     mov     qword [rbp - 88],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 88]
     add     qword [rbp - 96],                  rax
     mov                  rcx,     qword [rbp - 96]
     mov                  rax,     qword [rbp - 40]
     mov      qword [rcx - 0],                  rax
swap.1.exit:
     add                  rsp,                   96
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
     mov       qword [@A - 0],                48271
     mov       qword [@M - 0],           2147483647
     mov    qword [@seed - 0],                    1
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
merge:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  120
merge.0.enter:
     mov      qword [rbp - 8],                    0
     jmp merge.13.loop_condition
merge.1.loop_body:
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 16],                  rax
     mov                  rax,     qword [rbp - 16]
    imul                  rax,                    8
     mov     qword [rbp - 16],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 16]
     add     qword [rbp - 24],                  rax
     mov                  rcx,     qword [rbp - 24]
     cmp      qword [rcx - 0],                    0
     mov                  rax,     qword [rbp - 32]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 32],                  rax
     cmp     qword [rbp - 32],                    1
      je      merge.2.if_true
     jmp    merge.10.if_false
merge.2.if_true:
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 40],                  rax
     add     qword [rbp - 40],                    1
     mov                  rax,     qword [rbp - 40]
     mov     qword [rbp - 48],                  rax
     jmp merge.8.loop_condition
merge.3.loop_body:
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 56]
    imul                  rax,                    8
     mov     qword [rbp - 56],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 56]
     add     qword [rbp - 64],                  rax
     mov                  rcx,     qword [rbp - 64]
     cmp      qword [rcx - 0],                    0
     mov                  rax,     qword [rbp - 72]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 72],                  rax
     cmp     qword [rbp - 72],                    1
      je      merge.4.if_true
     jmp     merge.5.if_false
merge.4.if_true:
     mov                  rdi,      qword [rbp - 8]
     mov                  rsi,     qword [rbp - 48]
     sub                  rsp,                    8
    call                 swap
     add                  rsp,                    8
     jmp    merge.9.loop_exit
merge.5.if_false:
     jmp      merge.6.if_exit
merge.6.if_exit:
     jmp merge.7.loop_increment
merge.7.loop_increment:
     add     qword [rbp - 48],                    1
     jmp merge.8.loop_condition
merge.8.loop_condition:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,     qword [@now - 0]
     mov                  rax,     qword [rbp - 80]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 80],                  rax
     cmp     qword [rbp - 80],                    1
      je    merge.3.loop_body
     jmp    merge.9.loop_exit
merge.9.loop_exit:
     jmp     merge.11.if_exit
merge.10.if_false:
     jmp     merge.11.if_exit
merge.11.if_exit:
     jmp merge.12.loop_increment
merge.12.loop_increment:
     add      qword [rbp - 8],                    1
     jmp merge.13.loop_condition
merge.13.loop_condition:
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,     qword [@now - 0]
     mov                  rax,     qword [rbp - 88]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 88],                  rax
     cmp     qword [rbp - 88],                    1
      je    merge.1.loop_body
     jmp   merge.14.loop_exit
merge.14.loop_exit:
     mov      qword [rbp - 8],                    0
     jmp merge.20.loop_condition
merge.15.loop_body:
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
    imul                  rax,                    8
     mov     qword [rbp - 96],                  rax
     mov                  rax,       qword [@a - 0]
     mov    qword [rbp - 104],                  rax
     mov                  rax,     qword [rbp - 96]
     add    qword [rbp - 104],                  rax
     mov                  rcx,    qword [rbp - 104]
     cmp      qword [rcx - 0],                    0
     mov                  rax,    qword [rbp - 112]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 112],                  rax
     cmp    qword [rbp - 112],                    1
      je     merge.16.if_true
     jmp    merge.17.if_false
merge.16.if_true:
     mov                  rax,      qword [rbp - 8]
     mov     qword [@now - 0],                  rax
     jmp   merge.21.loop_exit
merge.17.if_false:
     jmp     merge.18.if_exit
merge.18.if_exit:
     jmp merge.19.loop_increment
merge.19.loop_increment:
     add      qword [rbp - 8],                    1
     jmp merge.20.loop_condition
merge.20.loop_condition:
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,     qword [@now - 0]
     mov                  rax,    qword [rbp - 120]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 120],                  rax
     cmp    qword [rbp - 120],                    1
      je   merge.15.loop_body
     jmp   merge.21.loop_exit
merge.21.loop_exit:
merge.22.exit:
     add                  rsp,                  120
     pop                  rbp
     ret
show:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
show.0.enter:
     mov      qword [rbp - 8],                    0
     jmp show.3.loop_condition
show.1.loop_body:
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 16],                  rax
     mov                  rax,     qword [rbp - 16]
    imul                  rax,                    8
     mov     qword [rbp - 16],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 16]
     add     qword [rbp - 24],                  rax
     mov                  rcx,     qword [rbp - 24]
     mov                  rdi,      qword [rcx - 0]
    call             toString
     mov     qword [rbp - 32],                  rax
     mov                  rdi,     qword [rbp - 32]
     mov                  rsi,      __string_const0
    call  __string_connection
     mov     qword [rbp - 40],                  rax
     mov                  rdi,     qword [rbp - 40]
    call                print
     jmp show.2.loop_increment
show.2.loop_increment:
     add      qword [rbp - 8],                    1
     jmp show.3.loop_condition
show.3.loop_condition:
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,     qword [@now - 0]
     mov                  rax,     qword [rbp - 48]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 48],                  rax
     cmp     qword [rbp - 48],                    1
      je     show.1.loop_body
     jmp     show.4.loop_exit
show.4.loop_exit:
     mov                  rdi,      __string_const1
    call              println
show.5.exit:
     add                  rsp,                   48
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                  352
main.0.enter:
     mov      qword [rbp - 8],                    0
     mov     qword [rbp - 16],                    0
     mov     qword [rbp - 24],                    0
    call               getInt
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 32]
     mov       qword [@n - 0],                  rax
     mov     qword [rbp - 40],                  100
     add     qword [rbp - 40],                    1
     mov                  rax,     qword [rbp - 40]
    imul                  rax,                    8
     mov     qword [rbp - 40],                  rax
     mov                  rdi,     qword [rbp - 40]
    call               malloc
     mov     qword [rbp - 48],                  rax
     sub     qword [rbp - 40],                    8
     mov                  rcx,     qword [rbp - 48]
     mov      qword [rcx - 0],                  100
     add     qword [rbp - 48],                    8
     mov                  rax,     qword [rbp - 48]
     mov       qword [@a - 0],                  rax
     mov                  rax,       qword [@M - 0]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 56]
     mov                  rcx,       qword [@A - 0]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 56]
     mov       qword [@Q - 0],                  rax
     mov                  rax,       qword [@M - 0]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     mov                  rcx,       qword [@A - 0]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov     qword [rbp - 64],                  rdx
     mov                  rax,     qword [rbp - 64]
     mov       qword [@R - 0],                  rax
     mov                  rdi,       qword [@n - 0]
    call                   pd
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     mov     qword [rbp - 80],                  rax
     cmp     qword [rbp - 80],                    1
     mov                  rax,     qword [rbp - 80]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 80],                  rax
     cmp     qword [rbp - 80],                    1
      je       main.1.if_true
     jmp      main.2.if_false
main.1.if_true:
     mov                  rdi,      __string_const2
    call              println
     mov                  rax,                    1
     jmp         main.14.exit
main.2.if_false:
     jmp       main.3.if_exit
main.3.if_exit:
     mov                  rdi,      __string_const3
    call              println
     mov                  rdi,              3654898
    call           initialize
    call               random
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 88]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
     mov                  rcx,                   10
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov     qword [rbp - 96],                  rdx
     mov                  rax,     qword [rbp - 96]
     mov    qword [rbp - 104],                  rax
     add    qword [rbp - 104],                    1
     mov                  rax,    qword [rbp - 104]
     mov     qword [@now - 0],                  rax
     mov                  rdi,     qword [@now - 0]
    call             toString
     mov    qword [rbp - 112],                  rax
     mov                  rdi,    qword [rbp - 112]
    call              println
     jmp main.9.loop_condition
main.4.loop_body:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 120]
    imul                  rax,                    8
     mov    qword [rbp - 120],                  rax
     mov                  rax,       qword [@a - 0]
     mov    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 120]
     add    qword [rbp - 128],                  rax
    call               random
     mov    qword [rbp - 136],                  rax
     mov                  rax,    qword [rbp - 136]
     mov    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
     mov                  rcx,                   10
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 144],                  rdx
     mov                  rax,    qword [rbp - 144]
     mov    qword [rbp - 152],                  rax
     add    qword [rbp - 152],                    1
     mov                  rcx,    qword [rbp - 128]
     mov                  rax,    qword [rbp - 152]
     mov      qword [rcx - 0],                  rax
     jmp main.6.loop_condition
main.5.loop_body:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 160],                  rax
     mov                  rax,    qword [rbp - 160]
    imul                  rax,                    8
     mov    qword [rbp - 160],                  rax
     mov                  rax,       qword [@a - 0]
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 160]
     add    qword [rbp - 168],                  rax
    call               random
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 176]
     mov    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp - 184]
     mov                  rcx,                   10
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 184],                  rdx
     mov                  rax,    qword [rbp - 184]
     mov    qword [rbp - 192],                  rax
     add    qword [rbp - 192],                    1
     mov                  rcx,    qword [rbp - 168]
     mov                  rax,    qword [rbp - 192]
     mov      qword [rcx - 0],                  rax
     jmp main.6.loop_condition
main.6.loop_condition:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 200]
    imul                  rax,                    8
     mov    qword [rbp - 200],                  rax
     mov                  rax,       qword [@a - 0]
     mov    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp - 200]
     add    qword [rbp - 208],                  rax
     mov                  rcx,    qword [rbp - 208]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 216],                  rax
     mov                  rax,     qword [rbp - 16]
     add    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp - 216]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,    qword [rbp - 224]
     mov                  rax,                    0
    setg                   al
     mov    qword [rbp - 224],                  rax
     cmp    qword [rbp - 224],                    1
      je     main.5.loop_body
     jmp     main.7.loop_exit
main.7.loop_exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp - 232]
    imul                  rax,                    8
     mov    qword [rbp - 232],                  rax
     mov                  rax,       qword [@a - 0]
     mov    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp - 232]
     add    qword [rbp - 240],                  rax
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 248],                  rax
     mov                  rcx,    qword [rbp - 240]
     mov                  rax,      qword [rcx - 0]
     add    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp - 248]
     mov     qword [rbp - 16],                  rax
     jmp main.8.loop_increment
main.8.loop_increment:
     add      qword [rbp - 8],                    1
     jmp main.9.loop_condition
main.9.loop_condition:
     mov                  rax,     qword [@now - 0]
     mov    qword [rbp - 256],                  rax
     sub    qword [rbp - 256],                    1
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,    qword [rbp - 256]
     mov                  rax,    qword [rbp - 264]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 264],                  rax
     cmp    qword [rbp - 264],                    1
      je     main.4.loop_body
     jmp    main.10.loop_exit
main.10.loop_exit:
     mov                  rax,     qword [@now - 0]
     mov    qword [rbp - 272],                  rax
     sub    qword [rbp - 272],                    1
     mov                  rax,    qword [rbp - 272]
     mov    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp - 280]
    imul                  rax,                    8
     mov    qword [rbp - 280],                  rax
     mov                  rax,       qword [@a - 0]
     mov    qword [rbp - 288],                  rax
     mov                  rax,    qword [rbp - 280]
     add    qword [rbp - 288],                  rax
     mov                  rax,       qword [@n - 0]
     mov    qword [rbp - 296],                  rax
     mov                  rax,     qword [rbp - 16]
     sub    qword [rbp - 296],                  rax
     mov                  rcx,    qword [rbp - 288]
     mov                  rax,    qword [rbp - 296]
     mov      qword [rcx - 0],                  rax
    call                 show
    call                merge
     jmp main.12.loop_condition
main.11.loop_body:
     add     qword [rbp - 24],                    1
     mov                  rdi,     qword [rbp - 24]
    call             toString
     mov    qword [rbp - 304],                  rax
     mov                  rdi,      __string_const4
     mov                  rsi,    qword [rbp - 304]
    call  __string_connection
     mov    qword [rbp - 312],                  rax
     mov                  rdi,    qword [rbp - 312]
    call              println
    call                 move
    call                merge
    call                 show
     jmp main.12.loop_condition
main.12.loop_condition:
    call                  win
     mov    qword [rbp - 320],                  rax
     mov                  rax,    qword [rbp - 320]
     mov    qword [rbp - 328],                  rax
     cmp    qword [rbp - 328],                    1
     mov                  rax,    qword [rbp - 328]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 328],                  rax
     cmp    qword [rbp - 328],                    1
      je    main.11.loop_body
     jmp    main.13.loop_exit
main.13.loop_exit:
     mov                  rdi,     qword [rbp - 24]
    call             toString
     mov    qword [rbp - 336],                  rax
     mov                  rdi,      __string_const5
     mov                  rsi,    qword [rbp - 336]
    call  __string_connection
     mov    qword [rbp - 344],                  rax
     mov                  rdi,    qword [rbp - 344]
     mov                  rsi,      __string_const6
    call  __string_connection
     mov    qword [rbp - 352],                  rax
     mov                  rdi,    qword [rbp - 352]
    call              println
     mov                  rax,                    0
     jmp         main.14.exit
main.14.exit:
     add                  rsp,                  352
     pop                  rbp
     ret
initialize:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
initialize.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov                  rax,      qword [rbp - 8]
     mov    qword [@seed - 0],                  rax
initialize.1.exit:
     add                  rsp,                    8
     pop                  rbp
     ret
win:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  304
win.0.enter:
     mov      qword [rbp - 8],                  100
     add      qword [rbp - 8],                    1
     mov                  rax,      qword [rbp - 8]
    imul                  rax,                    8
     mov      qword [rbp - 8],                  rax
     mov                  rdi,      qword [rbp - 8]
    call               malloc
     mov     qword [rbp - 16],                  rax
     sub      qword [rbp - 8],                    8
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                  100
     add     qword [rbp - 16],                    8
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [@now - 0]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,     qword [rbp - 40]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 40],                  rax
     cmp     qword [rbp - 40],                    1
      je        win.1.if_true
     jmp       win.2.if_false
win.1.if_true:
     mov                  rax,                    0
     jmp          win.26.exit
win.2.if_false:
     jmp        win.3.if_exit
win.3.if_exit:
     mov     qword [rbp - 48],                    0
     jmp win.6.loop_condition
win.4.loop_body:
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 56]
    imul                  rax,                    8
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 56]
     add     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
    imul                  rax,                    8
     mov     qword [rbp - 72],                  rax
     mov                  rax,       qword [@a - 0]
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 72]
     add     qword [rbp - 80],                  rax
     mov                  rcx,     qword [rbp - 80]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 88],                  rax
     mov                  rcx,     qword [rbp - 64]
     mov                  rax,     qword [rbp - 88]
     mov      qword [rcx - 0],                  rax
     jmp win.5.loop_increment
win.5.loop_increment:
     add     qword [rbp - 48],                    1
     jmp win.6.loop_condition
win.6.loop_condition:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,     qword [@now - 0]
     mov                  rax,     qword [rbp - 96]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 96],                  rax
     cmp     qword [rbp - 96],                    1
      je      win.4.loop_body
     jmp      win.7.loop_exit
win.7.loop_exit:
     mov    qword [rbp - 104],                    0
     jmp win.17.loop_condition
win.8.loop_body:
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 112],                  rax
     add    qword [rbp - 112],                    1
     mov                  rax,    qword [rbp - 112]
     mov     qword [rbp - 48],                  rax
     jmp win.14.loop_condition
win.9.loop_body:
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 120]
    imul                  rax,                    8
     mov    qword [rbp - 120],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 120]
     add    qword [rbp - 128],                  rax
     mov                  rax,     qword [rbp - 48]
     mov    qword [rbp - 136],                  rax
     mov                  rax,    qword [rbp - 136]
    imul                  rax,                    8
     mov    qword [rbp - 136],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 136]
     add    qword [rbp - 144],                  rax
     mov                  rcx,    qword [rbp - 128]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 152],                  rax
     mov                  rcx,    qword [rbp - 144]
     mov                  rax,    qword [rbp - 152]
     cmp                  rax,      qword [rcx - 0]
     mov                  rax,    qword [rbp - 160]
     mov                  rax,                    0
    setg                   al
     mov    qword [rbp - 160],                  rax
     cmp    qword [rbp - 160],                    1
      je       win.10.if_true
     jmp      win.11.if_false
win.10.if_true:
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 168]
    imul                  rax,                    8
     mov    qword [rbp - 168],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 168]
     add    qword [rbp - 176],                  rax
     mov                  rcx,    qword [rbp - 176]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp - 192]
    imul                  rax,                    8
     mov    qword [rbp - 192],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 192]
     add    qword [rbp - 200],                  rax
     mov                  rax,     qword [rbp - 48]
     mov    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp - 208]
    imul                  rax,                    8
     mov    qword [rbp - 208],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp - 208]
     add    qword [rbp - 216],                  rax
     mov                  rcx,    qword [rbp - 216]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 224],                  rax
     mov                  rcx,    qword [rbp - 200]
     mov                  rax,    qword [rbp - 224]
     mov      qword [rcx - 0],                  rax
     mov                  rax,     qword [rbp - 48]
     mov    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp - 232]
    imul                  rax,                    8
     mov    qword [rbp - 232],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp - 232]
     add    qword [rbp - 240],                  rax
     mov                  rcx,    qword [rbp - 240]
     mov                  rax,    qword [rbp - 184]
     mov      qword [rcx - 0],                  rax
     jmp       win.12.if_exit
win.11.if_false:
     jmp       win.12.if_exit
win.12.if_exit:
     jmp win.13.loop_increment
win.13.loop_increment:
     add     qword [rbp - 48],                    1
     jmp win.14.loop_condition
win.14.loop_condition:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,     qword [@now - 0]
     mov                  rax,    qword [rbp - 248]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 248],                  rax
     cmp    qword [rbp - 248],                    1
      je      win.9.loop_body
     jmp     win.15.loop_exit
win.15.loop_exit:
     jmp win.16.loop_increment
win.16.loop_increment:
     add    qword [rbp - 104],                    1
     jmp win.17.loop_condition
win.17.loop_condition:
     mov                  rax,     qword [@now - 0]
     mov    qword [rbp - 256],                  rax
     sub    qword [rbp - 256],                    1
     mov                  rax,    qword [rbp - 104]
     cmp                  rax,    qword [rbp - 256]
     mov                  rax,    qword [rbp - 264]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 264],                  rax
     cmp    qword [rbp - 264],                    1
      je      win.8.loop_body
     jmp     win.18.loop_exit
win.18.loop_exit:
     mov    qword [rbp - 104],                    0
     jmp win.24.loop_condition
win.19.loop_body:
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 272]
    imul                  rax,                    8
     mov    qword [rbp - 272],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp - 272]
     add    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 288],                  rax
     add    qword [rbp - 288],                    1
     mov                  rcx,    qword [rbp - 280]
     mov                  rax,      qword [rcx - 0]
     cmp                  rax,    qword [rbp - 288]
     mov                  rax,    qword [rbp - 296]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 296],                  rax
     cmp    qword [rbp - 296],                    1
      je       win.20.if_true
     jmp      win.21.if_false
win.20.if_true:
     mov                  rax,                    0
     jmp          win.26.exit
win.21.if_false:
     jmp       win.22.if_exit
win.22.if_exit:
     jmp win.23.loop_increment
win.23.loop_increment:
     add    qword [rbp - 104],                    1
     jmp win.24.loop_condition
win.24.loop_condition:
     mov                  rax,    qword [rbp - 104]
     cmp                  rax,     qword [@now - 0]
     mov                  rax,    qword [rbp - 304]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 304],                  rax
     cmp    qword [rbp - 304],                    1
      je     win.19.loop_body
     jmp     win.25.loop_exit
win.25.loop_exit:
     mov                  rax,                    1
     jmp          win.26.exit
win.26.exit:
     add                  rsp,                  304
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
      dq                    0
__string_const1:
      db                "", 0
      dq                   79
__string_const2:
      db "Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i", 0
      dq                   12
__string_const3:
      db    "Let's start!", 0
      dq                    6
__string_const4:
      db          "step :", 0
      dq                    7
__string_const5:
      db         "Total: ", 0
      dq                    8
__string_const6:
      db        " step(s)", 0
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
@n:
    resq                    1
@h:
    resq                    1
@now:
    resq                    1
@a:
    resq                    1
@A:
    resq                    1
@M:
    resq                    1
@Q:
    resq                    1
@R:
    resq                    1
@seed:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
