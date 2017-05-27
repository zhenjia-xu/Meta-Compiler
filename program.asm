global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
myprint:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  112
myprint.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 24],                    0
     jmp myprint.3.loop_condition
myprint.1.loop_body:
     mov                  rdi,      qword [rbp - 8]
     mov                  rsi,     qword [rbp - 24]
    call         __string_ord
     mov     qword [rbp - 56],                  rax
     mov                  rax,  qword [@myHash - 0]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 56]
     add     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 64]
     mov  qword [@myHash - 0],                  rax
     jmp myprint.2.loop_increment
myprint.2.loop_increment:
     add     qword [rbp - 24],                    1
     jmp myprint.3.loop_condition
myprint.3.loop_condition:
     mov                  rdi,      qword [rbp - 8]
    call      __string_length
     mov    qword [rbp - 104],                  rax
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,    qword [rbp - 104]
     mov                  rax,    qword [rbp - 112]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 112],                  rax
     cmp    qword [rbp - 112],                    1
      je  myprint.1.loop_body
     jmp  myprint.4.loop_exit
myprint.4.loop_exit:
myprint.5.exit:
     add                  rsp,                  112
     pop                  rbp
     ret
dfs:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  632
dfs.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,     qword [rbp - 32]
     mov                  rax,                    0
    sete                   al
     mov     qword [rbp - 32],                  rax
     cmp     qword [rbp - 32],                    1
      je        dfs.1.if_true
     jmp       dfs.5.if_false
dfs.1.if_true:
     jmp          dfs.8.enter
dfs.8.enter:
     mov     qword [rbp - 40],                    0
     jmp dfs.30.loop_condition
dfs.9.loop_body:
     mov     qword [rbp - 48],                    0
     mov     qword [rbp - 56],                    0
     jmp dfs.24.loop_condition
dfs.10.loop_body:
     mov                  rax,     qword [rbp - 40]
     mov     qword [rbp - 64],                  rax
     sal     qword [rbp - 64],                    3
     mov                  rax,     qword [@sat - 0]
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 64]
     add     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 56]
     mov     qword [rbp - 88],                  rax
     sal     qword [rbp - 88],                    3
     mov                  rcx,     qword [rbp - 72]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 88]
     add     qword [rbp - 96],                  rax
     mov                  rcx,     qword [rbp - 96]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 104],                  rax
     cmp    qword [rbp - 104],                    0
     mov                  rax,    qword [rbp - 112]
     mov                  rax,                    0
    setg                   al
     mov    qword [rbp - 112],                  rax
     cmp    qword [rbp - 112],                    1
     jne dfs.12.logical_false
     jmp  dfs.11.logical_true
dfs.11.logical_true:
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 120],                  rax
     sal    qword [rbp - 120],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 120]
     add    qword [rbp - 128],                  rax
     mov                  rcx,    qword [rbp - 128]
     cmp      qword [rcx - 0],                    1
     mov                  rax,    qword [rbp - 144]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
     mov    qword [rbp - 152],                  rax
     jmp  dfs.13.logical_exit
dfs.12.logical_false:
     mov    qword [rbp - 152],                    0
     jmp  dfs.13.logical_exit
dfs.13.logical_exit:
     cmp    qword [rbp - 152],                    1
      je       dfs.14.if_true
     jmp      dfs.15.if_false
dfs.14.if_true:
     mov     qword [rbp - 48],                    1
     jmp       dfs.16.if_exit
dfs.15.if_false:
     jmp       dfs.16.if_exit
dfs.16.if_exit:
     cmp    qword [rbp - 104],                    0
     mov                  rax,    qword [rbp - 160]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 160],                  rax
     cmp    qword [rbp - 160],                    1
     jne dfs.18.logical_false
     jmp  dfs.17.logical_true
dfs.17.logical_true:
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 168],                  rax
     neg    qword [rbp - 168]
     mov                  rax,    qword [rbp - 168]
     mov    qword [rbp - 176],                  rax
     sal    qword [rbp - 176],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 184],                  rax
     mov                  rax,    qword [rbp - 176]
     add    qword [rbp - 184],                  rax
     mov                  rcx,    qword [rbp - 184]
     cmp      qword [rcx - 0],                    0
     mov                  rax,    qword [rbp - 200]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 200],                  rax
     mov                  rax,    qword [rbp - 200]
     mov    qword [rbp - 208],                  rax
     jmp  dfs.19.logical_exit
dfs.18.logical_false:
     mov    qword [rbp - 208],                    0
     jmp  dfs.19.logical_exit
dfs.19.logical_exit:
     cmp    qword [rbp - 208],                    1
      je       dfs.20.if_true
     jmp      dfs.21.if_false
dfs.20.if_true:
     mov     qword [rbp - 48],                    1
     jmp       dfs.22.if_exit
dfs.21.if_false:
     jmp       dfs.22.if_exit
dfs.22.if_exit:
     jmp dfs.23.loop_increment
dfs.23.loop_increment:
     add     qword [rbp - 56],                    1
     jmp dfs.24.loop_condition
dfs.24.loop_condition:
     cmp     qword [rbp - 56],                    3
     mov                  rax,    qword [rbp - 216]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 216],                  rax
     cmp    qword [rbp - 216],                    1
      je     dfs.10.loop_body
     jmp     dfs.25.loop_exit
dfs.25.loop_exit:
     cmp     qword [rbp - 48],                    0
     mov                  rax,    qword [rbp - 224]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 224],                  rax
     cmp    qword [rbp - 224],                    1
      je       dfs.26.if_true
     jmp      dfs.27.if_false
dfs.26.if_true:
     mov                  rax,                    0
     jmp          dfs.32.exit
dfs.27.if_false:
     jmp       dfs.28.if_exit
dfs.28.if_exit:
     jmp dfs.29.loop_increment
dfs.29.loop_increment:
     add     qword [rbp - 40],                    1
     jmp dfs.30.loop_condition
dfs.30.loop_condition:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@m - 0]
     mov                  rax,    qword [rbp - 240]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 240],                  rax
     cmp    qword [rbp - 240],                    1
      je      dfs.9.loop_body
     jmp     dfs.31.loop_exit
dfs.31.loop_exit:
     mov                  rax,                    1
     jmp          dfs.32.exit
dfs.32.exit:
     mov    qword [rbp - 248],                  rax
     cmp    qword [rbp - 248],                    1
     mov                  rax,    qword [rbp - 264]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 264],                  rax
     cmp    qword [rbp - 264],                    1
      je        dfs.2.if_true
     jmp       dfs.3.if_false
dfs.2.if_true:
     mov    qword [rbp - 272],      __string_const3
     jmp         dfs.33.enter
dfs.33.enter:
     mov    qword [rbp - 280],                    0
     jmp dfs.36.loop_condition
dfs.34.loop_body:
     mov                  rdi,    qword [rbp - 272]
     mov                  rsi,    qword [rbp - 280]
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov    qword [rbp - 312],                  rax
     mov                  rax,  qword [@myHash - 0]
     mov    qword [rbp - 320],                  rax
     mov                  rax,    qword [rbp - 312]
     add    qword [rbp - 320],                  rax
     mov                  rax,    qword [rbp - 320]
     mov  qword [@myHash - 0],                  rax
     jmp dfs.35.loop_increment
dfs.35.loop_increment:
     add    qword [rbp - 280],                    1
     jmp dfs.36.loop_condition
dfs.36.loop_condition:
     mov                  rdi,    qword [rbp - 272]
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov    qword [rbp - 360],                  rax
     mov                  rax,    qword [rbp - 280]
     cmp                  rax,    qword [rbp - 360]
     mov                  rax,    qword [rbp - 368]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 368],                  rax
     cmp    qword [rbp - 368],                    1
      je     dfs.34.loop_body
     jmp     dfs.37.loop_exit
dfs.37.loop_exit:
dfs.38.exit:
     mov                  rdi,                    0
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rdi,      __string_const4
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     jmp        dfs.4.if_exit
dfs.3.if_false:
     jmp        dfs.4.if_exit
dfs.4.if_exit:
     jmp           dfs.7.exit
dfs.5.if_false:
     jmp        dfs.6.if_exit
dfs.6.if_exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 392],                  rax
     add    qword [rbp - 392],                    1
     mov                  rax,    qword [rbp - 392]
     mov    qword [rbp - 400],                  rax
     sal    qword [rbp - 400],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 408],                  rax
     mov                  rax,    qword [rbp - 400]
     add    qword [rbp - 408],                  rax
     mov                  rcx,    qword [rbp - 408]
     mov      qword [rcx - 0],                    1
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 424],                  rax
     add    qword [rbp - 424],                    1
     mov                  rax,    qword [rbp - 424]
     mov      qword [rbp - 8],                  rax
     jmp         dfs.39.enter
dfs.39.enter:
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,    qword [rbp - 440]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 440],                  rax
     cmp    qword [rbp - 440],                    1
      je       dfs.40.if_true
     jmp      dfs.44.if_false
dfs.40.if_true:
     sub                  rsp,                    8
    call                check
     add                  rsp,                    8
     mov    qword [rbp - 456],                  rax
     cmp    qword [rbp - 456],                    1
     mov                  rax,    qword [rbp - 464]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 464],                  rax
     cmp    qword [rbp - 464],                    1
      je       dfs.41.if_true
     jmp      dfs.42.if_false
dfs.41.if_true:
     mov                  rdi,      __string_const8
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     mov                  rdi,                    0
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rdi,      __string_const9
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     jmp       dfs.43.if_exit
dfs.42.if_false:
     jmp       dfs.43.if_exit
dfs.43.if_exit:
     jmp          dfs.46.exit
dfs.44.if_false:
     jmp       dfs.45.if_exit
dfs.45.if_exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 496],                  rax
     add    qword [rbp - 496],                    1
     mov                  rax,    qword [rbp - 496]
     mov    qword [rbp - 504],                  rax
     sal    qword [rbp - 504],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 512],                  rax
     mov                  rax,    qword [rbp - 504]
     add    qword [rbp - 512],                  rax
     mov                  rcx,    qword [rbp - 512]
     mov      qword [rcx - 0],                    1
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 528],                  rax
     add    qword [rbp - 528],                    1
     mov                  rdi,    qword [rbp - 528]
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 544],                  rax
     add    qword [rbp - 544],                    1
     mov                  rax,    qword [rbp - 544]
     mov    qword [rbp - 552],                  rax
     sal    qword [rbp - 552],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 560],                  rax
     mov                  rax,    qword [rbp - 552]
     add    qword [rbp - 560],                  rax
     mov                  rcx,    qword [rbp - 560]
     mov      qword [rcx - 0],                    0
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 576],                  rax
     add    qword [rbp - 576],                    1
     mov                  rdi,    qword [rbp - 576]
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
dfs.46.exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 592],                  rax
     add    qword [rbp - 592],                    1
     mov                  rax,    qword [rbp - 592]
     mov    qword [rbp - 600],                  rax
     sal    qword [rbp - 600],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 608],                  rax
     mov                  rax,    qword [rbp - 600]
     add    qword [rbp - 608],                  rax
     mov                  rcx,    qword [rbp - 608]
     mov      qword [rcx - 0],                    0
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 624],                  rax
     add    qword [rbp - 624],                    1
     mov                  rdi,    qword [rbp - 624]
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
dfs.7.exit:
     add                  rsp,                  632
     pop                  rbp
     ret
print_last_cond:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  888
print_last_cond.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,     qword [rbp - 32]
     mov                  rax,                    0
    sete                   al
     mov     qword [rbp - 32],                  rax
     cmp     qword [rbp - 32],                    1
      je print_last_cond.1.if_true
     jmp print_last_cond.12.if_false
print_last_cond.1.if_true:
     mov     qword [rbp - 40],      __string_const5
     jmp print_last_cond.15.enter
print_last_cond.15.enter:
     mov     qword [rbp - 48],                    0
     jmp print_last_cond.18.loop_condition
print_last_cond.16.loop_body:
     mov                  rdi,     qword [rbp - 40]
     mov                  rsi,     qword [rbp - 48]
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov     qword [rbp - 80],                  rax
     mov                  rax,  qword [@myHash - 0]
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 80]
     add     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 88]
     mov  qword [@myHash - 0],                  rax
     jmp print_last_cond.17.loop_increment
print_last_cond.17.loop_increment:
     add     qword [rbp - 48],                    1
     jmp print_last_cond.18.loop_condition
print_last_cond.18.loop_condition:
     mov                  rdi,     qword [rbp - 40]
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov    qword [rbp - 128],                  rax
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,    qword [rbp - 128]
     mov                  rax,    qword [rbp - 136]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 136],                  rax
     cmp    qword [rbp - 136],                    1
      je print_last_cond.16.loop_body
     jmp print_last_cond.19.loop_exit
print_last_cond.19.loop_exit:
print_last_cond.20.exit:
     mov    qword [rbp - 144],                    1
     mov    qword [rbp - 152],                    0
     jmp print_last_cond.7.loop_condition
print_last_cond.2.loop_body:
     mov                  rax,    qword [rbp - 152]
     mov    qword [rbp - 160],                  rax
     add    qword [rbp - 160],                    1
     mov                  rax,    qword [rbp - 160]
     mov    qword [rbp - 168],                  rax
     sal    qword [rbp - 168],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 168]
     add    qword [rbp - 176],                  rax
     mov                  rcx,    qword [rbp - 176]
     cmp      qword [rcx - 0],                    1
     mov                  rax,    qword [rbp - 192]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 192],                  rax
     cmp    qword [rbp - 192],                    1
      je print_last_cond.3.if_true
     jmp print_last_cond.4.if_false
print_last_cond.3.if_true:
     mov    qword [rbp - 144],                    0
     jmp print_last_cond.5.if_exit
print_last_cond.4.if_false:
     jmp print_last_cond.5.if_exit
print_last_cond.5.if_exit:
     mov                  rax,    qword [rbp - 152]
     mov    qword [rbp - 200],                  rax
     add    qword [rbp - 200],                    1
     mov                  rax,    qword [rbp - 200]
     mov    qword [rbp - 208],                  rax
     sal    qword [rbp - 208],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp - 208]
     add    qword [rbp - 216],                  rax
     mov                  rcx,    qword [rbp - 216]
     mov                  rdi,      qword [rcx - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp - 248]
     mov     qword [rbp - 40],                  rax
     jmp print_last_cond.21.enter
print_last_cond.21.enter:
     mov     qword [rbp - 48],                    0
     jmp print_last_cond.24.loop_condition
print_last_cond.22.loop_body:
     mov                  rdi,     qword [rbp - 40]
     mov                  rsi,     qword [rbp - 48]
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov    qword [rbp - 280],                  rax
     mov                  rax,  qword [@myHash - 0]
     mov    qword [rbp - 288],                  rax
     mov                  rax,    qword [rbp - 280]
     add    qword [rbp - 288],                  rax
     mov                  rax,    qword [rbp - 288]
     mov  qword [@myHash - 0],                  rax
     jmp print_last_cond.23.loop_increment
print_last_cond.23.loop_increment:
     add     qword [rbp - 48],                    1
     jmp print_last_cond.24.loop_condition
print_last_cond.24.loop_condition:
     mov                  rdi,     qword [rbp - 40]
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov    qword [rbp - 328],                  rax
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,    qword [rbp - 328]
     mov                  rax,    qword [rbp - 336]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 336],                  rax
     cmp    qword [rbp - 336],                    1
      je print_last_cond.22.loop_body
     jmp print_last_cond.25.loop_exit
print_last_cond.25.loop_exit:
print_last_cond.26.exit:
     jmp print_last_cond.6.loop_increment
print_last_cond.6.loop_increment:
     add    qword [rbp - 152],                    1
     jmp print_last_cond.7.loop_condition
print_last_cond.7.loop_condition:
     mov                  rax,    qword [rbp - 152]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,    qword [rbp - 352]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 352],                  rax
     cmp    qword [rbp - 352],                    1
      je print_last_cond.2.loop_body
     jmp print_last_cond.8.loop_exit
print_last_cond.8.loop_exit:
     cmp    qword [rbp - 144],                    0
     mov                  rax,    qword [rbp - 360]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 360],                  rax
     cmp    qword [rbp - 360],                    1
      je print_last_cond.9.if_true
     jmp print_last_cond.10.if_false
print_last_cond.9.if_true:
     mov     qword [rbp - 40],      __string_const6
     jmp print_last_cond.27.enter
print_last_cond.27.enter:
     mov     qword [rbp - 48],                    0
     jmp print_last_cond.30.loop_condition
print_last_cond.28.loop_body:
     mov                  rdi,     qword [rbp - 40]
     mov                  rsi,     qword [rbp - 48]
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov    qword [rbp - 392],                  rax
     mov                  rax,  qword [@myHash - 0]
     mov    qword [rbp - 400],                  rax
     mov                  rax,    qword [rbp - 392]
     add    qword [rbp - 400],                  rax
     mov                  rax,    qword [rbp - 400]
     mov  qword [@myHash - 0],                  rax
     jmp print_last_cond.29.loop_increment
print_last_cond.29.loop_increment:
     add     qword [rbp - 48],                    1
     jmp print_last_cond.30.loop_condition
print_last_cond.30.loop_condition:
     mov                  rdi,     qword [rbp - 40]
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov    qword [rbp - 440],                  rax
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,    qword [rbp - 440]
     mov                  rax,    qword [rbp - 448]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 448],                  rax
     cmp    qword [rbp - 448],                    1
      je print_last_cond.28.loop_body
     jmp print_last_cond.31.loop_exit
print_last_cond.31.loop_exit:
print_last_cond.32.exit:
     jmp print_last_cond.11.if_exit
print_last_cond.10.if_false:
     mov     qword [rbp - 40],      __string_const7
     jmp print_last_cond.33.enter
print_last_cond.33.enter:
     mov     qword [rbp - 48],                    0
     jmp print_last_cond.36.loop_condition
print_last_cond.34.loop_body:
     mov                  rdi,     qword [rbp - 40]
     mov                  rsi,     qword [rbp - 48]
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov    qword [rbp - 480],                  rax
     mov                  rax,  qword [@myHash - 0]
     mov    qword [rbp - 488],                  rax
     mov                  rax,    qword [rbp - 480]
     add    qword [rbp - 488],                  rax
     mov                  rax,    qword [rbp - 488]
     mov  qword [@myHash - 0],                  rax
     jmp print_last_cond.35.loop_increment
print_last_cond.35.loop_increment:
     add     qword [rbp - 48],                    1
     jmp print_last_cond.36.loop_condition
print_last_cond.36.loop_condition:
     mov                  rdi,     qword [rbp - 40]
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov    qword [rbp - 528],                  rax
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,    qword [rbp - 528]
     mov                  rax,    qword [rbp - 536]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 536],                  rax
     cmp    qword [rbp - 536],                    1
      je print_last_cond.34.loop_body
     jmp print_last_cond.37.loop_exit
print_last_cond.37.loop_exit:
print_last_cond.38.exit:
     jmp print_last_cond.11.if_exit
print_last_cond.11.if_exit:
     jmp print_last_cond.14.exit
print_last_cond.12.if_false:
     jmp print_last_cond.13.if_exit
print_last_cond.13.if_exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 544],                  rax
     add    qword [rbp - 544],                    1
     mov                  rax,    qword [rbp - 544]
     mov    qword [rbp - 552],                  rax
     sal    qword [rbp - 552],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 560],                  rax
     mov                  rax,    qword [rbp - 552]
     add    qword [rbp - 560],                  rax
     mov                  rcx,    qword [rbp - 560]
     mov      qword [rcx - 0],                    1
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 576],                  rax
     add    qword [rbp - 576],                    1
     mov                  rax,    qword [rbp - 576]
     mov      qword [rbp - 8],                  rax
     jmp print_last_cond.39.enter
print_last_cond.39.enter:
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,    qword [rbp - 592]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 592],                  rax
     cmp    qword [rbp - 592],                    1
      je print_last_cond.40.if_true
     jmp print_last_cond.51.if_false
print_last_cond.40.if_true:
     mov                  rdi,     __string_const10
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     mov    qword [rbp - 144],                    1
     mov    qword [rbp - 152],                    0
     jmp print_last_cond.46.loop_condition
print_last_cond.41.loop_body:
     mov                  rax,    qword [rbp - 152]
     mov    qword [rbp - 608],                  rax
     add    qword [rbp - 608],                    1
     mov                  rax,    qword [rbp - 608]
     mov    qword [rbp - 616],                  rax
     sal    qword [rbp - 616],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 624],                  rax
     mov                  rax,    qword [rbp - 616]
     add    qword [rbp - 624],                  rax
     mov                  rcx,    qword [rbp - 624]
     cmp      qword [rcx - 0],                    1
     mov                  rax,    qword [rbp - 640]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 640],                  rax
     cmp    qword [rbp - 640],                    1
      je print_last_cond.42.if_true
     jmp print_last_cond.43.if_false
print_last_cond.42.if_true:
     mov    qword [rbp - 144],                    0
     jmp print_last_cond.44.if_exit
print_last_cond.43.if_false:
     jmp print_last_cond.44.if_exit
print_last_cond.44.if_exit:
     mov                  rax,    qword [rbp - 152]
     mov    qword [rbp - 648],                  rax
     add    qword [rbp - 648],                    1
     mov                  rax,    qword [rbp - 648]
     mov    qword [rbp - 656],                  rax
     sal    qword [rbp - 656],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 664],                  rax
     mov                  rax,    qword [rbp - 656]
     add    qword [rbp - 664],                  rax
     mov                  rcx,    qword [rbp - 664]
     mov                  rdi,      qword [rcx - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov    qword [rbp - 696],                  rax
     mov                  rdi,    qword [rbp - 696]
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     jmp print_last_cond.45.loop_increment
print_last_cond.45.loop_increment:
     add    qword [rbp - 152],                    1
     jmp print_last_cond.46.loop_condition
print_last_cond.46.loop_condition:
     mov                  rax,    qword [rbp - 152]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,    qword [rbp - 720]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 720],                  rax
     cmp    qword [rbp - 720],                    1
      je print_last_cond.41.loop_body
     jmp print_last_cond.47.loop_exit
print_last_cond.47.loop_exit:
     cmp    qword [rbp - 144],                    0
     mov                  rax,    qword [rbp - 728]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 728],                  rax
     cmp    qword [rbp - 728],                    1
      je print_last_cond.48.if_true
     jmp print_last_cond.49.if_false
print_last_cond.48.if_true:
     mov                  rdi,     __string_const11
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     jmp print_last_cond.50.if_exit
print_last_cond.49.if_false:
     mov                  rdi,     __string_const12
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     jmp print_last_cond.50.if_exit
print_last_cond.50.if_exit:
     jmp print_last_cond.53.exit
print_last_cond.51.if_false:
     jmp print_last_cond.52.if_exit
print_last_cond.52.if_exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 752],                  rax
     add    qword [rbp - 752],                    1
     mov                  rax,    qword [rbp - 752]
     mov    qword [rbp - 760],                  rax
     sal    qword [rbp - 760],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 768],                  rax
     mov                  rax,    qword [rbp - 760]
     add    qword [rbp - 768],                  rax
     mov                  rcx,    qword [rbp - 768]
     mov      qword [rcx - 0],                    1
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 784],                  rax
     add    qword [rbp - 784],                    1
     mov                  rdi,    qword [rbp - 784]
     sub                  rsp,                    8
    call      print_last_cond
     add                  rsp,                    8
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 800],                  rax
     add    qword [rbp - 800],                    1
     mov                  rax,    qword [rbp - 800]
     mov    qword [rbp - 808],                  rax
     sal    qword [rbp - 808],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 816],                  rax
     mov                  rax,    qword [rbp - 808]
     add    qword [rbp - 816],                  rax
     mov                  rcx,    qword [rbp - 816]
     mov      qword [rcx - 0],                    0
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 832],                  rax
     add    qword [rbp - 832],                    1
     mov                  rdi,    qword [rbp - 832]
     sub                  rsp,                    8
    call      print_last_cond
     add                  rsp,                    8
print_last_cond.53.exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 848],                  rax
     add    qword [rbp - 848],                    1
     mov                  rax,    qword [rbp - 848]
     mov    qword [rbp - 856],                  rax
     sal    qword [rbp - 856],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 864],                  rax
     mov                  rax,    qword [rbp - 856]
     add    qword [rbp - 864],                  rax
     mov                  rcx,    qword [rbp - 864]
     mov      qword [rcx - 0],                    0
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 880],                  rax
     add    qword [rbp - 880],                    1
     mov                  rdi,    qword [rbp - 880]
     sub                  rsp,                    8
    call      print_last_cond
     add                  rsp,                    8
print_last_cond.14.exit:
     add                  rsp,                  888
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
@GlobalDeclaration.0.enter:
     mov  qword [@myHash - 0],                    0
@GlobalDeclaration.1.exit:
     add                  rsp,                    8
     pop                  rbp
     ret
payoff:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  112
payoff.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov     qword [rbp - 24],                  rsi
     mov     qword [rbp - 40],                    0
     mov     qword [rbp - 48],                    0
     jmp payoff.6.loop_condition
payoff.1.loop_body:
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 56],                  rax
     sal     qword [rbp - 56],                    3
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 56]
     add     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 48]
     mov     qword [rbp - 72],                  rax
     sal     qword [rbp - 72],                    3
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 72]
     add     qword [rbp - 80],                  rax
     mov                  rcx,     qword [rbp - 64]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 88],                  rax
     mov                  rcx,     qword [rbp - 80]
     mov                  rax,     qword [rbp - 88]
     cmp                  rax,      qword [rcx - 0]
     mov                  rax,     qword [rbp - 96]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 96],                  rax
     cmp     qword [rbp - 96],                    1
      je     payoff.2.if_true
     jmp    payoff.3.if_false
payoff.2.if_true:
     mov                  rax,     qword [rbp - 40]
     mov    qword [rbp - 104],                  rax
     add     qword [rbp - 40],                    1
     jmp     payoff.4.if_exit
payoff.3.if_false:
     jmp     payoff.4.if_exit
payoff.4.if_exit:
     jmp payoff.5.loop_increment
payoff.5.loop_increment:
     add     qword [rbp - 48],                    1
     jmp payoff.6.loop_condition
payoff.6.loop_condition:
     cmp     qword [rbp - 48],                    3
     mov                  rax,    qword [rbp - 112]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 112],                  rax
     cmp    qword [rbp - 112],                    1
      je   payoff.1.loop_body
     jmp   payoff.7.loop_exit
payoff.7.loop_exit:
     mov                  rax,     qword [rbp - 40]
     jmp        payoff.8.exit
payoff.8.exit:
     add                  rsp,                  112
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                  712
main.0.enter:
     mov       qword [@k - 0],                    5
     mov     qword [rbp - 16],                    2
     mov                  rax,     qword [rbp - 16]
    imul                  rax,       qword [@k - 0]
     mov     qword [rbp - 16],                  rax
     mov                  rax,     qword [rbp - 16]
     mov     qword [rbp - 32],                  rax
     add     qword [rbp - 32],                    1
     mov                  rax,     qword [rbp - 32]
     mov       qword [@n - 0],                  rax
     mov                  rax,       qword [@k - 0]
     mov     qword [rbp - 48],                  rax
     mov                  rax,     qword [rbp - 48]
     mov       qword [@m - 0],                  rax
     mov    qword [@last - 0],                    1
     mov     qword [rbp - 80],      __string_const0
     jmp         main.6.enter
main.6.enter:
     mov     qword [rbp - 88],                    0
     jmp main.9.loop_condition
main.7.loop_body:
     mov                  rdi,     qword [rbp - 80]
     mov                  rsi,     qword [rbp - 88]
     sub                  rsp,                    8
    call         __string_ord
     add                  rsp,                    8
     mov    qword [rbp - 120],                  rax
     mov                  rax,  qword [@myHash - 0]
     mov    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 120]
     add    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 128]
     mov  qword [@myHash - 0],                  rax
     jmp main.8.loop_increment
main.8.loop_increment:
     add     qword [rbp - 88],                    1
     jmp main.9.loop_condition
main.9.loop_condition:
     mov                  rdi,     qword [rbp - 80]
     sub                  rsp,                    8
    call      __string_length
     add                  rsp,                    8
     mov    qword [rbp - 168],                  rax
     mov                  rax,     qword [rbp - 88]
     cmp                  rax,    qword [rbp - 168]
     mov                  rax,    qword [rbp - 176]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 176],                  rax
     cmp    qword [rbp - 176],                    1
      je     main.7.loop_body
     jmp    main.10.loop_exit
main.10.loop_exit:
main.11.exit:
     mov                  rax,       qword [@m - 0]
     mov    qword [rbp - 184],                  rax
     add    qword [rbp - 184],                    1
     sal    qword [rbp - 184],                    3
     mov                  rdi,    qword [rbp - 184]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov    qword [rbp - 200],                  rax
     mov                  rax,       qword [@m - 0]
     mov    qword [rbp - 208],                  rax
     mov                  rcx,    qword [rbp - 200]
     mov                  rax,    qword [rbp - 208]
     mov      qword [rcx - 0],                  rax
     add    qword [rbp - 200],                    8
     mov                  rax,    qword [rbp - 200]
     mov     qword [@sat - 0],                  rax
     mov    qword [rbp - 224],                    0
     jmp main.3.loop_condition
main.1.loop_body:
     mov    qword [rbp - 232],                    3
     add    qword [rbp - 232],                    1
     sal    qword [rbp - 232],                    3
     mov                  rdi,    qword [rbp - 232]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov    qword [rbp - 240],                  rax
     mov                  rcx,    qword [rbp - 240]
     mov      qword [rcx - 0],                    3
     add    qword [rbp - 240],                    8
     mov                  rax,    qword [rbp - 240]
     mov    qword [rbp - 248],                  rax
     mov    qword [rbp - 256],                    0
     sal    qword [rbp - 256],                    3
     mov                  rax,    qword [rbp - 248]
     mov    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp - 256]
     add    qword [rbp - 264],                  rax
     mov                  rax,    qword [@last - 0]
     mov    qword [rbp - 272],                  rax
     mov                  rcx,    qword [rbp - 264]
     mov                  rax,    qword [rbp - 272]
     mov      qword [rcx - 0],                  rax
     mov    qword [rbp - 288],                    1
     sal    qword [rbp - 288],                    3
     mov                  rax,    qword [rbp - 248]
     mov    qword [rbp - 296],                  rax
     mov                  rax,    qword [rbp - 288]
     add    qword [rbp - 296],                  rax
     mov                  rax,    qword [@last - 0]
     mov    qword [rbp - 304],                  rax
     add    qword [rbp - 304],                    1
     mov                  rcx,    qword [rbp - 296]
     mov                  rax,    qword [rbp - 304]
     mov      qword [rcx - 0],                  rax
     mov    qword [rbp - 320],                    2
     sal    qword [rbp - 320],                    3
     mov                  rax,    qword [rbp - 248]
     mov    qword [rbp - 328],                  rax
     mov                  rax,    qword [rbp - 320]
     add    qword [rbp - 328],                  rax
     mov                  rax,    qword [@last - 0]
     mov    qword [rbp - 336],                  rax
     add    qword [rbp - 336],                    2
     mov                  rax,    qword [rbp - 336]
     mov    qword [rbp - 352],                  rax
     neg    qword [rbp - 352]
     mov                  rcx,    qword [rbp - 328]
     mov                  rax,    qword [rbp - 352]
     mov      qword [rcx - 0],                  rax
     mov                  rax,    qword [@last - 0]
     mov    qword [rbp - 360],                  rax
     add    qword [rbp - 360],                    2
     mov                  rax,    qword [rbp - 360]
     mov    qword [@last - 0],                  rax
     mov                  rax,    qword [rbp - 224]
     mov    qword [rbp - 384],                  rax
     sal    qword [rbp - 384],                    3
     mov                  rax,     qword [@sat - 0]
     mov    qword [rbp - 392],                  rax
     mov                  rax,    qword [rbp - 384]
     add    qword [rbp - 392],                  rax
     mov                  rcx,    qword [rbp - 392]
     mov                  rax,    qword [rbp - 248]
     mov      qword [rcx - 0],                  rax
     jmp main.2.loop_increment
main.2.loop_increment:
     add    qword [rbp - 224],                    1
     jmp main.3.loop_condition
main.3.loop_condition:
     mov                  rax,    qword [rbp - 224]
     cmp                  rax,       qword [@m - 0]
     mov                  rax,    qword [rbp - 416]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 416],                  rax
     cmp    qword [rbp - 416],                    1
      je     main.1.loop_body
     jmp     main.4.loop_exit
main.4.loop_exit:
     mov                  rax,       qword [@n - 0]
     mov    qword [rbp - 424],                  rax
     add    qword [rbp - 424],                    1
     mov                  rax,    qword [rbp - 424]
     mov    qword [rbp - 440],                  rax
     add    qword [rbp - 440],                    1
     sal    qword [rbp - 440],                    3
     mov                  rdi,    qword [rbp - 440]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov    qword [rbp - 448],                  rax
     mov                  rcx,    qword [rbp - 448]
     mov                  rax,    qword [rbp - 424]
     mov      qword [rcx - 0],                  rax
     add    qword [rbp - 448],                    8
     mov                  rax,    qword [rbp - 448]
     mov qword [@assignment - 0],                  rax
     mov                  rax,       qword [@n - 0]
     mov    qword [rbp - 464],                  rax
     add    qword [rbp - 464],                    1
     mov                  rax,    qword [rbp - 464]
     mov    qword [rbp - 480],                  rax
     add    qword [rbp - 480],                    1
     sal    qword [rbp - 480],                    3
     mov                  rdi,    qword [rbp - 480]
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     mov    qword [rbp - 488],                  rax
     mov                  rcx,    qword [rbp - 488]
     mov                  rax,    qword [rbp - 464]
     mov      qword [rcx - 0],                  rax
     add    qword [rbp - 488],                    8
     mov                  rax,    qword [rbp - 488]
     mov qword [@cond_ass - 0],                  rax
     mov    qword [rbp - 504],                    0
     jmp        main.12.enter
main.12.enter:
     mov                  rax,    qword [rbp - 504]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,    qword [rbp - 520]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 520],                  rax
     cmp    qword [rbp - 520],                    1
      je      main.13.if_true
     jmp     main.17.if_false
main.13.if_true:
     sub                  rsp,                    8
    call                check
     add                  rsp,                    8
     mov    qword [rbp - 536],                  rax
     cmp    qword [rbp - 536],                    1
     mov                  rax,    qword [rbp - 544]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 544],                  rax
     cmp    qword [rbp - 544],                    1
      je      main.14.if_true
     jmp     main.15.if_false
main.14.if_true:
     mov                  rdi,     __string_const13
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     mov                  rdi,                    0
     sub                  rsp,                    8
    call           print_cond
     add                  rsp,                    8
     mov                  rdi,     __string_const14
     sub                  rsp,                    8
    call              myprint
     add                  rsp,                    8
     jmp      main.16.if_exit
main.15.if_false:
     jmp      main.16.if_exit
main.16.if_exit:
     jmp         main.19.exit
main.17.if_false:
     jmp      main.18.if_exit
main.18.if_exit:
     mov                  rax,    qword [rbp - 504]
     mov    qword [rbp - 576],                  rax
     add    qword [rbp - 576],                    1
     mov                  rax,    qword [rbp - 576]
     mov    qword [rbp - 584],                  rax
     sal    qword [rbp - 584],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 592],                  rax
     mov                  rax,    qword [rbp - 584]
     add    qword [rbp - 592],                  rax
     mov                  rcx,    qword [rbp - 592]
     mov      qword [rcx - 0],                    1
     mov                  rax,    qword [rbp - 504]
     mov    qword [rbp - 608],                  rax
     add    qword [rbp - 608],                    1
     mov                  rdi,    qword [rbp - 608]
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
     mov                  rax,    qword [rbp - 504]
     mov    qword [rbp - 624],                  rax
     add    qword [rbp - 624],                    1
     mov                  rax,    qword [rbp - 624]
     mov    qword [rbp - 632],                  rax
     sal    qword [rbp - 632],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 640],                  rax
     mov                  rax,    qword [rbp - 632]
     add    qword [rbp - 640],                  rax
     mov                  rcx,    qword [rbp - 640]
     mov      qword [rcx - 0],                    0
     mov                  rax,    qword [rbp - 504]
     mov    qword [rbp - 656],                  rax
     add    qword [rbp - 656],                    1
     mov                  rdi,    qword [rbp - 656]
     sub                  rsp,                    8
    call                  dfs
     add                  rsp,                    8
main.19.exit:
     mov                  rdi,                    0
     sub                  rsp,                    8
    call      print_last_cond
     add                  rsp,                    8
     mov                  rdi,  qword [@myHash - 0]
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     mov    qword [rbp - 704],                  rax
     mov                  rdi,    qword [rbp - 704]
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     mov                  rax,                    0
     jmp          main.5.exit
main.5.exit:
     add                  rsp,                  712
     pop                  rbp
     ret
print_cond:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  896
print_cond.0.enter:
     mov      qword [rbp - 8],                  rdi
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,     qword [rbp - 32]
     mov                  rax,                    0
    sete                   al
     mov     qword [rbp - 32],                  rax
     cmp     qword [rbp - 32],                    1
      je print_cond.1.if_true
     jmp print_cond.9.if_false
print_cond.1.if_true:
     mov                  rax, qword [@cond_ass - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rax, qword [@assignment - 0]
     mov     qword [rbp - 56],                  rax
     jmp  print_cond.12.enter
print_cond.12.enter:
     mov     qword [rbp - 72],                    0
     mov     qword [rbp - 80],                    0
     jmp print_cond.18.loop_condition
print_cond.13.loop_body:
     mov                  rax,     qword [rbp - 80]
     mov     qword [rbp - 88],                  rax
     sal     qword [rbp - 88],                    3
     mov                  rax,     qword [rbp - 40]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 88]
     add     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 80]
     mov    qword [rbp - 104],                  rax
     sal    qword [rbp - 104],                    3
     mov                  rax,     qword [rbp - 56]
     mov    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 104]
     add    qword [rbp - 112],                  rax
     mov                  rcx,     qword [rbp - 96]
     mov                  rax,      qword [rcx - 0]
     mov    qword [rbp - 120],                  rax
     mov                  rcx,    qword [rbp - 112]
     mov                  rax,    qword [rbp - 120]
     cmp                  rax,      qword [rcx - 0]
     mov                  rax,    qword [rbp - 128]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 128],                  rax
     cmp    qword [rbp - 128],                    1
      je print_cond.14.if_true
     jmp print_cond.15.if_false
print_cond.14.if_true:
     mov                  rax,     qword [rbp - 72]
     mov    qword [rbp - 136],                  rax
     add     qword [rbp - 72],                    1
     jmp print_cond.16.if_exit
print_cond.15.if_false:
     jmp print_cond.16.if_exit
print_cond.16.if_exit:
     jmp print_cond.17.loop_increment
print_cond.17.loop_increment:
     add     qword [rbp - 80],                    1
     jmp print_cond.18.loop_condition
print_cond.18.loop_condition:
     cmp     qword [rbp - 80],                    3
     mov                  rax,    qword [rbp - 144]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 144],                  rax
     cmp    qword [rbp - 144],                    1
      je print_cond.13.loop_body
     jmp print_cond.19.loop_exit
print_cond.19.loop_exit:
     mov                  rax,     qword [rbp - 72]
     jmp   print_cond.20.exit
print_cond.20.exit:
     mov    qword [rbp - 152],                  rax
     mov                  rdi,    qword [rbp - 152]
    call             toString
     mov    qword [rbp - 184],                  rax
     mov                  rdi,      __string_const1
     mov                  rsi,    qword [rbp - 184]
    call  __string_connection
     mov    qword [rbp - 216],                  rax
     mov                  rdi,    qword [rbp - 216]
     mov                  rsi,      __string_const2
    call  __string_connection
     mov    qword [rbp - 248],                  rax
     mov                  rdi,    qword [rbp - 248]
    call              myprint
     mov    qword [rbp - 264],                    0
     jmp print_cond.7.loop_condition
print_cond.2.loop_body:
     mov                  rax,    qword [rbp - 264]
     mov    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 272]
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov    qword [rbp - 272],                  rdx
     cmp    qword [rbp - 272],                    0
     mov                  rax,    qword [rbp - 280]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 280],                  rax
     cmp    qword [rbp - 280],                    1
      je print_cond.3.if_true
     jmp print_cond.4.if_false
print_cond.3.if_true:
     mov                  rax,    qword [rbp - 264]
     mov    qword [rbp - 288],                  rax
     add    qword [rbp - 288],                    1
     mov                  rax,    qword [rbp - 288]
     mov    qword [rbp - 296],                  rax
     sal    qword [rbp - 296],                    3
     mov                  rax, qword [@cond_ass - 0]
     mov    qword [rbp - 304],                  rax
     mov                  rax,    qword [rbp - 296]
     add    qword [rbp - 304],                  rax
     mov                  rcx,    qword [rbp - 304]
     mov                  rdi,      qword [rcx - 0]
    call             toString
     mov    qword [rbp - 336],                  rax
     mov                  rax,    qword [rbp - 336]
     mov    qword [rbp - 344],                  rax
     jmp  print_cond.21.enter
print_cond.21.enter:
     mov    qword [rbp - 352],                    0
     jmp print_cond.24.loop_condition
print_cond.22.loop_body:
     mov                  rdi,    qword [rbp - 344]
     mov                  rsi,    qword [rbp - 352]
    call         __string_ord
     mov    qword [rbp - 384],                  rax
     mov                  rax,  qword [@myHash - 0]
     mov    qword [rbp - 392],                  rax
     mov                  rax,    qword [rbp - 384]
     add    qword [rbp - 392],                  rax
     mov                  rax,    qword [rbp - 392]
     mov  qword [@myHash - 0],                  rax
     jmp print_cond.23.loop_increment
print_cond.23.loop_increment:
     add    qword [rbp - 352],                    1
     jmp print_cond.24.loop_condition
print_cond.24.loop_condition:
     mov                  rdi,    qword [rbp - 344]
    call      __string_length
     mov    qword [rbp - 432],                  rax
     mov                  rax,    qword [rbp - 352]
     cmp                  rax,    qword [rbp - 432]
     mov                  rax,    qword [rbp - 440]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 440],                  rax
     cmp    qword [rbp - 440],                    1
      je print_cond.22.loop_body
     jmp print_cond.25.loop_exit
print_cond.25.loop_exit:
print_cond.26.exit:
     jmp print_cond.5.if_exit
print_cond.4.if_false:
     jmp print_cond.5.if_exit
print_cond.5.if_exit:
     jmp print_cond.6.loop_increment
print_cond.6.loop_increment:
     add    qword [rbp - 264],                    1
     jmp print_cond.7.loop_condition
print_cond.7.loop_condition:
     mov                  rax,    qword [rbp - 264]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,    qword [rbp - 456]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 456],                  rax
     cmp    qword [rbp - 456],                    1
      je print_cond.2.loop_body
     jmp print_cond.8.loop_exit
print_cond.8.loop_exit:
     jmp   print_cond.11.exit
print_cond.9.if_false:
     jmp print_cond.10.if_exit
print_cond.10.if_exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 464],                  rax
     add    qword [rbp - 464],                    1
     mov                  rax,    qword [rbp - 464]
     mov    qword [rbp - 472],                  rax
     sal    qword [rbp - 472],                    3
     mov                  rax, qword [@cond_ass - 0]
     mov    qword [rbp - 480],                  rax
     mov                  rax,    qword [rbp - 472]
     add    qword [rbp - 480],                  rax
     mov                  rcx,    qword [rbp - 480]
     mov      qword [rcx - 0],                    1
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 496],                  rax
     add    qword [rbp - 496],                    1
     mov                  rax,    qword [rbp - 496]
     mov      qword [rbp - 8],                  rax
     jmp  print_cond.27.enter
print_cond.27.enter:
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,    qword [rbp - 512]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 512],                  rax
     cmp    qword [rbp - 512],                    1
      je print_cond.28.if_true
     jmp print_cond.36.if_false
print_cond.28.if_true:
     mov                  rdi, qword [@cond_ass - 0]
     mov                  rsi, qword [@assignment - 0]
    call               payoff
     mov    qword [rbp - 560],                  rax
     mov                  rdi,    qword [rbp - 560]
    call             toString
     mov    qword [rbp - 584],                  rax
     mov                  rdi,     __string_const15
     mov                  rsi,    qword [rbp - 584]
    call  __string_connection
     mov    qword [rbp - 616],                  rax
     mov                  rdi,    qword [rbp - 616]
     mov                  rsi,     __string_const16
    call  __string_connection
     mov    qword [rbp - 648],                  rax
     mov                  rdi,    qword [rbp - 648]
    call              myprint
     mov    qword [rbp - 264],                    0
     jmp print_cond.34.loop_condition
print_cond.29.loop_body:
     mov                  rax,    qword [rbp - 264]
     mov    qword [rbp - 664],                  rax
     mov                  rax,    qword [rbp - 664]
     mov                  rcx,                   10
     cqo
    idiv                  rcx
     mov    qword [rbp - 664],                  rdx
     cmp    qword [rbp - 664],                    0
     mov                  rax,    qword [rbp - 672]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 672],                  rax
     cmp    qword [rbp - 672],                    1
      je print_cond.30.if_true
     jmp print_cond.31.if_false
print_cond.30.if_true:
     mov                  rax,    qword [rbp - 264]
     mov    qword [rbp - 680],                  rax
     add    qword [rbp - 680],                    1
     mov                  rax,    qword [rbp - 680]
     mov    qword [rbp - 688],                  rax
     sal    qword [rbp - 688],                    3
     mov                  rax, qword [@cond_ass - 0]
     mov    qword [rbp - 696],                  rax
     mov                  rax,    qword [rbp - 688]
     add    qword [rbp - 696],                  rax
     mov                  rcx,    qword [rbp - 696]
     mov                  rdi,      qword [rcx - 0]
    call             toString
     mov    qword [rbp - 728],                  rax
     mov                  rdi,    qword [rbp - 728]
    call              myprint
     jmp print_cond.32.if_exit
print_cond.31.if_false:
     jmp print_cond.32.if_exit
print_cond.32.if_exit:
     jmp print_cond.33.loop_increment
print_cond.33.loop_increment:
     add    qword [rbp - 264],                    1
     jmp print_cond.34.loop_condition
print_cond.34.loop_condition:
     mov                  rax,    qword [rbp - 264]
     cmp                  rax,       qword [@n - 0]
     mov                  rax,    qword [rbp - 752]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 752],                  rax
     cmp    qword [rbp - 752],                    1
      je print_cond.29.loop_body
     jmp print_cond.35.loop_exit
print_cond.35.loop_exit:
     jmp   print_cond.38.exit
print_cond.36.if_false:
     jmp print_cond.37.if_exit
print_cond.37.if_exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 760],                  rax
     add    qword [rbp - 760],                    1
     mov                  rax,    qword [rbp - 760]
     mov    qword [rbp - 768],                  rax
     sal    qword [rbp - 768],                    3
     mov                  rax, qword [@cond_ass - 0]
     mov    qword [rbp - 776],                  rax
     mov                  rax,    qword [rbp - 768]
     add    qword [rbp - 776],                  rax
     mov                  rcx,    qword [rbp - 776]
     mov      qword [rcx - 0],                    1
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 792],                  rax
     add    qword [rbp - 792],                    1
     mov                  rdi,    qword [rbp - 792]
    call           print_cond
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 808],                  rax
     add    qword [rbp - 808],                    1
     mov                  rax,    qword [rbp - 808]
     mov    qword [rbp - 816],                  rax
     sal    qword [rbp - 816],                    3
     mov                  rax, qword [@cond_ass - 0]
     mov    qword [rbp - 824],                  rax
     mov                  rax,    qword [rbp - 816]
     add    qword [rbp - 824],                  rax
     mov                  rcx,    qword [rbp - 824]
     mov      qword [rcx - 0],                    0
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 840],                  rax
     add    qword [rbp - 840],                    1
     mov                  rdi,    qword [rbp - 840]
    call           print_cond
print_cond.38.exit:
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 856],                  rax
     add    qword [rbp - 856],                    1
     mov                  rax,    qword [rbp - 856]
     mov    qword [rbp - 864],                  rax
     sal    qword [rbp - 864],                    3
     mov                  rax, qword [@cond_ass - 0]
     mov    qword [rbp - 872],                  rax
     mov                  rax,    qword [rbp - 864]
     add    qword [rbp - 872],                  rax
     mov                  rcx,    qword [rbp - 872]
     mov      qword [rcx - 0],                    0
     mov                  rax,      qword [rbp - 8]
     mov    qword [rbp - 888],                  rax
     add    qword [rbp - 888],                    1
     mov                  rdi,    qword [rbp - 888]
    call           print_cond
print_cond.11.exit:
     add                  rsp,                  896
     pop                  rbp
     ret
check:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  208
check.0.enter:
     mov      qword [rbp - 8],                    0
     jmp check.22.loop_condition
check.1.loop_body:
     mov     qword [rbp - 16],                    0
     mov     qword [rbp - 24],                    0
     jmp check.16.loop_condition
check.2.loop_body:
     mov                  rax,      qword [rbp - 8]
     mov     qword [rbp - 32],                  rax
     sal     qword [rbp - 32],                    3
     mov                  rax,     qword [@sat - 0]
     mov     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 32]
     add     qword [rbp - 40],                  rax
     mov                  rax,     qword [rbp - 24]
     mov     qword [rbp - 56],                  rax
     sal     qword [rbp - 56],                    3
     mov                  rcx,     qword [rbp - 40]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 64],                  rax
     mov                  rax,     qword [rbp - 56]
     add     qword [rbp - 64],                  rax
     mov                  rcx,     qword [rbp - 64]
     mov                  rax,      qword [rcx - 0]
     mov     qword [rbp - 72],                  rax
     cmp     qword [rbp - 72],                    0
     mov                  rax,     qword [rbp - 80]
     mov                  rax,                    0
    setg                   al
     mov     qword [rbp - 80],                  rax
     cmp     qword [rbp - 80],                    1
     jne check.4.logical_false
     jmp check.3.logical_true
check.3.logical_true:
     mov                  rax,     qword [rbp - 72]
     mov     qword [rbp - 88],                  rax
     sal     qword [rbp - 88],                    3
     mov                  rax, qword [@assignment - 0]
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 88]
     add     qword [rbp - 96],                  rax
     mov                  rcx,     qword [rbp - 96]
     cmp      qword [rcx - 0],                    1
     mov                  rax,    qword [rbp - 112]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 112]
     mov    qword [rbp - 120],                  rax
     jmp check.5.logical_exit
check.4.logical_false:
     mov    qword [rbp - 120],                    0
     jmp check.5.logical_exit
check.5.logical_exit:
     cmp    qword [rbp - 120],                    1
      je      check.6.if_true
     jmp     check.7.if_false
check.6.if_true:
     mov     qword [rbp - 16],                    1
     jmp      check.8.if_exit
check.7.if_false:
     jmp      check.8.if_exit
check.8.if_exit:
     cmp     qword [rbp - 72],                    0
     mov                  rax,    qword [rbp - 128]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 128],                  rax
     cmp    qword [rbp - 128],                    1
     jne check.10.logical_false
     jmp check.9.logical_true
check.9.logical_true:
     mov                  rax,     qword [rbp - 72]
     mov    qword [rbp - 136],                  rax
     neg    qword [rbp - 136]
     mov                  rax,    qword [rbp - 136]
     mov    qword [rbp - 144],                  rax
     sal    qword [rbp - 144],                    3
     mov                  rax, qword [@assignment - 0]
     mov    qword [rbp - 152],                  rax
     mov                  rax,    qword [rbp - 144]
     add    qword [rbp - 152],                  rax
     mov                  rcx,    qword [rbp - 152]
     cmp      qword [rcx - 0],                    0
     mov                  rax,    qword [rbp - 168]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 168]
     mov    qword [rbp - 176],                  rax
     jmp check.11.logical_exit
check.10.logical_false:
     mov    qword [rbp - 176],                    0
     jmp check.11.logical_exit
check.11.logical_exit:
     cmp    qword [rbp - 176],                    1
      je     check.12.if_true
     jmp    check.13.if_false
check.12.if_true:
     mov     qword [rbp - 16],                    1
     jmp     check.14.if_exit
check.13.if_false:
     jmp     check.14.if_exit
check.14.if_exit:
     jmp check.15.loop_increment
check.15.loop_increment:
     add     qword [rbp - 24],                    1
     jmp check.16.loop_condition
check.16.loop_condition:
     cmp     qword [rbp - 24],                    3
     mov                  rax,    qword [rbp - 184]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 184],                  rax
     cmp    qword [rbp - 184],                    1
      je    check.2.loop_body
     jmp   check.17.loop_exit
check.17.loop_exit:
     cmp     qword [rbp - 16],                    0
     mov                  rax,    qword [rbp - 192]
     mov                  rax,                    0
    sete                   al
     mov    qword [rbp - 192],                  rax
     cmp    qword [rbp - 192],                    1
      je     check.18.if_true
     jmp    check.19.if_false
check.18.if_true:
     mov                  rax,                    0
     jmp        check.24.exit
check.19.if_false:
     jmp     check.20.if_exit
check.20.if_exit:
     jmp check.21.loop_increment
check.21.loop_increment:
     add      qword [rbp - 8],                    1
     jmp check.22.loop_condition
check.22.loop_condition:
     mov                  rax,      qword [rbp - 8]
     cmp                  rax,       qword [@m - 0]
     mov                  rax,    qword [rbp - 208]
     mov                  rax,                    0
    setl                   al
     mov    qword [rbp - 208],                  rax
     cmp    qword [rbp - 208],                    1
      je    check.1.loop_body
     jmp   check.23.loop_exit
check.23.loop_exit:
     mov                  rax,                    1
     jmp        check.24.exit
check.24.exit:
     add                  rsp,                  208
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
      dq                   10
__string_const0:
      db "max: xz;", 10, "", 0
      dq                    2
__string_const1:
      db              "- ", 0
      dq                    2
__string_const2:
      db              "*x", 0
      dq                    3
__string_const3:
      db             "xz ", 0
      dq                    8
__string_const4:
      db  " <= 0;", 10, "", 0
      dq                    1
__string_const5:
      db               "x", 0
      dq                    3
__string_const6:
      db             " + ", 0
      dq                    7
__string_const7:
      db   " = 1;", 10, "", 0
      dq                    3
__string_const8:
      db             "xz ", 0
      dq                    8
__string_const9:
      db  " <= 0;", 10, "", 0
      dq                    1
__string_const10:
      db               "x", 0
      dq                    3
__string_const11:
      db             " + ", 0
      dq                    7
__string_const12:
      db   " = 1;", 10, "", 0
      dq                    3
__string_const13:
      db             "xz ", 0
      dq                    8
__string_const14:
      db  " <= 0;", 10, "", 0
      dq                    2
__string_const15:
      db              "- ", 0
      dq                    2
__string_const16:
      db              "*x", 0
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
@sat:
    resq                    1
@assignment:
    resq                    1
@cond_ass:
    resq                    1
@k:
    resq                    1
@n:
    resq                    1
@m:
    resq                    1
@last:
    resq                    1
@myHash:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
