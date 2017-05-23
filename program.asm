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
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
    push                  r14
    push                  r15
     sub                  rsp,                  160
main.0.enter:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call            getString
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 24],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 24]
     sub                  rsp,                    8
    call    __string_parseInt
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 32],                  rax
     mov                  r15,     qword [rbp - 32]
     mov       qword [@n - 0],                  r15
     mov                  r15,       qword [@n - 0]
     mov     qword [rbp - 40],                  r15
     add     qword [rbp - 40],                    1
     mov                  r15,     qword [rbp - 40]
    imul                  r15,                    8
     mov     qword [rbp - 40],                  r15
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 40]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 48],                  rax
     sub     qword [rbp - 40],                    8
     mov                  r15,       qword [@n - 0]
     mov     qword [rbp - 56],                  r15
     mov                  r14,     qword [rbp - 48]
     mov                  r15,     qword [rbp - 56]
     mov      qword [r14 - 0],                  r15
     add     qword [rbp - 48],                    8
     mov                  r15,     qword [rbp - 48]
     mov       qword [@a - 0],                  r15
     mov     qword [rbp - 64],                    0
     jmp main.3.loop_condition
main.1.loop_body:
     mov                  r15,     qword [rbp - 64]
     mov     qword [rbp - 72],                  r15
     mov                  r15,     qword [rbp - 72]
    imul                  r15,                    8
     mov     qword [rbp - 72],                  r15
     mov                  r15,       qword [@a - 0]
     mov     qword [rbp - 80],                  r15
     mov                  r15,     qword [rbp - 72]
     add     qword [rbp - 80],                  r15
     mov                  r14,     qword [rbp - 80]
     mov                  r15,     qword [rbp - 64]
     mov      qword [r14 - 0],                  r15
     jmp main.2.loop_increment
main.2.loop_increment:
     mov                  r15,     qword [rbp - 64]
     mov     qword [rbp - 88],                  r15
     add     qword [rbp - 88],                    1
     mov                  r15,     qword [rbp - 88]
     mov     qword [rbp - 64],                  r15
     jmp main.3.loop_condition
main.3.loop_condition:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,       qword [@a - 0]
     sub                  rsp,                    8
    call         __array_size
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov     qword [rbp - 96],                  rax
     mov                  r15,     qword [rbp - 64]
     cmp                  r15,     qword [rbp - 96]
     mov                  r15,    qword [rbp - 104]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 104],                  r15
     cmp    qword [rbp - 104],                    1
      je     main.1.loop_body
     jmp     main.4.loop_exit
main.4.loop_exit:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call             makeHeap
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 112],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call             heapSort
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 120],                  rax
     mov     qword [rbp - 64],                    0
     jmp main.7.loop_condition
main.5.loop_body:
     mov                  r15,     qword [rbp - 64]
     mov    qword [rbp - 128],                  r15
     mov                  r15,    qword [rbp - 128]
    imul                  r15,                    8
     mov    qword [rbp - 128],                  r15
     mov                  r15,       qword [@a - 0]
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
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 144],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 144]
     mov                  rsi,      __string_const0
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 152],                  rax
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 152]
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     jmp main.6.loop_increment
main.6.loop_increment:
     mov                  r15,     qword [rbp - 64]
     mov    qword [rbp - 160],                  r15
     add    qword [rbp - 160],                    1
     mov                  r15,    qword [rbp - 160]
     mov     qword [rbp - 64],                  r15
     jmp main.7.loop_condition
main.7.loop_condition:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,       qword [@a - 0]
     sub                  rsp,                    8
    call         __array_size
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 168],                  rax
     mov                  r15,     qword [rbp - 64]
     cmp                  r15,    qword [rbp - 168]
     mov                  r15,    qword [rbp - 176]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 176],                  r15
     cmp    qword [rbp - 176],                    1
      je     main.5.loop_body
     jmp     main.8.loop_exit
main.8.loop_exit:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,      __string_const1
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rax,                    0
     jmp          main.9.exit
main.9.exit:
     add                  rsp,                  160
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
exchange:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                   80
exchange.0.enter:
     mov     qword [rbp - 24],                  rdi
     mov                  r15,     qword [rbp - 24]
    imul                  r15,                    8
     mov     qword [rbp - 24],                  r15
     mov                  r15,       qword [@a - 0]
     mov     qword [rbp - 32],                  r15
     mov                  r15,     qword [rbp - 24]
     add     qword [rbp - 32],                  r15
     mov                  r14,     qword [rbp - 32]
     mov                  r15,      qword [r14 - 0]
     mov     qword [rbp - 40],                  r15
     mov     qword [rbp - 48],                  rdi
     mov                  r15,     qword [rbp - 48]
    imul                  r15,                    8
     mov     qword [rbp - 48],                  r15
     mov                  r15,       qword [@a - 0]
     mov     qword [rbp - 56],                  r15
     mov                  r15,     qword [rbp - 48]
     add     qword [rbp - 56],                  r15
     mov     qword [rbp - 64],                  rsi
     mov                  r15,     qword [rbp - 64]
    imul                  r15,                    8
     mov     qword [rbp - 64],                  r15
     mov                  r15,       qword [@a - 0]
     mov     qword [rbp - 72],                  r15
     mov                  r15,     qword [rbp - 64]
     add     qword [rbp - 72],                  r15
     mov                  r14,     qword [rbp - 72]
     mov                  r15,      qword [r14 - 0]
     mov     qword [rbp - 80],                  r15
     mov                  r14,     qword [rbp - 56]
     mov                  r15,     qword [rbp - 80]
     mov      qword [r14 - 0],                  r15
     mov     qword [rbp - 88],                  rsi
     mov                  r15,     qword [rbp - 88]
    imul                  r15,                    8
     mov     qword [rbp - 88],                  r15
     mov                  r15,       qword [@a - 0]
     mov     qword [rbp - 96],                  r15
     mov                  r15,     qword [rbp - 88]
     add     qword [rbp - 96],                  r15
     mov                  r14,     qword [rbp - 96]
     mov                  r15,     qword [rbp - 40]
     mov      qword [r14 - 0],                  r15
exchange.1.exit:
     add                  rsp,                   80
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
adjustHeap:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                  296
adjustHeap.0.enter:
     mov     qword [rbp - 24],                    0
     mov     qword [rbp - 32],                    0
     mov     qword [rbp - 40],                    0
     jmp adjustHeap.11.loop_condition
adjustHeap.1.loop_body:
     mov                  r15,     qword [rbp - 24]
     mov     qword [rbp - 48],                  r15
     mov                  r15,     qword [rbp - 48]
    imul                  r15,                    2
     mov     qword [rbp - 48],                  r15
     mov                  r15,     qword [rbp - 48]
     mov     qword [rbp - 32],                  r15
     mov                  r15,     qword [rbp - 24]
     mov     qword [rbp - 56],                  r15
     mov                  r15,     qword [rbp - 56]
    imul                  r15,                    2
     mov     qword [rbp - 56],                  r15
     mov                  r15,     qword [rbp - 56]
     mov     qword [rbp - 64],                  r15
     add     qword [rbp - 64],                    1
     cmp     qword [rbp - 64],                  rdi
     mov                  r15,     qword [rbp - 72]
     mov                  r15,                    0
    setl                 r15b
     mov     qword [rbp - 72],                  r15
     cmp     qword [rbp - 72],                    1
      je adjustHeap.3.logical_true
     jmp adjustHeap.2.logical_false
adjustHeap.2.logical_false:
     mov     qword [rbp - 80],                    0
     jmp adjustHeap.4.logical_exit
adjustHeap.3.logical_true:
     mov                  r15,     qword [rbp - 24]
     mov     qword [rbp - 88],                  r15
     mov                  r15,     qword [rbp - 88]
    imul                  r15,                    2
     mov     qword [rbp - 88],                  r15
     mov                  r15,     qword [rbp - 88]
     mov     qword [rbp - 96],                  r15
     add     qword [rbp - 96],                    1
     mov                  r15,     qword [rbp - 96]
     mov    qword [rbp - 104],                  r15
     mov                  r15,    qword [rbp - 104]
    imul                  r15,                    8
     mov    qword [rbp - 104],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 112],                  r15
     mov                  r15,    qword [rbp - 104]
     add    qword [rbp - 112],                  r15
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 120],                  r15
     mov                  r15,    qword [rbp - 120]
    imul                  r15,                    2
     mov    qword [rbp - 120],                  r15
     mov                  r15,    qword [rbp - 120]
     mov    qword [rbp - 128],                  r15
     mov                  r15,    qword [rbp - 128]
    imul                  r15,                    8
     mov    qword [rbp - 128],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 136],                  r15
     mov                  r15,    qword [rbp - 128]
     add    qword [rbp - 136],                  r15
     mov                  r14,    qword [rbp - 112]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 144],                  r15
     mov                  r14,    qword [rbp - 136]
     mov                  r15,    qword [rbp - 144]
     cmp                  r15,      qword [r14 - 0]
     mov                  r15,    qword [rbp - 152]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 152],                  r15
     mov                  r15,    qword [rbp - 152]
     mov     qword [rbp - 80],                  r15
     jmp adjustHeap.4.logical_exit
adjustHeap.4.logical_exit:
     cmp     qword [rbp - 80],                    1
      je adjustHeap.5.if_true
     jmp adjustHeap.6.if_false
adjustHeap.5.if_true:
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 160],                  r15
     mov                  r15,    qword [rbp - 160]
    imul                  r15,                    2
     mov    qword [rbp - 160],                  r15
     mov                  r15,    qword [rbp - 160]
     mov    qword [rbp - 168],                  r15
     add    qword [rbp - 168],                    1
     mov                  r15,    qword [rbp - 168]
     mov     qword [rbp - 32],                  r15
     jmp adjustHeap.7.if_exit
adjustHeap.6.if_false:
     jmp adjustHeap.7.if_exit
adjustHeap.7.if_exit:
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 176],                  r15
     mov                  r15,    qword [rbp - 176]
    imul                  r15,                    8
     mov    qword [rbp - 176],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 184],                  r15
     mov                  r15,    qword [rbp - 176]
     add    qword [rbp - 184],                  r15
     mov                  r15,     qword [rbp - 32]
     mov    qword [rbp - 192],                  r15
     mov                  r15,    qword [rbp - 192]
    imul                  r15,                    8
     mov    qword [rbp - 192],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 200],                  r15
     mov                  r15,    qword [rbp - 192]
     add    qword [rbp - 200],                  r15
     mov                  r14,    qword [rbp - 184]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 208],                  r15
     mov                  r14,    qword [rbp - 200]
     mov                  r15,    qword [rbp - 208]
     cmp                  r15,      qword [r14 - 0]
     mov                  r15,    qword [rbp - 216]
     mov                  r15,                    0
    setg                 r15b
     mov    qword [rbp - 216],                  r15
     cmp    qword [rbp - 216],                    1
      je adjustHeap.8.if_true
     jmp adjustHeap.9.if_false
adjustHeap.8.if_true:
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 224],                  r15
     mov                  r15,    qword [rbp - 224]
    imul                  r15,                    8
     mov    qword [rbp - 224],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 232],                  r15
     mov                  r15,    qword [rbp - 224]
     add    qword [rbp - 232],                  r15
     mov                  r14,    qword [rbp - 232]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 240],                  r15
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 248],                  r15
     mov                  r15,    qword [rbp - 248]
    imul                  r15,                    8
     mov    qword [rbp - 248],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 256],                  r15
     mov                  r15,    qword [rbp - 248]
     add    qword [rbp - 256],                  r15
     mov                  r15,     qword [rbp - 32]
     mov    qword [rbp - 264],                  r15
     mov                  r15,    qword [rbp - 264]
    imul                  r15,                    8
     mov    qword [rbp - 264],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 272],                  r15
     mov                  r15,    qword [rbp - 264]
     add    qword [rbp - 272],                  r15
     mov                  r14,    qword [rbp - 272]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 280],                  r15
     mov                  r14,    qword [rbp - 256]
     mov                  r15,    qword [rbp - 280]
     mov      qword [r14 - 0],                  r15
     mov                  r15,     qword [rbp - 32]
     mov    qword [rbp - 288],                  r15
     mov                  r15,    qword [rbp - 288]
    imul                  r15,                    8
     mov    qword [rbp - 288],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 296],                  r15
     mov                  r15,    qword [rbp - 288]
     add    qword [rbp - 296],                  r15
     mov                  r14,    qword [rbp - 296]
     mov                  r15,    qword [rbp - 240]
     mov      qword [r14 - 0],                  r15
     mov                  r15,     qword [rbp - 32]
     mov     qword [rbp - 24],                  r15
     jmp adjustHeap.10.if_exit
adjustHeap.9.if_false:
     jmp adjustHeap.12.loop_exit
     jmp adjustHeap.10.if_exit
adjustHeap.10.if_exit:
     jmp adjustHeap.11.loop_condition
adjustHeap.11.loop_condition:
     mov                  r15,     qword [rbp - 24]
     mov    qword [rbp - 304],                  r15
     mov                  r15,    qword [rbp - 304]
    imul                  r15,                    2
     mov    qword [rbp - 304],                  r15
     cmp    qword [rbp - 304],                  rdi
     mov                  r15,    qword [rbp - 312]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 312],                  r15
     cmp    qword [rbp - 312],                    1
      je adjustHeap.1.loop_body
     jmp adjustHeap.12.loop_exit
adjustHeap.12.loop_exit:
     mov                  rax,                    0
     jmp   adjustHeap.13.exit
adjustHeap.13.exit:
     add                  rsp,                  296
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
heapSort:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                  160
heapSort.0.enter:
     mov     qword [rbp - 24],                    0
     mov     qword [rbp - 32],                    0
     jmp heapSort.3.loop_condition
heapSort.1.loop_body:
     mov     qword [rbp - 40],                    0
     mov                  r15,     qword [rbp - 40]
    imul                  r15,                    8
     mov     qword [rbp - 40],                  r15
     mov                  r15,       qword [@a - 0]
     mov     qword [rbp - 48],                  r15
     mov                  r15,     qword [rbp - 40]
     add     qword [rbp - 48],                  r15
     mov                  r14,     qword [rbp - 48]
     mov                  r15,      qword [r14 - 0]
     mov     qword [rbp - 24],                  r15
     mov     qword [rbp - 56],                    0
     mov                  r15,     qword [rbp - 56]
    imul                  r15,                    8
     mov     qword [rbp - 56],                  r15
     mov                  r15,       qword [@a - 0]
     mov     qword [rbp - 64],                  r15
     mov                  r15,     qword [rbp - 56]
     add     qword [rbp - 64],                  r15
     mov                  r15,       qword [@n - 0]
     mov     qword [rbp - 72],                  r15
     mov                  r15,     qword [rbp - 32]
     sub     qword [rbp - 72],                  r15
     mov                  r15,     qword [rbp - 72]
     mov     qword [rbp - 80],                  r15
     sub     qword [rbp - 80],                    1
     mov                  r15,     qword [rbp - 80]
     mov     qword [rbp - 88],                  r15
     mov                  r15,     qword [rbp - 88]
    imul                  r15,                    8
     mov     qword [rbp - 88],                  r15
     mov                  r15,       qword [@a - 0]
     mov     qword [rbp - 96],                  r15
     mov                  r15,     qword [rbp - 88]
     add     qword [rbp - 96],                  r15
     mov                  r14,     qword [rbp - 96]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 104],                  r15
     mov                  r14,     qword [rbp - 64]
     mov                  r15,    qword [rbp - 104]
     mov      qword [r14 - 0],                  r15
     mov                  r15,       qword [@n - 0]
     mov    qword [rbp - 112],                  r15
     mov                  r15,     qword [rbp - 32]
     sub    qword [rbp - 112],                  r15
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 120],                  r15
     sub    qword [rbp - 120],                    1
     mov                  r15,    qword [rbp - 120]
     mov    qword [rbp - 128],                  r15
     mov                  r15,    qword [rbp - 128]
    imul                  r15,                    8
     mov    qword [rbp - 128],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 136],                  r15
     mov                  r15,    qword [rbp - 128]
     add    qword [rbp - 136],                  r15
     mov                  r14,    qword [rbp - 136]
     mov                  r15,     qword [rbp - 24]
     mov      qword [r14 - 0],                  r15
     mov                  r15,       qword [@n - 0]
     mov    qword [rbp - 144],                  r15
     mov                  r15,     qword [rbp - 32]
     sub    qword [rbp - 144],                  r15
     mov                  r15,    qword [rbp - 144]
     mov    qword [rbp - 152],                  r15
     sub    qword [rbp - 152],                    1
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,    qword [rbp - 152]
     sub                  rsp,                    8
    call           adjustHeap
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov    qword [rbp - 160],                  rax
     jmp heapSort.2.loop_increment
heapSort.2.loop_increment:
     mov                  r15,     qword [rbp - 32]
     mov    qword [rbp - 168],                  r15
     add    qword [rbp - 168],                    1
     mov                  r15,    qword [rbp - 168]
     mov     qword [rbp - 32],                  r15
     jmp heapSort.3.loop_condition
heapSort.3.loop_condition:
     mov                  r15,     qword [rbp - 32]
     cmp                  r15,       qword [@n - 0]
     mov                  r15,    qword [rbp - 176]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 176],                  r15
     cmp    qword [rbp - 176],                    1
      je heapSort.1.loop_body
     jmp heapSort.4.loop_exit
heapSort.4.loop_exit:
     mov                  rax,                    0
     jmp      heapSort.5.exit
heapSort.5.exit:
     add                  rsp,                  160
     pop                  r15
     pop                  r14
     pop                  rbp
     ret
makeHeap:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r14
    push                  r15
     sub                  rsp,                  232
makeHeap.0.enter:
     mov                  r15,       qword [@n - 0]
     mov     qword [rbp - 24],                  r15
     sub     qword [rbp - 24],                    1
     mov                  r15,     qword [rbp - 24]
     mov     qword [rbp - 32],                  r15
     mov                  rax,     qword [rbp - 32]
     mov                  r15,                    2
     mov                  rdx,                    0
     cqo
    idiv                  r15
     mov     qword [rbp - 32],                  rax
     mov                  r15,     qword [rbp - 32]
     mov     qword [rbp - 40],                  r15
     mov     qword [rbp - 48],                    0
     mov     qword [rbp - 56],                    0
     jmp makeHeap.11.loop_condition
makeHeap.1.loop_body:
     mov                  r15,     qword [rbp - 40]
     mov     qword [rbp - 64],                  r15
     mov                  r15,     qword [rbp - 64]
    imul                  r15,                    2
     mov     qword [rbp - 64],                  r15
     mov                  r15,     qword [rbp - 64]
     mov     qword [rbp - 56],                  r15
     mov                  r15,     qword [rbp - 40]
     mov     qword [rbp - 72],                  r15
     mov                  r15,     qword [rbp - 72]
    imul                  r15,                    2
     mov     qword [rbp - 72],                  r15
     mov                  r15,     qword [rbp - 72]
     mov     qword [rbp - 80],                  r15
     add     qword [rbp - 80],                    1
     mov                  r15,     qword [rbp - 80]
     cmp                  r15,       qword [@n - 0]
     mov                  r15,     qword [rbp - 88]
     mov                  r15,                    0
    setl                 r15b
     mov     qword [rbp - 88],                  r15
     cmp     qword [rbp - 88],                    1
      je makeHeap.3.logical_true
     jmp makeHeap.2.logical_false
makeHeap.2.logical_false:
     mov     qword [rbp - 96],                    0
     jmp makeHeap.4.logical_exit
makeHeap.3.logical_true:
     mov                  r15,     qword [rbp - 40]
     mov    qword [rbp - 104],                  r15
     mov                  r15,    qword [rbp - 104]
    imul                  r15,                    2
     mov    qword [rbp - 104],                  r15
     mov                  r15,    qword [rbp - 104]
     mov    qword [rbp - 112],                  r15
     add    qword [rbp - 112],                    1
     mov                  r15,    qword [rbp - 112]
     mov    qword [rbp - 120],                  r15
     mov                  r15,    qword [rbp - 120]
    imul                  r15,                    8
     mov    qword [rbp - 120],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 128],                  r15
     mov                  r15,    qword [rbp - 120]
     add    qword [rbp - 128],                  r15
     mov                  r15,     qword [rbp - 40]
     mov    qword [rbp - 136],                  r15
     mov                  r15,    qword [rbp - 136]
    imul                  r15,                    2
     mov    qword [rbp - 136],                  r15
     mov                  r15,    qword [rbp - 136]
     mov    qword [rbp - 144],                  r15
     mov                  r15,    qword [rbp - 144]
    imul                  r15,                    8
     mov    qword [rbp - 144],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 152],                  r15
     mov                  r15,    qword [rbp - 144]
     add    qword [rbp - 152],                  r15
     mov                  r14,    qword [rbp - 128]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 160],                  r15
     mov                  r14,    qword [rbp - 152]
     mov                  r15,    qword [rbp - 160]
     cmp                  r15,      qword [r14 - 0]
     mov                  r15,    qword [rbp - 168]
     mov                  r15,                    0
    setl                 r15b
     mov    qword [rbp - 168],                  r15
     mov                  r15,    qword [rbp - 168]
     mov     qword [rbp - 96],                  r15
     jmp makeHeap.4.logical_exit
makeHeap.4.logical_exit:
     cmp     qword [rbp - 96],                    1
      je   makeHeap.5.if_true
     jmp  makeHeap.6.if_false
makeHeap.5.if_true:
     mov                  r15,     qword [rbp - 40]
     mov    qword [rbp - 176],                  r15
     mov                  r15,    qword [rbp - 176]
    imul                  r15,                    2
     mov    qword [rbp - 176],                  r15
     mov                  r15,    qword [rbp - 176]
     mov    qword [rbp - 184],                  r15
     add    qword [rbp - 184],                    1
     mov                  r15,    qword [rbp - 184]
     mov     qword [rbp - 56],                  r15
     jmp   makeHeap.7.if_exit
makeHeap.6.if_false:
     jmp   makeHeap.7.if_exit
makeHeap.7.if_exit:
     mov                  r15,     qword [rbp - 40]
     mov    qword [rbp - 192],                  r15
     mov                  r15,    qword [rbp - 192]
    imul                  r15,                    8
     mov    qword [rbp - 192],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 200],                  r15
     mov                  r15,    qword [rbp - 192]
     add    qword [rbp - 200],                  r15
     mov                  r15,     qword [rbp - 56]
     mov    qword [rbp - 208],                  r15
     mov                  r15,    qword [rbp - 208]
    imul                  r15,                    8
     mov    qword [rbp - 208],                  r15
     mov                  r15,       qword [@a - 0]
     mov    qword [rbp - 216],                  r15
     mov                  r15,    qword [rbp - 208]
     add    qword [rbp - 216],                  r15
     mov                  r14,    qword [rbp - 200]
     mov                  r15,      qword [r14 - 0]
     mov    qword [rbp - 224],                  r15
     mov                  r14,    qword [rbp - 216]
     mov                  r15,    qword [rbp - 224]
     cmp                  r15,      qword [r14 - 0]
     mov                  r15,    qword [rbp - 232]
     mov                  r15,                    0
    setg                 r15b
     mov    qword [rbp - 232],                  r15
     cmp    qword [rbp - 232],                    1
      je   makeHeap.8.if_true
     jmp  makeHeap.9.if_false
makeHeap.8.if_true:
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
     mov                  rdi,     qword [rbp - 40]
     mov                  rsi,     qword [rbp - 56]
    call             exchange
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     jmp  makeHeap.10.if_exit
makeHeap.9.if_false:
     jmp  makeHeap.10.if_exit
makeHeap.10.if_exit:
     mov                  r15,     qword [rbp - 40]
     mov    qword [rbp - 240],                  r15
     sub    qword [rbp - 240],                    1
     mov                  r15,    qword [rbp - 240]
     mov     qword [rbp - 40],                  r15
     jmp makeHeap.11.loop_condition
makeHeap.11.loop_condition:
     cmp     qword [rbp - 40],                    0
     mov                  r15,    qword [rbp - 248]
     mov                  r15,                    0
   setge                 r15b
     mov    qword [rbp - 248],                  r15
     cmp    qword [rbp - 248],                    1
      je makeHeap.1.loop_body
     jmp makeHeap.12.loop_exit
makeHeap.12.loop_exit:
     mov                  rax,                    0
     jmp     makeHeap.13.exit
makeHeap.13.exit:
     add                  rsp,                  232
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
@n:
    resq                    1
@a:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
