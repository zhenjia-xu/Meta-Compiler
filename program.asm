global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
getPrime:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  224
getPrime.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                    2
     mov     qword [rbp - 24],                    2
     jmp getPrime.9.loop_condition
getPrime.1.loop_body:
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 32]
    imul                  rax,                    8
     mov     qword [rbp - 32],                  rax
     mov                  rax,       qword [@b - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 32]
     add     qword [rbp - 40],                  rax
     mov                  rcx,     qword [rbp - 40]
     cmp      qword [rcx - 0],                    1
     mov                  rax,     qword [rbp - 48]
     mov                  rax,                    0
    sete                   al
     mov     qword [rbp - 48],                  rax
     cmp     qword [rbp - 48],                    1
      je   getPrime.2.if_true
     jmp  getPrime.3.if_false
getPrime.2.if_true:
     mov     qword [rbp - 56],                    0
     mov                  rax,     qword [rbp - 56]
    imul                  rax,                    8
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [@tmp - 0]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 56]
     add     qword [rbp - 64],                  rax
     mov     qword [rbp - 72],                    0
     mov                  rax,     qword [rbp - 72]
    imul                  rax,                    8
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [@tmp - 0]
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 72]
     add     qword [rbp - 80],                  rax
     mov                  rcx,     qword [rbp - 80]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 88],                  rax
     add     qword [rbp - 88],                    1
     mov                  rcx,     qword [rbp - 64]
     mov                  rax,     qword [rbp - 88]
     mov      qword [rcx - 0],                  rax
     mov     qword [rbp - 96],                    0
     mov                  rax,     qword [rbp - 96]
    imul                  rax,                    8
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [@tmp - 0]
     mov    qword [rbp - 104],                  rax
     mov                  rax,     qword [rbp - 96]
     add    qword [rbp - 104],                  rax
     mov                  rcx,    qword [rbp - 104]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 112]
    imul                  rax,                    8
     mov    qword [rbp - 112],                  rax
     mov                  rax,   qword [@prime - 0]
     mov    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 112]
     add    qword [rbp - 120],                  rax
     mov                  rcx,    qword [rbp - 120]
     mov                  rax,     qword [rbp - 24]
     mov      qword [rcx - 0],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 128]
    imul                  rax,                    8
     mov    qword [rbp - 128],                  rax
     mov                  rax,     qword [@gps - 0]
     mov    qword [rbp - 136],                  rax
     mov                  rax,    qword [rbp - 128]
     add    qword [rbp - 136],                  rax
     mov    qword [rbp - 144],                    0
     mov                  rax,    qword [rbp - 144]
    imul                  rax,                    8
     mov    qword [rbp - 144],                  rax
     mov                  rax,     qword [@tmp - 0]
     mov    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp - 144]
     add    qword [rbp - 152],                  rax
     mov                  rcx,    qword [rbp - 152]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 160],                  rax
     mov                  rcx,    qword [rbp - 136]
     mov                  rax,    qword [rbp - 160]
     mov      qword [rcx - 0],                  rax
     jmp   getPrime.4.if_exit
getPrime.3.if_false:
     jmp   getPrime.4.if_exit
getPrime.4.if_exit:
     jmp getPrime.6.loop_condition
getPrime.5.loop_body:
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 168]
    imul                  rax,     qword [rbp - 16]
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 168]
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 176]
    imul                  rax,                    8
     mov    qword [rbp - 176],                  rax
     mov                  rax,       qword [@b - 0]
     mov    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp - 176]
     add    qword [rbp - 184],                  rax
     mov                  rcx,    qword [rbp - 184]
     mov      qword [rcx - 0],                    0
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 192],                  rax
     add    qword [rbp - 192],                    1
     mov                  rax,    qword [rbp - 192]
     mov     qword [rbp - 16],                  rax
     jmp getPrime.6.loop_condition
getPrime.6.loop_condition:
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 200]
    imul                  rax,     qword [rbp - 16]
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 200]
     cmp                  rax,      qword [rbp - 8]
     mov                  rax,    qword [rbp - 208]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 208],                  rax
     cmp    qword [rbp - 208],                    1
      je getPrime.5.loop_body
     jmp getPrime.7.loop_exit
getPrime.7.loop_exit:
     mov     qword [rbp - 16],                    2
     jmp getPrime.8.loop_increment
getPrime.8.loop_increment:
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 216],                  rax
     add    qword [rbp - 216],                    1
     mov                  rax,    qword [rbp - 216]
     mov     qword [rbp - 24],                  rax
     jmp getPrime.9.loop_condition
getPrime.9.loop_condition:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,      qword [rbp - 8]
     mov                  rax,    qword [rbp - 224]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 224],                  rax
     cmp    qword [rbp - 224],                    1
      je getPrime.1.loop_body
getPrime.10.loop_exit:
getPrime.11.exit:
     add                  rsp,                  224
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   64
@GlobalDeclaration.0.enter:
     mov      qword [rbp - 8],                 1001
     add      qword [rbp - 8],                    1
     mov                  rax,      qword [rbp - 8]
    imul                  rax,                    8
     mov      qword [rbp - 8],                  rax
     mov                  rdi,      qword [rbp - 8]
    call               malloc
     mov     qword [rbp - 16],                  rax
     mov                  rcx,     qword [rbp - 16]
     mov      qword [rcx - 0],                 1001
     add     qword [rbp - 16],                    8
     mov                  rax,     qword [rbp - 16]
     mov       qword [@b - 0],                  rax
     mov     qword [rbp - 24],                  170
     add     qword [rbp - 24],                    1
     mov                  rax,     qword [rbp - 24]
    imul                  rax,                    8
     mov     qword [rbp - 24],                  rax
     mov                  rdi,     qword [rbp - 24]
    call               malloc
     mov     qword [rbp - 32],                  rax
     mov                  rcx,     qword [rbp - 32]
     mov      qword [rcx - 0],                  170
     add     qword [rbp - 32],                    8
     mov                  rax,     qword [rbp - 32]
     mov   qword [@prime - 0],                  rax
     mov     qword [rbp - 40],                 1001
     add     qword [rbp - 40],                    1
     mov                  rax,     qword [rbp - 40]
    imul                  rax,                    8
     mov     qword [rbp - 40],                  rax
     mov                  rdi,     qword [rbp - 40]
    call               malloc
     mov     qword [rbp - 48],                  rax
     mov                  rcx,     qword [rbp - 48]
     mov      qword [rcx - 0],                 1001
     add     qword [rbp - 48],                    8
     mov                  rax,     qword [rbp - 48]
     mov     qword [@gps - 0],                  rax
     mov     qword [rbp - 56],                    1
     add     qword [rbp - 56],                    1
     mov                  rax,     qword [rbp - 56]
    imul                  rax,                    8
     mov     qword [rbp - 56],                  rax
     mov                  rdi,     qword [rbp - 56]
    call               malloc
     mov     qword [rbp - 64],                  rax
     mov                  rcx,     qword [rbp - 64]
     mov      qword [rcx - 0],                    1
     add     qword [rbp - 64],                    8
     mov                  rax,     qword [rbp - 64]
     mov     qword [@tmp - 0],                  rax
@GlobalDeclaration.1.exit:
     add                  rsp,                   64
     pop                  rbp
     ret
origin:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  104
origin.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 16],                  rax
     add     qword [rbp - 16],                    1
     mov                  rax,     qword [rbp - 16]
    imul                  rax,                    8
     mov     qword [rbp - 16],                  rax
    push                  rdi
     mov                  rdi,     qword [rbp - 16]
    call               malloc
     pop                  rdi
     mov     qword [rbp - 24],                  rax
     mov                  rcx,     qword [rbp - 24]
     mov                  rax,      qword [rbp - 8]
     mov      qword [rcx - 0],                  rax
     add     qword [rbp - 24],                    8
     mov                  rax,     qword [rbp - 24]
     mov  qword [@result - 0],                  rax
     mov       qword [@i - 0],                    0
     jmp origin.7.loop_condition
origin.1.loop_body:
     mov                  rax,       qword [@i - 0]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 32]
    imul                  rax,                    8
     mov     qword [rbp - 32],                  rax
     mov                  rax,  qword [@result - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 32]
     add     qword [rbp - 40],                  rax
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 48],                  rax
     add     qword [rbp - 48],                    1
     mov                  rax,     qword [rbp - 48]
    imul                  rax,                    8
     mov     qword [rbp - 48],                  rax
    push                  rdi
     mov                  rdi,     qword [rbp - 48]
    call               malloc
     pop                  rdi
     mov     qword [rbp - 56],                  rax
     mov                  rcx,     qword [rbp - 56]
     mov                  rax,      qword [rbp - 8]
     mov      qword [rcx - 0],                  rax
     add     qword [rbp - 56],                    8
     mov                  rcx,     qword [rbp - 40]
     mov                  rax,     qword [rbp - 56]
     mov      qword [rcx - 0],                  rax
     mov       qword [@j - 0],                    0
     jmp origin.4.loop_condition
origin.2.loop_body:
     mov                  rax,       qword [@i - 0]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
    imul                  rax,                    8
     mov     qword [rbp - 64],                  rax
     mov                  rax,  qword [@result - 0]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 64]
     add     qword [rbp - 72],                  rax
     mov                  rax,       qword [@j - 0]
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 80]
    imul                  rax,                    8
     mov     qword [rbp - 80],                  rax
     mov                  rcx,     qword [rbp - 72]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 80]
     add     qword [rbp - 88],                  rax
     mov                  rcx,     qword [rbp - 88]
     mov      qword [rcx - 0],                    0
     jmp origin.3.loop_increment
origin.3.loop_increment:
     add       qword [@j - 0],                    1
     jmp origin.4.loop_condition
origin.4.loop_condition:
     mov                  rax,       qword [@j - 0]
     cmp                  rax,      qword [rbp - 8]
     mov                  rax,     qword [rbp - 96]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 96],                  rax
     cmp     qword [rbp - 96],                    1
      je   origin.2.loop_body
     jmp   origin.5.loop_exit
origin.5.loop_exit:
     jmp origin.6.loop_increment
origin.6.loop_increment:
     add       qword [@i - 0],                    1
     jmp origin.7.loop_condition
origin.7.loop_condition:
     mov                  rax,       qword [@i - 0]
     cmp                  rax,      qword [rbp - 8]
     mov                  rax,    qword [rbp - 104]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 104],                  rax
     cmp    qword [rbp - 104],                    1
      je   origin.1.loop_body
origin.8.loop_exit:
origin.9.exit:
     add                  rsp,                  104
     pop                  rbp
     ret
getResult:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  424
getResult.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                  rsi
     mov     qword [rbp - 24],                  rdx
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 32]
    imul                  rax,                    8
     mov     qword [rbp - 32],                  rax
     mov                  rax,  qword [@result - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 32]
     add     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 48]
    imul                  rax,                    8
     mov     qword [rbp - 48],                  rax
     mov                  rcx,     qword [rbp - 40]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 56],                  rax
     mov     qword [rbp - 64],                    1
     neg     qword [rbp - 64]
     mov                  rcx,     qword [rbp - 56]
     mov                  rax,      qword [rcx - 0]
     cmp                  rax,     qword [rbp - 64]
     mov                  rax,     qword [rbp - 72]
     mov                  rax,                    0
    sete                   al
     mov     qword [rbp - 72],                  rax
     cmp     qword [rbp - 72],                    1
      je  getResult.1.if_true
     jmp getResult.8.if_false
getResult.1.if_true:
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 80]
    imul                  rax,                    8
     mov     qword [rbp - 80],                  rax
     mov                  rax,   qword [@prime - 0]
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 80]
     add     qword [rbp - 88],                  rax
     mov                  rcx,     qword [rbp - 88]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
    imul                  rax,                    2
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 104],                  rax
     mov                  rax,    qword [rbp - 104]
    imul                  rax,                    8
     mov    qword [rbp - 104],                  rax
     mov                  rax,   qword [@prime - 0]
     mov    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 104]
     add    qword [rbp - 112],                  rax
     mov                  rax,     qword [rbp - 96]
     mov    qword [rbp - 120],                  rax
     mov                  rcx,    qword [rbp - 112]
     mov                  rax,      qword [rcx - 0]
     sub    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 120]
     cmp                  rax,      qword [rbp - 8]
     mov                  rax,    qword [rbp - 128]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 128],                  rax
     cmp    qword [rbp - 128],                    1
      je  getResult.2.if_true
     jmp getResult.6.if_false
getResult.2.if_true:
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 136],                  rax
     mov                  rax,    qword [rbp - 136]
    imul                  rax,                    8
     mov    qword [rbp - 136],                  rax
     mov                  rax,   qword [@prime - 0]
     mov    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 136]
     add    qword [rbp - 144],                  rax
     mov                  rcx,    qword [rbp - 144]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp - 152]
    imul                  rax,                    2
     mov    qword [rbp - 152],                  rax
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 160],                  rax
     mov                  rax,    qword [rbp - 160]
    imul                  rax,                    8
     mov    qword [rbp - 160],                  rax
     mov                  rax,   qword [@prime - 0]
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 160]
     add    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 152]
     mov    qword [rbp - 176],                  rax
     mov                  rcx,    qword [rbp - 168]
     mov                  rax,      qword [rcx - 0]
     sub    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 176]
     mov    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp - 184]
    imul                  rax,                    8
     mov    qword [rbp - 184],                  rax
     mov                  rax,       qword [@b - 0]
     mov    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp - 184]
     add    qword [rbp - 192],                  rax
     mov                  rcx,    qword [rbp - 192]
     cmp      qword [rcx - 0],                    0
     mov                  rax,    qword [rbp - 200]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 200],                  rax
     cmp    qword [rbp - 200],                    1
      je  getResult.3.if_true
     jmp getResult.4.if_false
getResult.3.if_true:
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp - 208]
    imul                  rax,                    8
     mov    qword [rbp - 208],                  rax
     mov                  rax,  qword [@result - 0]
     mov    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp - 208]
     add    qword [rbp - 216],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp - 224]
    imul                  rax,                    8
     mov    qword [rbp - 224],                  rax
     mov                  rcx,    qword [rbp - 216]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp - 224]
     add    qword [rbp - 232],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp - 240]
    imul                  rax,                    8
     mov    qword [rbp - 240],                  rax
     mov                  rax,   qword [@prime - 0]
     mov    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp - 240]
     add    qword [rbp - 248],                  rax
     mov                  rcx,    qword [rbp - 248]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp - 256]
    imul                  rax,                    2
     mov    qword [rbp - 256],                  rax
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp - 264]
    imul                  rax,                    8
     mov    qword [rbp - 264],                  rax
     mov                  rax,   qword [@prime - 0]
     mov    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 264]
     add    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 256]
     mov    qword [rbp - 280],                  rax
     mov                  rcx,    qword [rbp - 272]
     mov                  rax,      qword [rcx - 0]
     sub    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp - 280]
     mov    qword [rbp - 288],                  rax
     mov                  rax,    qword [rbp - 288]
    imul                  rax,                    8
     mov    qword [rbp - 288],                  rax
     mov                  rax,     qword [@gps - 0]
     mov    qword [rbp - 296],                  rax
     mov                  rax,    qword [rbp - 288]
     add    qword [rbp - 296],                  rax
     mov                  rdi,      qword [rbp - 8]
     mov                  rsi,     qword [rbp - 24]
     mov                  rcx,    qword [rbp - 296]
     mov                  rdx,      qword [rcx - 0]
    push                  rdi
    push                  rdx
    push                  rsi
    call            getResult
     pop                  rsi
     pop                  rdx
     pop                  rdi
     mov    qword [rbp - 304],                  rax
     mov                  rax,    qword [rbp - 304]
     mov    qword [rbp - 312],                  rax
     add    qword [rbp - 312],                    1
     mov                  rcx,    qword [rbp - 232]
     mov                  rax,    qword [rbp - 312]
     mov      qword [rcx - 0],                  rax
     jmp  getResult.5.if_exit
getResult.4.if_false:
     jmp  getResult.5.if_exit
getResult.5.if_exit:
     jmp  getResult.7.if_exit
getResult.6.if_false:
     jmp  getResult.7.if_exit
getResult.7.if_exit:
     jmp  getResult.9.if_exit
getResult.8.if_false:
     jmp  getResult.9.if_exit
getResult.9.if_exit:
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 320],                  rax
     mov                  rax,    qword [rbp - 320]
    imul                  rax,                    8
     mov    qword [rbp - 320],                  rax
     mov                  rax,  qword [@result - 0]
     mov    qword [rbp - 328],                  rax
     mov                  rax,    qword [rbp - 320]
     add    qword [rbp - 328],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 336],                  rax
     mov                  rax,    qword [rbp - 336]
    imul                  rax,                    8
     mov    qword [rbp - 336],                  rax
     mov                  rcx,    qword [rbp - 328]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 344],                  rax
     mov                  rax,    qword [rbp - 336]
     add    qword [rbp - 344],                  rax
     mov    qword [rbp - 352],                    1
     neg    qword [rbp - 352]
     mov                  rcx,    qword [rbp - 344]
     mov                  rax,      qword [rcx - 0]
     cmp                  rax,    qword [rbp - 352]
     mov                  rax,    qword [rbp - 360]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 360],                  rax
     cmp    qword [rbp - 360],                    1
      je getResult.10.if_true
     jmp getResult.11.if_false
getResult.10.if_true:
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 368],                  rax
     mov                  rax,    qword [rbp - 368]
    imul                  rax,                    8
     mov    qword [rbp - 368],                  rax
     mov                  rax,  qword [@result - 0]
     mov    qword [rbp - 376],                  rax
     mov                  rax,    qword [rbp - 368]
     add    qword [rbp - 376],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 384],                  rax
     mov                  rax,    qword [rbp - 384]
    imul                  rax,                    8
     mov    qword [rbp - 384],                  rax
     mov                  rcx,    qword [rbp - 376]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 392],                  rax
     mov                  rax,    qword [rbp - 384]
     add    qword [rbp - 392],                  rax
     mov                  rcx,    qword [rbp - 392]
     mov      qword [rcx - 0],                    1
     jmp getResult.12.if_exit
getResult.11.if_false:
     jmp getResult.12.if_exit
getResult.12.if_exit:
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 400],                  rax
     mov                  rax,    qword [rbp - 400]
    imul                  rax,                    8
     mov    qword [rbp - 400],                  rax
     mov                  rax,  qword [@result - 0]
     mov    qword [rbp - 408],                  rax
     mov                  rax,    qword [rbp - 400]
     add    qword [rbp - 408],                  rax
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 416],                  rax
     mov                  rax,    qword [rbp - 416]
    imul                  rax,                    8
     mov    qword [rbp - 416],                  rax
     mov                  rcx,    qword [rbp - 408]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 424],                  rax
     mov                  rax,    qword [rbp - 416]
     add    qword [rbp - 424],                  rax
     mov                  rcx,    qword [rbp - 424]
     mov                  rax,      qword [rcx - 0]
getResult.13.exit:
     add                  rsp,                  424
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                  496
main.0.enter:
     mov                  rdi,                  170
    push                  rdx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call               origin
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rdx
     mov       qword [@N - 0],                 1000
    push                  rdx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rdx
     mov      qword [rbp - 8],                  rax
     mov                  rax,      qword [rbp - 8]
     mov       qword [@M - 0],                  rax
     mov qword [@primeCount - 0],                    0
     mov qword [@resultCount - 0],                    0
     mov     qword [rbp - 16],                    0
     mov                  rax,     qword [rbp - 16]
    imul                  rax,                    8
     mov     qword [rbp - 16],                  rax
     mov                  rax,     qword [@tmp - 0]
     mov     qword [rbp - 24],                  rax
     mov                  rax,     qword [rbp - 16]
     add     qword [rbp - 24],                  rax
     mov                  rcx,     qword [rbp - 24]
     mov      qword [rcx - 0],                    0
     mov       qword [@i - 0],                    0
     jmp main.3.loop_condition
main.1.loop_body:
     mov                  rax,       qword [@i - 0]
     mov     qword [rbp - 32],                  rax
     mov                  rax,     qword [rbp - 32]
    imul                  rax,                    8
     mov     qword [rbp - 32],                  rax
     mov                  rax,       qword [@b - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 32]
     add     qword [rbp - 40],                  rax
     mov                  rcx,     qword [rbp - 40]
     mov      qword [rcx - 0],                    1
     mov                  rax,       qword [@i - 0]
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 48]
    imul                  rax,                    8
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [@gps - 0]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 56],                  rax
     mov                  rcx,     qword [rbp - 56]
     mov      qword [rcx - 0],                    0
     jmp main.2.loop_increment
main.2.loop_increment:
     mov                  rax,       qword [@i - 0]
     mov     qword [rbp - 64],                  rax
     add     qword [rbp - 64],                    1
     mov                  rax,     qword [rbp - 64]
     mov       qword [@i - 0],                  rax
     jmp main.3.loop_condition
main.3.loop_condition:
     mov                  rax,       qword [@N - 0]
     mov     qword [rbp - 72],                  rax
     add     qword [rbp - 72],                    1
     mov                  rax,       qword [@i - 0]
     cmp                  rax,     qword [rbp - 72]
     mov                  rax,     qword [rbp - 80]
     mov                  rax,                    0
    setl                   al
     mov     qword [rbp - 80],                  rax
     cmp     qword [rbp - 80],                    1
      je     main.1.loop_body
     jmp     main.4.loop_exit
main.4.loop_exit:
     mov       qword [@i - 0],                    0
     jmp main.7.loop_condition
main.5.loop_body:
     mov                  rax,       qword [@i - 0]
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 88]
    imul                  rax,                    8
     mov     qword [rbp - 88],                  rax
     mov                  rax,   qword [@prime - 0]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 88]
     add     qword [rbp - 96],                  rax
     mov                  rcx,     qword [rbp - 96]
     mov      qword [rcx - 0],                    0
     jmp main.6.loop_increment
main.6.loop_increment:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 104],                  rax
     add    qword [rbp - 104],                    1
     mov                  rax,    qword [rbp - 104]
     mov       qword [@i - 0],                  rax
     jmp main.7.loop_condition
main.7.loop_condition:
     mov                  rax,       qword [@M - 0]
     mov    qword [rbp - 112],                  rax
     add    qword [rbp - 112],                    1
     mov                  rax,       qword [@i - 0]
     cmp                  rax,    qword [rbp - 112]
     mov                  rax,    qword [rbp - 120]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 120],                  rax
     cmp    qword [rbp - 120],                    1
      je     main.5.loop_body
     jmp     main.8.loop_exit
main.8.loop_exit:
     mov       qword [@i - 0],                    0
     jmp main.15.loop_condition
main.9.loop_body:
     mov       qword [@j - 0],                    0
     jmp main.12.loop_condition
main.10.loop_body:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 128]
    imul                  rax,                    8
     mov    qword [rbp - 128],                  rax
     mov                  rax,  qword [@result - 0]
     mov    qword [rbp - 136],                  rax
     mov                  rax,    qword [rbp - 128]
     add    qword [rbp - 136],                  rax
     mov                  rax,       qword [@j - 0]
     mov    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
    imul                  rax,                    8
     mov    qword [rbp - 144],                  rax
     mov                  rcx,    qword [rbp - 136]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp - 144]
     add    qword [rbp - 152],                  rax
     mov    qword [rbp - 160],                    1
     neg    qword [rbp - 160]
     mov                  rcx,    qword [rbp - 152]
     mov                  rax,    qword [rbp - 160]
     mov      qword [rcx - 0],                  rax
     jmp main.11.loop_increment
main.11.loop_increment:
     mov                  rax,       qword [@j - 0]
     mov    qword [rbp - 168],                  rax
     add    qword [rbp - 168],                    1
     mov                  rax,    qword [rbp - 168]
     mov       qword [@j - 0],                  rax
     jmp main.12.loop_condition
main.12.loop_condition:
     mov                  rax,       qword [@j - 0]
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 176]
     cmp                  rax,       qword [@M - 0]
     mov                  rax,    qword [rbp - 184]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 184],                  rax
     cmp    qword [rbp - 184],                    1
      je    main.10.loop_body
     jmp    main.13.loop_exit
main.13.loop_exit:
     jmp main.14.loop_increment
main.14.loop_increment:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 192],                  rax
     add    qword [rbp - 192],                    1
     mov                  rax,    qword [rbp - 192]
     mov       qword [@i - 0],                  rax
     jmp main.15.loop_condition
main.15.loop_condition:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 200]
     cmp                  rax,       qword [@M - 0]
     mov                  rax,    qword [rbp - 208]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 208],                  rax
     cmp    qword [rbp - 208],                    1
      je     main.9.loop_body
     jmp    main.16.loop_exit
main.16.loop_exit:
     mov                  rdi,       qword [@N - 0]
    push                  rdx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call             getPrime
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rdx
     mov    qword [rbp - 216],                    0
     mov                  rax,    qword [rbp - 216]
    imul                  rax,                    8
     mov    qword [rbp - 216],                  rax
     mov                  rax,     qword [@tmp - 0]
     mov    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp - 216]
     add    qword [rbp - 224],                  rax
     mov                  rcx,    qword [rbp - 224]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp - 232]
     mov qword [@primeCount - 0],                  rax
     mov       qword [@i - 0],                    1
     jmp main.29.loop_condition
main.17.loop_body:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 240],                  rax
     add    qword [rbp - 240],                    1
     mov                  rax,    qword [rbp - 240]
     mov       qword [@j - 0],                  rax
     jmp main.26.loop_condition
main.18.loop_body:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp - 248]
    imul                  rax,                    8
     mov    qword [rbp - 248],                  rax
     mov                  rax,  qword [@result - 0]
     mov    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp - 248]
     add    qword [rbp - 256],                  rax
     mov                  rax,       qword [@j - 0]
     mov    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp - 264]
    imul                  rax,                    8
     mov    qword [rbp - 264],                  rax
     mov                  rcx,    qword [rbp - 256]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 264]
     add    qword [rbp - 272],                  rax
     mov    qword [rbp - 280],                    1
     neg    qword [rbp - 280]
     mov                  rcx,    qword [rbp - 272]
     mov                  rax,      qword [rcx - 0]
     cmp                  rax,    qword [rbp - 280]
     mov                  rax,    qword [rbp - 288]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 288],                  rax
     cmp    qword [rbp - 288],                    1
      je      main.19.if_true
     jmp     main.23.if_false
main.19.if_true:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 296],                  rax
     mov                  rax,    qword [rbp - 296]
    imul                  rax,                    8
     mov    qword [rbp - 296],                  rax
     mov                  rax,  qword [@result - 0]
     mov    qword [rbp - 304],                  rax
     mov                  rax,    qword [rbp - 296]
     add    qword [rbp - 304],                  rax
     mov                  rax,       qword [@j - 0]
     mov    qword [rbp - 312],                  rax
     mov                  rax,    qword [rbp - 312]
    imul                  rax,                    8
     mov    qword [rbp - 312],                  rax
     mov                  rcx,    qword [rbp - 304]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 320],                  rax
     mov                  rax,    qword [rbp - 312]
     add    qword [rbp - 320],                  rax
     mov                  rdi,       qword [@N - 0]
     mov                  rsi,       qword [@i - 0]
     mov                  rdx,       qword [@j - 0]
    push                  rdx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call            getResult
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rdx
     mov    qword [rbp - 328],                  rax
     mov                  rcx,    qword [rbp - 320]
     mov                  rax,    qword [rbp - 328]
     mov      qword [rcx - 0],                  rax
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 336],                  rax
     mov                  rax,    qword [rbp - 336]
    imul                  rax,                    8
     mov    qword [rbp - 336],                  rax
     mov                  rax,  qword [@result - 0]
     mov    qword [rbp - 344],                  rax
     mov                  rax,    qword [rbp - 336]
     add    qword [rbp - 344],                  rax
     mov                  rax,       qword [@j - 0]
     mov    qword [rbp - 352],                  rax
     mov                  rax,    qword [rbp - 352]
    imul                  rax,                    8
     mov    qword [rbp - 352],                  rax
     mov                  rcx,    qword [rbp - 344]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 360],                  rax
     mov                  rax,    qword [rbp - 352]
     add    qword [rbp - 360],                  rax
     mov                  rcx,    qword [rbp - 360]
     cmp      qword [rcx - 0],                    1
     mov                  rax,    qword [rbp - 368]
     mov                  rax,                    0
    setg                   al
     mov    qword [rbp - 368],                  rax
     cmp    qword [rbp - 368],                    1
      je      main.20.if_true
     jmp     main.21.if_false
main.20.if_true:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 376],                  rax
     mov                  rax,    qword [rbp - 376]
    imul                  rax,                    8
     mov    qword [rbp - 376],                  rax
     mov                  rax,   qword [@prime - 0]
     mov    qword [rbp - 384],                  rax
     mov                  rax,    qword [rbp - 376]
     add    qword [rbp - 384],                  rax
     mov                  rax,       qword [@j - 0]
     mov    qword [rbp - 392],                  rax
     mov                  rax,    qword [rbp - 392]
    imul                  rax,                    8
     mov    qword [rbp - 392],                  rax
     mov                  rax,   qword [@prime - 0]
     mov    qword [rbp - 400],                  rax
     mov                  rax,    qword [rbp - 392]
     add    qword [rbp - 400],                  rax
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 408],                  rax
     mov                  rax,    qword [rbp - 408]
    imul                  rax,                    8
     mov    qword [rbp - 408],                  rax
     mov                  rax,  qword [@result - 0]
     mov    qword [rbp - 416],                  rax
     mov                  rax,    qword [rbp - 408]
     add    qword [rbp - 416],                  rax
     mov                  rax,       qword [@j - 0]
     mov    qword [rbp - 424],                  rax
     mov                  rax,    qword [rbp - 424]
    imul                  rax,                    8
     mov    qword [rbp - 424],                  rax
     mov                  rcx,    qword [rbp - 416]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 432],                  rax
     mov                  rax,    qword [rbp - 424]
     add    qword [rbp - 432],                  rax
     mov                  rcx,    qword [rbp - 384]
     mov                  rdi,      qword [rcx - 0]
     mov                  rcx,    qword [rbp - 400]
     mov                  rsi,      qword [rcx - 0]
     mov                  rcx,    qword [rbp - 432]
     mov                  rdx,      qword [rcx - 0]
    push                  rdx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call               printF
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rdx
     mov                  rax, qword [@resultCount - 0]
     mov    qword [rbp - 440],                  rax
     add    qword [rbp - 440],                    1
     mov                  rax,    qword [rbp - 440]
     mov qword [@resultCount - 0],                  rax
     jmp      main.22.if_exit
main.21.if_false:
     jmp      main.22.if_exit
main.22.if_exit:
     jmp      main.24.if_exit
main.23.if_false:
     jmp      main.24.if_exit
main.24.if_exit:
     jmp main.25.loop_increment
main.25.loop_increment:
     mov                  rax,       qword [@j - 0]
     mov    qword [rbp - 448],                  rax
     add    qword [rbp - 448],                    1
     mov                  rax,    qword [rbp - 448]
     mov       qword [@j - 0],                  rax
     jmp main.26.loop_condition
main.26.loop_condition:
     mov                  rax,       qword [@j - 0]
     mov    qword [rbp - 456],                  rax
     mov                  rax,    qword [rbp - 456]
     cmp                  rax, qword [@primeCount - 0]
     mov                  rax,    qword [rbp - 464]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 464],                  rax
     cmp    qword [rbp - 464],                    1
      je    main.18.loop_body
     jmp    main.27.loop_exit
main.27.loop_exit:
     jmp main.28.loop_increment
main.28.loop_increment:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 472],                  rax
     add    qword [rbp - 472],                    1
     mov                  rax,    qword [rbp - 472]
     mov       qword [@i - 0],                  rax
     jmp main.29.loop_condition
main.29.loop_condition:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 480],                  rax
     mov                  rax,    qword [rbp - 480]
     cmp                  rax, qword [@primeCount - 0]
     mov                  rax,    qword [rbp - 488]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 488],                  rax
     cmp    qword [rbp - 488],                    1
      je    main.17.loop_body
     jmp    main.30.loop_exit
main.30.loop_exit:
     mov                  rdi,      __string_const0
    push                  rdx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call                print
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rdx
     mov                  rdi, qword [@resultCount - 0]
    push                  rdx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rdx
     mov    qword [rbp - 496],                  rax
     mov                  rdi,    qword [rbp - 496]
    push                  rdx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     pop                  rdx
     mov                  rax,                    0
main.31.exit:
     add                  rsp,                  496
     pop                  rbp
     ret
printF:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   88
printF.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                  rsi
     mov     qword [rbp - 24],                  rdx
     mov                  rdi,      qword [rbp - 8]
    push                  rdi
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                  rdi
     mov     qword [rbp - 32],                  rax
     mov                  rdi,     qword [rbp - 32]
    push                  rdi
    push                  rdx
    push                  rsi
    call                print
     pop                  rsi
     pop                  rdx
     pop                  rdi
     jmp printF.2.loop_condition
printF.1.loop_body:
     mov                  rdi,      __string_const1
    push                  rdi
    push                  rdx
    push                  rsi
    call                print
     pop                  rsi
     pop                  rdx
     pop                  rdi
     mov                  rdi,     qword [rbp - 16]
    push                  rdi
    push                  rdx
    push                  rsi
    call             toString
     pop                  rsi
     pop                  rdx
     pop                  rdi
     mov     qword [rbp - 40],                  rax
     mov                  rdi,     qword [rbp - 40]
    push                  rdi
    push                  rdx
    push                  rsi
    call                print
     pop                  rsi
     pop                  rdx
     pop                  rdi
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 48]
    imul                  rax,                    2
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 56],                  rax
     mov                  rax,      qword [rbp - 8]
     sub     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 56]
     mov     qword [rbp - 16],                  rax
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 16]
     add     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     mov                  rcx,                    2
     cqo
    idiv                  rcx
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     mov      qword [rbp - 8],                  rax
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 80],                  rax
     sub     qword [rbp - 80],                    1
     mov                  rax,     qword [rbp - 80]
     mov     qword [rbp - 24],                  rax
     jmp printF.2.loop_condition
printF.2.loop_condition:
     cmp     qword [rbp - 24],                    0
     mov                  rax,     qword [rbp - 88]
     mov                  rax,                    0
    setg                   al
     mov     qword [rbp - 88],                  rax
     cmp     qword [rbp - 88],                    1
      je   printF.1.loop_body
     jmp   printF.3.loop_exit
printF.3.loop_exit:
     mov                  rdi,      __string_const2
    push                  rdi
    push                  rdx
    push                  rsi
    call                print
     pop                  rsi
     pop                  rdx
     pop                  rdi
printF.4.exit:
     add                  rsp,                   88
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
      dq                    7
__string_const0:
      db         "Total: ", 0
      dq                    1
__string_const1:
      db               " ", 0
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
@N:
    resq                    1
@M:
    resq                    1
@i:
    resq                    1
@j:
    resq                    1
@primeCount:
    resq                    1
@resultCount:
    resq                    1
@b:
    resq                    1
@prime:
    resq                    1
@gps:
    resq                    1
@tmp:
    resq                    1
@result:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
