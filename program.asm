global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
gcd:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  352
gcd.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                  rsi
     mov     qword [rbp - 24],                  rdx
     mov     qword [rbp - 32],                  rcx
     mov     qword [rbp - 40],                   r8
     mov     qword [rbp - 48],                   r9
     mov     qword [rbp - 56],                    0
     jmp gcd.3.loop_condition
gcd.1.loop_body:
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 32]
     add     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 40]
     add     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 80]
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp + 32]
     add     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 88]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp + 40]
     add     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
     mov    qword [rbp - 104],                  rax
     mov                  rax,     qword [rbp + 48]
     add    qword [rbp - 104],                  rax
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 112],                  rax
     mov                  rax,     qword [rbp + 56]
     add    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 112]
     mov    qword [rbp - 120],                  rax
     mov                  rax,     qword [rbp + 64]
     add    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 120]
     mov    qword [rbp - 128],                  rax
     mov                  rax,     qword [rbp + 72]
     add    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 128]
     mov    qword [rbp - 136],                  rax
     mov                  rax,     qword [rbp + 80]
     add    qword [rbp - 136],                  rax
     mov                  rax,    qword [rbp - 136]
     mov    qword [rbp - 144],                  rax
     mov                  rax,     qword [rbp + 88]
     add    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
     mov    qword [rbp - 152],                  rax
     mov                  rax,     qword [rbp + 96]
     add    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp - 152]
     mov    qword [rbp - 160],                  rax
     mov                  rax,    qword [rbp + 104]
     add    qword [rbp - 160],                  rax
     mov                  rax,    qword [rbp - 160]
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp + 112]
     add    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 168]
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp + 120]
     add    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 176]
     mov    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp + 128]
     add    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp - 184]
     mov    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp + 136]
     add    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp - 192]
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp + 144]
     add    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 200]
     mov    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp + 152]
     add    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp - 208]
     mov    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp + 160]
     add    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp - 216]
     mov    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp + 168]
     add    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp - 224]
     mov    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp + 176]
     add    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp - 232]
     mov    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp + 184]
     add    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp - 240]
     mov    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp + 192]
     add    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp - 248]
     mov    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp + 200]
     add    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp - 256]
     mov    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp + 208]
     add    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp - 264]
     mov    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp + 216]
     add    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 272]
     mov    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp + 224]
     add    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp - 280]
     mov    qword [rbp - 288],                  rax
     mov                  rax,    qword [rbp + 232]
     add    qword [rbp - 288],                  rax
     mov                  rax,    qword [rbp - 288]
     mov    qword [rbp - 296],                  rax
     mov                  rax,    qword [rbp - 296]
     mov                  rcx,                  100
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 296],                  rdx
     mov                  rax,    qword [rbp - 296]
     mov    qword [rbp - 304],                  rax
     jmp gcd.2.loop_increment
gcd.2.loop_increment:
     add     qword [rbp - 56],                    1
     jmp gcd.3.loop_condition
gcd.3.loop_condition:
     cmp     qword [rbp - 56],                   10
     mov                  rax,    qword [rbp - 312]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 312],                  rax
     cmp    qword [rbp - 312],                    1
      je      gcd.1.loop_body
     jmp      gcd.4.loop_exit
gcd.4.loop_exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 320],                  rax
     mov                  rax,    qword [rbp - 320]
     mov                  rcx,     qword [rbp - 16]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 320],                  rdx
     cmp    qword [rbp - 320],                    0
     mov                  rax,    qword [rbp - 328]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 328],                  rax
     cmp    qword [rbp - 328],                    1
      je        gcd.5.if_true
     jmp       gcd.6.if_false
gcd.5.if_true:
     mov                  rax,     qword [rbp - 16]
     jmp           gcd.8.exit
gcd.6.if_false:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 336],                  rax
     mov                  rax,    qword [rbp - 336]
     mov                  rcx,     qword [rbp - 16]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 336],                  rdx
     mov                  rdi,                   10
     mov                  rsi,                   68
     mov                  rdx,                    0
     mov                  rcx,                    2
     mov                   r8,                    4
     mov                   r9,                    6
    push                   58
    push                   56
    push                   54
    push                   52
    push                   50
    push                   48
    push                   46
    push                   44
    push                   42
    push                   40
    push                   38
    push                   36
    push                   34
    push                   32
    push                   30
    push                   28
    push                   26
    push                   24
    push                   22
    push                   20
    push                   18
    push                   16
    push                   14
    push                   12
    push                   10
    push                    8
    call                  gcd
     add                  rsp,                  208
     mov    qword [rbp - 344],                  rax
     mov                  rdi,     qword [rbp - 16]
     mov                  rsi,    qword [rbp - 336]
     mov                  rdx,    qword [rbp - 304]
     mov                  rcx,    qword [rbp - 344]
     mov                   r8,     qword [rbp - 40]
     mov                   r9,     qword [rbp - 48]
    push    qword [rbp + 232]
    push    qword [rbp + 224]
    push    qword [rbp + 216]
    push    qword [rbp + 208]
    push    qword [rbp + 200]
    push    qword [rbp + 192]
    push    qword [rbp + 184]
    push    qword [rbp + 176]
    push    qword [rbp + 168]
    push    qword [rbp + 160]
    push    qword [rbp + 152]
    push    qword [rbp + 144]
    push    qword [rbp + 136]
    push    qword [rbp + 128]
    push    qword [rbp + 120]
    push    qword [rbp + 112]
    push    qword [rbp + 104]
    push     qword [rbp + 96]
    push     qword [rbp + 88]
    push     qword [rbp + 80]
    push     qword [rbp + 72]
    push     qword [rbp + 64]
    push     qword [rbp + 56]
    push     qword [rbp + 48]
    push     qword [rbp + 40]
    push     qword [rbp + 32]
    call                 gcd1
     add                  rsp,                  208
     mov    qword [rbp - 352],                  rax
     mov                  rax,    qword [rbp - 352]
     jmp           gcd.8.exit
gcd.7.if_exit:
gcd.8.exit:
     add                  rsp,                  352
     pop                  rbp
     ret
gcd1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  328
gcd1.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                  rsi
     mov     qword [rbp - 24],                  rdx
     mov     qword [rbp - 32],                  rcx
     mov     qword [rbp - 40],                   r8
     mov     qword [rbp - 48],                   r9
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 32]
     add     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 56]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 40]
     add     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp + 32]
     add     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 80]
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp + 40]
     add     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 88]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp + 48]
     add     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
     mov    qword [rbp - 104],                  rax
     mov                  rax,     qword [rbp + 56]
     add    qword [rbp - 104],                  rax
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 112],                  rax
     mov                  rax,     qword [rbp + 64]
     add    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 112]
     mov    qword [rbp - 120],                  rax
     mov                  rax,     qword [rbp + 72]
     add    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 120]
     mov    qword [rbp - 128],                  rax
     mov                  rax,     qword [rbp + 80]
     add    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 128]
     mov    qword [rbp - 136],                  rax
     mov                  rax,     qword [rbp + 88]
     add    qword [rbp - 136],                  rax
     mov                  rax,    qword [rbp - 136]
     mov    qword [rbp - 144],                  rax
     mov                  rax,     qword [rbp + 96]
     add    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
     mov    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp + 104]
     add    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp - 152]
     mov    qword [rbp - 160],                  rax
     mov                  rax,    qword [rbp + 112]
     add    qword [rbp - 160],                  rax
     mov                  rax,    qword [rbp - 160]
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp + 120]
     add    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 168]
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp + 128]
     add    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 176]
     mov    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp + 136]
     add    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp - 184]
     mov    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp + 144]
     add    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp - 192]
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp + 152]
     add    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 200]
     mov    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp + 160]
     add    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp - 208]
     mov    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp + 168]
     add    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp - 216]
     mov    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp + 176]
     add    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp - 224]
     mov    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp + 184]
     add    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp - 232]
     mov    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp + 192]
     add    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp - 240]
     mov    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp + 200]
     add    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp - 248]
     mov    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp + 208]
     add    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp - 256]
     mov    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp + 216]
     add    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp - 264]
     mov    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp + 224]
     add    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 272]
     mov    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp + 232]
     add    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp - 280]
     mov    qword [rbp - 288],                  rax
     mov                  rax,    qword [rbp - 288]
     mov                  rcx,                  100
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 288],                  rdx
     mov                  rax,    qword [rbp - 288]
     mov    qword [rbp - 296],                  rax
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 304],                  rax
     mov                  rax,    qword [rbp - 304]
     mov                  rcx,     qword [rbp - 16]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 304],                  rdx
     cmp    qword [rbp - 304],                    0
     mov                  rax,    qword [rbp - 312]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 312],                  rax
     cmp    qword [rbp - 312],                    1
      je       gcd1.1.if_true
     jmp      gcd1.2.if_false
gcd1.1.if_true:
     mov                  rax,     qword [rbp - 16]
     jmp          gcd1.4.exit
gcd1.2.if_false:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 320],                  rax
     mov                  rax,    qword [rbp - 320]
     mov                  rcx,     qword [rbp - 16]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 320],                  rdx
     mov                  rdi,     qword [rbp - 16]
     mov                  rsi,    qword [rbp - 320]
     mov                  rdx,    qword [rbp - 296]
     mov                  rcx,     qword [rbp - 32]
     mov                   r8,     qword [rbp - 40]
     mov                   r9,     qword [rbp - 48]
     sub                  rsp,                    8
    push    qword [rbp + 232]
    push    qword [rbp + 224]
    push    qword [rbp + 216]
    push    qword [rbp + 208]
    push    qword [rbp + 200]
    push    qword [rbp + 192]
    push    qword [rbp + 184]
    push    qword [rbp + 176]
    push    qword [rbp + 168]
    push    qword [rbp + 160]
    push    qword [rbp + 152]
    push    qword [rbp + 144]
    push    qword [rbp + 136]
    push    qword [rbp + 128]
    push    qword [rbp + 120]
    push    qword [rbp + 112]
    push    qword [rbp + 104]
    push     qword [rbp + 96]
    push     qword [rbp + 88]
    push     qword [rbp + 80]
    push     qword [rbp + 72]
    push     qword [rbp + 64]
    push     qword [rbp + 56]
    push     qword [rbp + 48]
    push     qword [rbp + 40]
    push     qword [rbp + 32]
    call                 gcd2
     add                  rsp,                  216
     mov    qword [rbp - 328],                  rax
     mov                  rax,    qword [rbp - 328]
     jmp          gcd1.4.exit
gcd1.3.if_exit:
gcd1.4.exit:
     add                  rsp,                  328
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                   24
main.0.enter:
     mov                  rdi,                   10
     mov                  rsi,                    1
     mov                  rdx,                    0
     mov                  rcx,                    2
     mov                   r8,                    4
     mov                   r9,                    6
     sub                  rsp,                    8
    push                   58
    push                   56
    push                   54
    push                   52
    push                   50
    push                   48
    push                   46
    push                   44
    push                   42
    push                   40
    push                   38
    push                   36
    push                   34
    push                   32
    push                   30
    push                   28
    push                   26
    push                   24
    push                   22
    push                   20
    push                   18
    push                   16
    push                   14
    push                   12
    push                   10
    push                    8
    call                  gcd
     add                  rsp,                  216
     mov      qword [rbp - 8],                  rax
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 16],                  rax
     add     qword [rbp - 16],                 1024
     mov                  rdi,     qword [rbp - 16]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov     qword [rbp - 24],                  rax
     mov                  rdi,     qword [rbp - 24]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.1.exit
main.1.exit:
     add                  rsp,                   24
     pop                  rbp
     ret
gcd2:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  328
gcd2.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 16],                  rsi
     mov     qword [rbp - 24],                  rdx
     mov     qword [rbp - 32],                  rcx
     mov     qword [rbp - 40],                   r8
     mov     qword [rbp - 48],                   r9
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 32]
     add     qword [rbp - 56],                  rax
     mov                  rax,     qword [rbp - 56]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 40]
     add     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 48]
     add     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp + 32]
     add     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 80]
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp + 40]
     add     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 88]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp + 48]
     add     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
     mov    qword [rbp - 104],                  rax
     mov                  rax,     qword [rbp + 56]
     add    qword [rbp - 104],                  rax
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 112],                  rax
     mov                  rax,     qword [rbp + 64]
     add    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 112]
     mov    qword [rbp - 120],                  rax
     mov                  rax,     qword [rbp + 72]
     add    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 120]
     mov    qword [rbp - 128],                  rax
     mov                  rax,     qword [rbp + 80]
     add    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 128]
     mov    qword [rbp - 136],                  rax
     mov                  rax,     qword [rbp + 88]
     add    qword [rbp - 136],                  rax
     mov                  rax,    qword [rbp - 136]
     mov    qword [rbp - 144],                  rax
     mov                  rax,     qword [rbp + 96]
     add    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
     mov    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp + 104]
     add    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp - 152]
     mov    qword [rbp - 160],                  rax
     mov                  rax,    qword [rbp + 112]
     add    qword [rbp - 160],                  rax
     mov                  rax,    qword [rbp - 160]
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp + 120]
     add    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 168]
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp + 128]
     add    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 176]
     mov    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp + 136]
     add    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp - 184]
     mov    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp + 144]
     add    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp - 192]
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp + 152]
     add    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 200]
     mov    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp + 160]
     add    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp - 208]
     mov    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp + 168]
     add    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp - 216]
     mov    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp + 176]
     add    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp - 224]
     mov    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp + 184]
     add    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp - 232]
     mov    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp + 192]
     add    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp - 240]
     mov    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp + 200]
     add    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp - 248]
     mov    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp + 208]
     add    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp - 256]
     mov    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp + 216]
     add    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp - 264]
     mov    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp + 224]
     add    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 272]
     mov    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp + 232]
     add    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp - 280]
     mov    qword [rbp - 288],                  rax
     mov                  rax,    qword [rbp - 288]
     mov                  rcx,                  100
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 288],                  rdx
     mov                  rax,    qword [rbp - 288]
     mov    qword [rbp - 296],                  rax
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 304],                  rax
     mov                  rax,    qword [rbp - 304]
     mov                  rcx,     qword [rbp - 16]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 304],                  rdx
     cmp    qword [rbp - 304],                    0
     mov                  rax,    qword [rbp - 312]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 312],                  rax
     cmp    qword [rbp - 312],                    1
      je       gcd2.1.if_true
     jmp      gcd2.2.if_false
gcd2.1.if_true:
     mov                  rax,     qword [rbp - 16]
     jmp          gcd2.4.exit
gcd2.2.if_false:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 320],                  rax
     mov                  rax,    qword [rbp - 320]
     mov                  rcx,     qword [rbp - 16]
     mov                  rdx,                    0
     cqo
    idiv                  rcx
     mov    qword [rbp - 320],                  rdx
     mov                  rdi,     qword [rbp - 16]
     mov                  rsi,    qword [rbp - 320]
     mov                  rdx,     qword [rbp - 24]
     mov                  rcx,     qword [rbp - 32]
     mov                   r8,     qword [rbp - 40]
     mov                   r9,     qword [rbp - 48]
     sub                  rsp,                    8
    push    qword [rbp + 232]
    push    qword [rbp + 224]
    push    qword [rbp + 216]
    push    qword [rbp + 208]
    push    qword [rbp + 200]
    push    qword [rbp + 192]
    push    qword [rbp + 184]
    push    qword [rbp + 176]
    push    qword [rbp + 168]
    push    qword [rbp + 160]
    push    qword [rbp + 152]
    push    qword [rbp + 144]
    push    qword [rbp + 136]
    push    qword [rbp + 128]
    push    qword [rbp + 120]
    push    qword [rbp + 112]
    push    qword [rbp + 104]
    push     qword [rbp + 96]
    push     qword [rbp + 88]
    push     qword [rbp + 80]
    push     qword [rbp + 72]
    push     qword [rbp + 64]
    push     qword [rbp + 56]
    push     qword [rbp + 48]
    push     qword [rbp + 40]
    push     qword [rbp + 32]
    call                  gcd
     add                  rsp,                  216
     mov    qword [rbp - 328],                  rax
     mov                  rax,    qword [rbp - 328]
     jmp          gcd2.4.exit
gcd2.3.if_exit:
gcd2.4.exit:
     add                  rsp,                  328
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
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
