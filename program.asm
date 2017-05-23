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
merge:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                  208
merge.0.enter:
     mov     qword [rbp - 24],                  rdi
     mov     qword [rbp - 32],                  rsi
     mov                  r15,                    0
     cmp                  r15,     qword [rbp - 24]
     mov                  r15,     qword [rbp - 40]
     mov                  r15,                    0
    sete                 r15b
     mov     qword [rbp - 40],                  r15
     cmp     qword [rbp - 40],                    1
      je      merge.1.if_true
     jmp     merge.2.if_false
merge.1.if_true:
     mov                  rax,     qword [rbp - 32]
     jmp        merge.10.exit
     jmp      merge.3.if_exit
merge.2.if_false:
     jmp      merge.3.if_exit
merge.3.if_exit:
     mov                  r15,                    0
     cmp                  r15,     qword [rbp - 32]
     mov                  r15,     qword [rbp - 48]
     mov                  r15,                    0
    sete                 r15b
     mov     qword [rbp - 48],                  r15
     cmp     qword [rbp - 48],                    1
      je      merge.4.if_true
     jmp     merge.5.if_false
merge.4.if_true:
     mov                  rax,     qword [rbp - 24]
     jmp        merge.10.exit
     jmp      merge.6.if_exit
merge.5.if_false:
     jmp      merge.6.if_exit
merge.6.if_exit:
     mov                  r15,     qword [rbp - 24]
     mov     qword [rbp - 56],                  r15
     mov                  r15,     qword [rbp - 56]
    imul                  r15,                    8
     mov     qword [rbp - 56],                  r15
     mov                  r15,       qword [@w - 0]
     mov     qword [rbp - 64],                  r15
     mov                  r15,     qword [rbp - 56]
     add     qword [rbp - 64],                  r15
     mov                  r15,     qword [rbp - 32]
     mov     qword [rbp - 72],                  r15
     mov                  r15,     qword [rbp - 72]
    imul                  r15,                    8
     mov     qword [rbp - 72],                  r15
     mov                  r15,       qword [@w - 0]
     mov     qword [rbp - 80],                  r15
     mov                  r15,     qword [rbp - 72]
     add     qword [rbp - 80],                  r15
     mov                  r14,     qword [rbp - 64]
     mov                  r15,      qword [r14 - 0]
     mov     qword [rbp - 88],                  r15
     mov                  r14,     qword [rbp - 80]
     mov                  r15,     qword [rbp - 88]
     cmp                  r15,      qword [r14 - 0]
     mov                  r15,     qword [rbp - 96]
     mov                  r15,                    0
    setl                 r15b
     mov     qword [rbp - 96],                  r15
     cmp     qword [rbp - 96],                    1
      je      merge.7.if_true
     jmp     merge.8.if_false
merge.7.if_true:
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 104],                  r15
     mov                  r15,     qword [rbp - 32]
     mov     qword [rbp - 24],                  r15
     mov                  r15,    qword [rbp - 104]
     mov     qword [rbp - 32],                  r15
     jmp      merge.9.if_exit
merge.8.if_false:
     jmp      merge.9.if_exit
merge.9.if_exit:
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 112],                  r15
     mov                  r15,    qword [rbp - 112]
    imul                  r15,                    8
     mov    qword [rbp - 112],                  r15
     mov                  r15,       qword [@r - 0]
     mov    qword [rbp - 120],                  r15
     mov                  r15,    qword [rbp - 112]
     add    qword [rbp - 120],                  r15
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 128],                  r15
     mov                  r15,    qword [rbp - 128]
    imul                  r15,                    8
     mov    qword [rbp - 128],                  r15
     mov                  r15,       qword [@r - 0]
     mov    qword [rbp - 136],                  r15
     mov                  r15,    qword [rbp - 128]
     add    qword [rbp - 136],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  r14,    qword [rbp - 136]
     mov                  rdi,      qword [r14 - 0]
     mov                  rsi,     qword [rbp - 32]
     sub                  rsp,                    8
    call                merge
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 144],                  rax
     mov                  r14,    qword [rbp - 120]
     mov                  r15,    qword [rbp - 144]
     mov      qword [r14 - 0],                  r15
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 152],                  r15
     mov                  r15,    qword [rbp - 152]
    imul                  r15,                    8
     mov    qword [rbp - 152],                  r15
     mov                  r15,       qword [@l - 0]
     mov    qword [rbp - 160],                  r15
     mov                  r15,    qword [rbp - 152]
     add    qword [rbp - 160],                  r15
     mov                  r14,    qword [rbp - 160]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 168],                  r15
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 176],                  r15
     mov                  r15,    qword [rbp - 176]
    imul                  r15,                    8
     mov    qword [rbp - 176],                  r15
     mov                  r15,       qword [@l - 0]
     mov    qword [rbp - 184],                  r15
     mov                  r15,    qword [rbp - 176]
     add    qword [rbp - 184],                  r15
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 192],                  r15
     mov                  r15,    qword [rbp - 192]
    imul                  r15,                    8
     mov    qword [rbp - 192],                  r15
     mov                  r15,       qword [@r - 0]
     mov    qword [rbp - 200],                  r15
     mov                  r15,    qword [rbp - 192]
     add    qword [rbp - 200],                  r15
     mov                  r14,    qword [rbp - 200]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 208],                  r15
     mov                  r14,    qword [rbp - 184]
     mov                  r15,    qword [rbp - 208]
     mov      qword [r14 - 0],                  r15
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 216],                  r15
     mov                  r15,    qword [rbp - 216]
    imul                  r15,                    8
     mov    qword [rbp - 216],                  r15
     mov                  r15,       qword [@r - 0]
     mov    qword [rbp - 224],                  r15
     mov                  r15,    qword [rbp - 216]
     add    qword [rbp - 224],                  r15
     mov                  r14,    qword [rbp - 224]
     mov                  r15,    qword [rbp - 168]
     mov      qword [r14 - 0],                  r15
     mov                  rax,     qword [rbp - 24]
     jmp        merge.10.exit
merge.10.exit:
     add                  rsp,                  208
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
     sub                  rsp,                  472
main.0.enter:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    call               getInt
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 24],                  rax
     mov                  r15,     qword [rbp - 24]
     mov       qword [@N - 0],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    call               getInt
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 32],                  rax
     mov                  r15,     qword [rbp - 32]
     mov       qword [@M - 0],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    call            getString
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 40],                  rax
     mov                  r15,     qword [rbp - 40]
     mov      qword [@ch - 0],                  r15
     mov                  r15,       qword [@N - 0]
     mov     qword [rbp - 48],                  r15
     mov                  r15,       qword [@M - 0]
     add     qword [rbp - 48],                  r15
     mov                  r15,     qword [rbp - 48]
     mov     qword [rbp - 56],                  r15
     add     qword [rbp - 56],                    5
     mov                  r15,     qword [rbp - 56]
     mov     qword [rbp - 64],                  r15
     add     qword [rbp - 64],                    1
     mov                  r15,     qword [rbp - 64]
    imul                  r15,                    8
     mov     qword [rbp - 64],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 64]
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 72],                  rax
     sub     qword [rbp - 64],                    8
     mov                  r14,     qword [rbp - 72]
     mov                  r15,     qword [rbp - 56]
     mov      qword [r14 - 0],                  r15
     add     qword [rbp - 72],                    8
     mov                  r15,     qword [rbp - 72]
     mov       qword [@l - 0],                  r15
     mov                  r15,       qword [@N - 0]
     mov     qword [rbp - 80],                  r15
     mov                  r15,       qword [@M - 0]
     add     qword [rbp - 80],                  r15
     mov                  r15,     qword [rbp - 80]
     mov     qword [rbp - 88],                  r15
     add     qword [rbp - 88],                    5
     mov                  r15,     qword [rbp - 88]
     mov     qword [rbp - 96],                  r15
     add     qword [rbp - 96],                    1
     mov                  r15,     qword [rbp - 96]
    imul                  r15,                    8
     mov     qword [rbp - 96],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 96]
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 104],                  rax
     sub     qword [rbp - 96],                    8
     mov                  r14,    qword [rbp - 104]
     mov                  r15,     qword [rbp - 88]
     mov      qword [r14 - 0],                  r15
     add    qword [rbp - 104],                    8
     mov                  r15,    qword [rbp - 104]
     mov       qword [@r - 0],                  r15
     mov                  r15,       qword [@N - 0]
     mov    qword [rbp - 112],                  r15
     mov                  r15,       qword [@M - 0]
     add    qword [rbp - 112],                  r15
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 120],                  r15
     add    qword [rbp - 120],                    5
     mov                  r15,    qword [rbp - 120]
     mov    qword [rbp - 128],                  r15
     add    qword [rbp - 128],                    1
     mov                  r15,    qword [rbp - 128]
    imul                  r15,                    8
     mov    qword [rbp - 128],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 128]
    call               malloc
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 136],                  rax
     sub    qword [rbp - 128],                    8
     mov                  r14,    qword [rbp - 136]
     mov                  r15,    qword [rbp - 120]
     mov      qword [r14 - 0],                  r15
     add    qword [rbp - 136],                    8
     mov                  r15,    qword [rbp - 136]
     mov       qword [@w - 0],                  r15
     mov    qword [rbp - 144],                    1
     jmp main.3.loop_condition
main.1.loop_body:
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 152],                  r15
     mov                  r15,    qword [rbp - 152]
    imul                  r15,                    8
     mov    qword [rbp - 152],                  r15
     mov                  r15,       qword [@w - 0]
     mov    qword [rbp - 160],                  r15
     mov                  r15,    qword [rbp - 152]
     add    qword [rbp - 160],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    call               getInt
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 168],                  rax
     mov                  r14,    qword [rbp - 160]
     mov                  r15,    qword [rbp - 168]
     mov      qword [r14 - 0],                  r15
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 176],                  r15
     mov                  r15,    qword [rbp - 176]
    imul                  r15,                    8
     mov    qword [rbp - 176],                  r15
     mov                  r15,       qword [@l - 0]
     mov    qword [rbp - 184],                  r15
     mov                  r15,    qword [rbp - 176]
     add    qword [rbp - 184],                  r15
     mov                  r14,    qword [rbp - 184]
     mov      qword [r14 - 0],                    0
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 192],                  r15
     mov                  r15,    qword [rbp - 192]
    imul                  r15,                    8
     mov    qword [rbp - 192],                  r15
     mov                  r15,       qword [@r - 0]
     mov    qword [rbp - 200],                  r15
     mov                  r15,    qword [rbp - 192]
     add    qword [rbp - 200],                  r15
     mov                  r14,    qword [rbp - 200]
     mov      qword [r14 - 0],                    0
     jmp main.2.loop_increment
main.2.loop_increment:
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 208],                  r15
     add    qword [rbp - 144],                    1
     jmp main.3.loop_condition
main.3.loop_condition:
     mov                  r15,    qword [rbp - 144]
     cmp                  r15,       qword [@N - 0]
     mov                  r15,    qword [rbp - 216]
     mov                  r15,                    0
   setle                 r15b
     mov    qword [rbp - 216],                  r15
     cmp    qword [rbp - 216],                    1
      je     main.1.loop_body
     jmp     main.4.loop_exit
main.4.loop_exit:
     mov    qword [rbp - 144],                    1
     jmp main.7.loop_condition
main.5.loop_body:
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 224],                  r15
     mov                  r15,       qword [@N - 0]
     add    qword [rbp - 224],                  r15
     mov                  r15,    qword [rbp - 224]
     mov    qword [rbp - 232],                  r15
     mov                  r15,    qword [rbp - 232]
    imul                  r15,                    8
     mov    qword [rbp - 232],                  r15
     mov                  r15,       qword [@w - 0]
     mov    qword [rbp - 240],                  r15
     mov                  r15,    qword [rbp - 232]
     add    qword [rbp - 240],                  r15
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 248],                  r15
     sub    qword [rbp - 248],                    1
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,      qword [@ch - 0]
     mov                  rsi,    qword [rbp - 248]
    call         __string_ord
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 256],                  rax
     mov                  r14,    qword [rbp - 240]
     mov                  r15,    qword [rbp - 256]
     mov      qword [r14 - 0],                  r15
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 264],                  r15
     mov                  r15,       qword [@N - 0]
     add    qword [rbp - 264],                  r15
     mov                  r15,    qword [rbp - 264]
     mov    qword [rbp - 272],                  r15
     mov                  r15,    qword [rbp - 272]
    imul                  r15,                    8
     mov    qword [rbp - 272],                  r15
     mov                  r15,       qword [@l - 0]
     mov    qword [rbp - 280],                  r15
     mov                  r15,    qword [rbp - 272]
     add    qword [rbp - 280],                  r15
     mov                  r14,    qword [rbp - 280]
     mov      qword [r14 - 0],                    0
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 288],                  r15
     mov                  r15,       qword [@N - 0]
     add    qword [rbp - 288],                  r15
     mov                  r15,    qword [rbp - 288]
     mov    qword [rbp - 296],                  r15
     mov                  r15,    qword [rbp - 296]
    imul                  r15,                    8
     mov    qword [rbp - 296],                  r15
     mov                  r15,       qword [@r - 0]
     mov    qword [rbp - 304],                  r15
     mov                  r15,    qword [rbp - 296]
     add    qword [rbp - 304],                  r15
     mov                  r14,    qword [rbp - 304]
     mov      qword [r14 - 0],                    0
     jmp main.6.loop_increment
main.6.loop_increment:
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 312],                  r15
     add    qword [rbp - 144],                    1
     jmp main.7.loop_condition
main.7.loop_condition:
     mov                  r15,    qword [rbp - 144]
     cmp                  r15,       qword [@M - 0]
     mov                  r15,    qword [rbp - 320]
     mov                  r15,                    0
   setle                 r15b
     mov    qword [rbp - 320],                  r15
     cmp    qword [rbp - 320],                    1
      je     main.5.loop_body
     jmp     main.8.loop_exit
main.8.loop_exit:
     mov    qword [rbp - 328],                    1
     mov                  r15,       qword [@N - 0]
     mov    qword [rbp - 336],                  r15
     add    qword [rbp - 336],                    1
     mov                  r15,    qword [rbp - 336]
     mov    qword [rbp - 344],                  r15
     mov    qword [rbp - 144],                    2
     jmp main.11.loop_condition
main.9.loop_body:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 328]
     mov                  rsi,    qword [rbp - 144]
    call                merge
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 352],                  rax
     mov                  r15,    qword [rbp - 352]
     mov    qword [rbp - 328],                  r15
     jmp main.10.loop_increment
main.10.loop_increment:
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 360],                  r15
     add    qword [rbp - 144],                    1
     jmp main.11.loop_condition
main.11.loop_condition:
     mov                  r15,    qword [rbp - 144]
     cmp                  r15,       qword [@N - 0]
     mov                  r15,    qword [rbp - 368]
     mov                  r15,                    0
   setle                 r15b
     mov    qword [rbp - 368],                  r15
     cmp    qword [rbp - 368],                    1
      je     main.9.loop_body
     jmp    main.12.loop_exit
main.12.loop_exit:
     mov                  r15,       qword [@N - 0]
     mov    qword [rbp - 376],                  r15
     add    qword [rbp - 376],                    2
     mov                  r15,    qword [rbp - 376]
     mov    qword [rbp - 144],                  r15
     jmp main.15.loop_condition
main.13.loop_body:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 344]
     mov                  rsi,    qword [rbp - 144]
    call                merge
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 384],                  rax
     mov                  r15,    qword [rbp - 384]
     mov    qword [rbp - 344],                  r15
     jmp main.14.loop_increment
main.14.loop_increment:
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 392],                  r15
     add    qword [rbp - 144],                    1
     jmp main.15.loop_condition
main.15.loop_condition:
     mov                  r15,       qword [@N - 0]
     mov    qword [rbp - 400],                  r15
     mov                  r15,       qword [@M - 0]
     add    qword [rbp - 400],                  r15
     mov                  r15,    qword [rbp - 144]
     cmp                  r15,    qword [rbp - 400]
     mov                  r15,    qword [rbp - 408]
     mov                  r15,                    0
   setle                 r15b
     mov    qword [rbp - 408],                  r15
     cmp    qword [rbp - 408],                    1
      je    main.13.loop_body
     jmp    main.16.loop_exit
main.16.loop_exit:
     mov                  r15,    qword [rbp - 328]
     mov    qword [rbp - 416],                  r15
     mov                  r15,    qword [rbp - 416]
    imul                  r15,                    8
     mov    qword [rbp - 416],                  r15
     mov                  r15,       qword [@w - 0]
     mov    qword [rbp - 424],                  r15
     mov                  r15,    qword [rbp - 416]
     add    qword [rbp - 424],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  r14,    qword [rbp - 424]
     mov                  rdi,      qword [r14 - 0]
    call             toString
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 432],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 432]
    call                print
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,      __string_const0
    call                print
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  r15,    qword [rbp - 344]
     mov    qword [rbp - 440],                  r15
     mov                  r15,       qword [@N - 0]
     sub    qword [rbp - 440],                  r15
     mov                  r15,    qword [rbp - 440]
     mov    qword [rbp - 448],                  r15
     sub    qword [rbp - 448],                    1
     mov                  r15,    qword [rbp - 344]
     mov    qword [rbp - 456],                  r15
     mov                  r15,       qword [@N - 0]
     sub    qword [rbp - 456],                  r15
     mov                  r15,    qword [rbp - 456]
     mov    qword [rbp - 464],                  r15
     sub    qword [rbp - 464],                    1
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,      qword [@ch - 0]
     mov                  rsi,    qword [rbp - 448]
     mov                  rdx,    qword [rbp - 464]
    call   __string_substring
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 472],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 472]
    call                print
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,      __string_const1
    call                print
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 328]
     mov                  rsi,    qword [rbp - 344]
    call                merge
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 480],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 480]
    call             toString
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 488],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 488]
    call              println
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rax,                    0
     jmp         main.17.exit
main.17.exit:
     add                  rsp,                  472
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
      dq                    1
__string_const0:
      db               " ", 0
      dq                    2
__string_const1:
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
@N:
    resq                    1
@M:
    resq                    1
@ch:
    resq                    1
@l:
    resq                    1
@r:
    resq                    1
@w:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
