global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
@GlobalDeclaration.0.enter:
     mov       qword [@h - 0],                   99
     mov       qword [@i - 0],                  100
     mov       qword [@j - 0],                  101
     mov       qword [@k - 0],                  102
     mov   qword [@total - 0],                    0
     jmp @GlobalDeclaration.1.exit
@GlobalDeclaration.1.exit:
     add                  rsp,                   40
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                  896
main.0.enter:
     mov       qword [@N - 0],                   17
     mov     qword [rbp - 16],                    1
     jmp main.146.loop_condition
main.1.loop_body:
     mov     qword [rbp - 24],                    1
     jmp main.143.loop_condition
main.2.loop_body:
     mov     qword [rbp - 32],                    1
     jmp main.140.loop_condition
main.3.loop_body:
     mov     qword [rbp - 40],                    1
     jmp main.137.loop_condition
main.4.loop_body:
     mov     qword [rbp - 48],                    1
     jmp main.134.loop_condition
main.5.loop_body:
     mov     qword [rbp - 56],                    1
     jmp main.131.loop_condition
main.6.loop_body:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,     qword [rbp - 24]
     mov                  rax,     qword [rbp - 64]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 64],                  rax
     cmp     qword [rbp - 64],                    1
     jne main.8.logical_false
     jmp  main.7.logical_true
main.7.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,     qword [rbp - 32]
     mov                  rax,     qword [rbp - 72]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 72],                  rax
     mov                  rax,     qword [rbp - 72]
     mov     qword [rbp - 80],                  rax
     jmp  main.9.logical_exit
main.8.logical_false:
     mov     qword [rbp - 80],                    0
     jmp  main.9.logical_exit
main.9.logical_exit:
     cmp     qword [rbp - 80],                    1
     jne main.11.logical_false
     jmp main.10.logical_true
main.10.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,     qword [rbp - 40]
     mov                  rax,     qword [rbp - 88]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 88],                  rax
     mov                  rax,     qword [rbp - 88]
     mov     qword [rbp - 96],                  rax
     jmp main.12.logical_exit
main.11.logical_false:
     mov     qword [rbp - 96],                    0
     jmp main.12.logical_exit
main.12.logical_exit:
     cmp     qword [rbp - 96],                    1
     jne main.14.logical_false
     jmp main.13.logical_true
main.13.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,     qword [rbp - 48]
     mov                  rax,    qword [rbp - 104]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 104],                  rax
     mov                  rax,    qword [rbp - 104]
     mov    qword [rbp - 112],                  rax
     jmp main.15.logical_exit
main.14.logical_false:
     mov    qword [rbp - 112],                    0
     jmp main.15.logical_exit
main.15.logical_exit:
     cmp    qword [rbp - 112],                    1
     jne main.17.logical_false
     jmp main.16.logical_true
main.16.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,     qword [rbp - 56]
     mov                  rax,    qword [rbp - 120]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 120],                  rax
     mov                  rax,    qword [rbp - 120]
     mov    qword [rbp - 128],                  rax
     jmp main.18.logical_exit
main.17.logical_false:
     mov    qword [rbp - 128],                    0
     jmp main.18.logical_exit
main.18.logical_exit:
     cmp    qword [rbp - 128],                    1
     jne main.20.logical_false
     jmp main.19.logical_true
main.19.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 144]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
     mov    qword [rbp - 152],                  rax
     jmp main.21.logical_exit
main.20.logical_false:
     mov    qword [rbp - 152],                    0
     jmp main.21.logical_exit
main.21.logical_exit:
     cmp    qword [rbp - 152],                    1
     jne main.23.logical_false
     jmp main.22.logical_true
main.22.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 168]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 168],                  rax
     mov                  rax,    qword [rbp - 168]
     mov    qword [rbp - 176],                  rax
     jmp main.24.logical_exit
main.23.logical_false:
     mov    qword [rbp - 176],                    0
     jmp main.24.logical_exit
main.24.logical_exit:
     cmp    qword [rbp - 176],                    1
     jne main.26.logical_false
     jmp main.25.logical_true
main.25.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 192]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp - 192]
     mov    qword [rbp - 200],                  rax
     jmp main.27.logical_exit
main.26.logical_false:
     mov    qword [rbp - 200],                    0
     jmp main.27.logical_exit
main.27.logical_exit:
     cmp    qword [rbp - 200],                    1
     jne main.29.logical_false
     jmp main.28.logical_true
main.28.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 216]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 216],                  rax
     mov                  rax,    qword [rbp - 216]
     mov    qword [rbp - 224],                  rax
     jmp main.30.logical_exit
main.29.logical_false:
     mov    qword [rbp - 224],                    0
     jmp main.30.logical_exit
main.30.logical_exit:
     cmp    qword [rbp - 224],                    1
     jne main.32.logical_false
     jmp main.31.logical_true
main.31.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,     qword [rbp - 32]
     mov                  rax,    qword [rbp - 232]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 232],                  rax
     mov                  rax,    qword [rbp - 232]
     mov    qword [rbp - 240],                  rax
     jmp main.33.logical_exit
main.32.logical_false:
     mov    qword [rbp - 240],                    0
     jmp main.33.logical_exit
main.33.logical_exit:
     cmp    qword [rbp - 240],                    1
     jne main.35.logical_false
     jmp main.34.logical_true
main.34.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,     qword [rbp - 40]
     mov                  rax,    qword [rbp - 248]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 248],                  rax
     mov                  rax,    qword [rbp - 248]
     mov    qword [rbp - 256],                  rax
     jmp main.36.logical_exit
main.35.logical_false:
     mov    qword [rbp - 256],                    0
     jmp main.36.logical_exit
main.36.logical_exit:
     cmp    qword [rbp - 256],                    1
     jne main.38.logical_false
     jmp main.37.logical_true
main.37.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,     qword [rbp - 48]
     mov                  rax,    qword [rbp - 264]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 264],                  rax
     mov                  rax,    qword [rbp - 264]
     mov    qword [rbp - 272],                  rax
     jmp main.39.logical_exit
main.38.logical_false:
     mov    qword [rbp - 272],                    0
     jmp main.39.logical_exit
main.39.logical_exit:
     cmp    qword [rbp - 272],                    1
     jne main.41.logical_false
     jmp main.40.logical_true
main.40.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,     qword [rbp - 56]
     mov                  rax,    qword [rbp - 280]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 280],                  rax
     mov                  rax,    qword [rbp - 280]
     mov    qword [rbp - 288],                  rax
     jmp main.42.logical_exit
main.41.logical_false:
     mov    qword [rbp - 288],                    0
     jmp main.42.logical_exit
main.42.logical_exit:
     cmp    qword [rbp - 288],                    1
     jne main.44.logical_false
     jmp main.43.logical_true
main.43.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 296]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 296],                  rax
     mov                  rax,    qword [rbp - 296]
     mov    qword [rbp - 304],                  rax
     jmp main.45.logical_exit
main.44.logical_false:
     mov    qword [rbp - 304],                    0
     jmp main.45.logical_exit
main.45.logical_exit:
     cmp    qword [rbp - 304],                    1
     jne main.47.logical_false
     jmp main.46.logical_true
main.46.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 312]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 312],                  rax
     mov                  rax,    qword [rbp - 312]
     mov    qword [rbp - 320],                  rax
     jmp main.48.logical_exit
main.47.logical_false:
     mov    qword [rbp - 320],                    0
     jmp main.48.logical_exit
main.48.logical_exit:
     cmp    qword [rbp - 320],                    1
     jne main.50.logical_false
     jmp main.49.logical_true
main.49.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 328]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 328],                  rax
     mov                  rax,    qword [rbp - 328]
     mov    qword [rbp - 336],                  rax
     jmp main.51.logical_exit
main.50.logical_false:
     mov    qword [rbp - 336],                    0
     jmp main.51.logical_exit
main.51.logical_exit:
     cmp    qword [rbp - 336],                    1
     jne main.53.logical_false
     jmp main.52.logical_true
main.52.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 344]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 344],                  rax
     mov                  rax,    qword [rbp - 344]
     mov    qword [rbp - 352],                  rax
     jmp main.54.logical_exit
main.53.logical_false:
     mov    qword [rbp - 352],                    0
     jmp main.54.logical_exit
main.54.logical_exit:
     cmp    qword [rbp - 352],                    1
     jne main.56.logical_false
     jmp main.55.logical_true
main.55.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,     qword [rbp - 40]
     mov                  rax,    qword [rbp - 360]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 360],                  rax
     mov                  rax,    qword [rbp - 360]
     mov    qword [rbp - 368],                  rax
     jmp main.57.logical_exit
main.56.logical_false:
     mov    qword [rbp - 368],                    0
     jmp main.57.logical_exit
main.57.logical_exit:
     cmp    qword [rbp - 368],                    1
     jne main.59.logical_false
     jmp main.58.logical_true
main.58.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,     qword [rbp - 48]
     mov                  rax,    qword [rbp - 376]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 376],                  rax
     mov                  rax,    qword [rbp - 376]
     mov    qword [rbp - 384],                  rax
     jmp main.60.logical_exit
main.59.logical_false:
     mov    qword [rbp - 384],                    0
     jmp main.60.logical_exit
main.60.logical_exit:
     cmp    qword [rbp - 384],                    1
     jne main.62.logical_false
     jmp main.61.logical_true
main.61.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,     qword [rbp - 56]
     mov                  rax,    qword [rbp - 392]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 392],                  rax
     mov                  rax,    qword [rbp - 392]
     mov    qword [rbp - 400],                  rax
     jmp main.63.logical_exit
main.62.logical_false:
     mov    qword [rbp - 400],                    0
     jmp main.63.logical_exit
main.63.logical_exit:
     cmp    qword [rbp - 400],                    1
     jne main.65.logical_false
     jmp main.64.logical_true
main.64.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 408]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 408],                  rax
     mov                  rax,    qword [rbp - 408]
     mov    qword [rbp - 416],                  rax
     jmp main.66.logical_exit
main.65.logical_false:
     mov    qword [rbp - 416],                    0
     jmp main.66.logical_exit
main.66.logical_exit:
     cmp    qword [rbp - 416],                    1
     jne main.68.logical_false
     jmp main.67.logical_true
main.67.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 424]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 424],                  rax
     mov                  rax,    qword [rbp - 424]
     mov    qword [rbp - 432],                  rax
     jmp main.69.logical_exit
main.68.logical_false:
     mov    qword [rbp - 432],                    0
     jmp main.69.logical_exit
main.69.logical_exit:
     cmp    qword [rbp - 432],                    1
     jne main.71.logical_false
     jmp main.70.logical_true
main.70.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 440]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 440],                  rax
     mov                  rax,    qword [rbp - 440]
     mov    qword [rbp - 448],                  rax
     jmp main.72.logical_exit
main.71.logical_false:
     mov    qword [rbp - 448],                    0
     jmp main.72.logical_exit
main.72.logical_exit:
     cmp    qword [rbp - 448],                    1
     jne main.74.logical_false
     jmp main.73.logical_true
main.73.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 456]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 456],                  rax
     mov                  rax,    qword [rbp - 456]
     mov    qword [rbp - 464],                  rax
     jmp main.75.logical_exit
main.74.logical_false:
     mov    qword [rbp - 464],                    0
     jmp main.75.logical_exit
main.75.logical_exit:
     cmp    qword [rbp - 464],                    1
     jne main.77.logical_false
     jmp main.76.logical_true
main.76.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,     qword [rbp - 48]
     mov                  rax,    qword [rbp - 472]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 472],                  rax
     mov                  rax,    qword [rbp - 472]
     mov    qword [rbp - 480],                  rax
     jmp main.78.logical_exit
main.77.logical_false:
     mov    qword [rbp - 480],                    0
     jmp main.78.logical_exit
main.78.logical_exit:
     cmp    qword [rbp - 480],                    1
     jne main.80.logical_false
     jmp main.79.logical_true
main.79.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,     qword [rbp - 56]
     mov                  rax,    qword [rbp - 488]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 488],                  rax
     mov                  rax,    qword [rbp - 488]
     mov    qword [rbp - 496],                  rax
     jmp main.81.logical_exit
main.80.logical_false:
     mov    qword [rbp - 496],                    0
     jmp main.81.logical_exit
main.81.logical_exit:
     cmp    qword [rbp - 496],                    1
     jne main.83.logical_false
     jmp main.82.logical_true
main.82.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 504]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 504],                  rax
     mov                  rax,    qword [rbp - 504]
     mov    qword [rbp - 512],                  rax
     jmp main.84.logical_exit
main.83.logical_false:
     mov    qword [rbp - 512],                    0
     jmp main.84.logical_exit
main.84.logical_exit:
     cmp    qword [rbp - 512],                    1
     jne main.86.logical_false
     jmp main.85.logical_true
main.85.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 520]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 520],                  rax
     mov                  rax,    qword [rbp - 520]
     mov    qword [rbp - 528],                  rax
     jmp main.87.logical_exit
main.86.logical_false:
     mov    qword [rbp - 528],                    0
     jmp main.87.logical_exit
main.87.logical_exit:
     cmp    qword [rbp - 528],                    1
     jne main.89.logical_false
     jmp main.88.logical_true
main.88.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 536]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 536],                  rax
     mov                  rax,    qword [rbp - 536]
     mov    qword [rbp - 544],                  rax
     jmp main.90.logical_exit
main.89.logical_false:
     mov    qword [rbp - 544],                    0
     jmp main.90.logical_exit
main.90.logical_exit:
     cmp    qword [rbp - 544],                    1
     jne main.92.logical_false
     jmp main.91.logical_true
main.91.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 552]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 552],                  rax
     mov                  rax,    qword [rbp - 552]
     mov    qword [rbp - 560],                  rax
     jmp main.93.logical_exit
main.92.logical_false:
     mov    qword [rbp - 560],                    0
     jmp main.93.logical_exit
main.93.logical_exit:
     cmp    qword [rbp - 560],                    1
     jne main.95.logical_false
     jmp main.94.logical_true
main.94.logical_true:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,     qword [rbp - 56]
     mov                  rax,    qword [rbp - 568]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 568],                  rax
     mov                  rax,    qword [rbp - 568]
     mov    qword [rbp - 576],                  rax
     jmp main.96.logical_exit
main.95.logical_false:
     mov    qword [rbp - 576],                    0
     jmp main.96.logical_exit
main.96.logical_exit:
     cmp    qword [rbp - 576],                    1
     jne main.98.logical_false
     jmp main.97.logical_true
main.97.logical_true:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 584]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 584],                  rax
     mov                  rax,    qword [rbp - 584]
     mov    qword [rbp - 592],                  rax
     jmp main.99.logical_exit
main.98.logical_false:
     mov    qword [rbp - 592],                    0
     jmp main.99.logical_exit
main.99.logical_exit:
     cmp    qword [rbp - 592],                    1
     jne main.101.logical_false
     jmp main.100.logical_true
main.100.logical_true:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 600]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 600],                  rax
     mov                  rax,    qword [rbp - 600]
     mov    qword [rbp - 608],                  rax
     jmp main.102.logical_exit
main.101.logical_false:
     mov    qword [rbp - 608],                    0
     jmp main.102.logical_exit
main.102.logical_exit:
     cmp    qword [rbp - 608],                    1
     jne main.104.logical_false
     jmp main.103.logical_true
main.103.logical_true:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 616]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 616],                  rax
     mov                  rax,    qword [rbp - 616]
     mov    qword [rbp - 624],                  rax
     jmp main.105.logical_exit
main.104.logical_false:
     mov    qword [rbp - 624],                    0
     jmp main.105.logical_exit
main.105.logical_exit:
     cmp    qword [rbp - 624],                    1
     jne main.107.logical_false
     jmp main.106.logical_true
main.106.logical_true:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 632]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 632],                  rax
     mov                  rax,    qword [rbp - 632]
     mov    qword [rbp - 640],                  rax
     jmp main.108.logical_exit
main.107.logical_false:
     mov    qword [rbp - 640],                    0
     jmp main.108.logical_exit
main.108.logical_exit:
     cmp    qword [rbp - 640],                    1
     jne main.110.logical_false
     jmp main.109.logical_true
main.109.logical_true:
     mov                  rax,     qword [rbp - 56]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 648]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 648],                  rax
     mov                  rax,    qword [rbp - 648]
     mov    qword [rbp - 656],                  rax
     jmp main.111.logical_exit
main.110.logical_false:
     mov    qword [rbp - 656],                    0
     jmp main.111.logical_exit
main.111.logical_exit:
     cmp    qword [rbp - 656],                    1
     jne main.113.logical_false
     jmp main.112.logical_true
main.112.logical_true:
     mov                  rax,     qword [rbp - 56]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 664]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 664],                  rax
     mov                  rax,    qword [rbp - 664]
     mov    qword [rbp - 672],                  rax
     jmp main.114.logical_exit
main.113.logical_false:
     mov    qword [rbp - 672],                    0
     jmp main.114.logical_exit
main.114.logical_exit:
     cmp    qword [rbp - 672],                    1
     jne main.116.logical_false
     jmp main.115.logical_true
main.115.logical_true:
     mov                  rax,     qword [rbp - 56]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 680]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 680],                  rax
     mov                  rax,    qword [rbp - 680]
     mov    qword [rbp - 688],                  rax
     jmp main.117.logical_exit
main.116.logical_false:
     mov    qword [rbp - 688],                    0
     jmp main.117.logical_exit
main.117.logical_exit:
     cmp    qword [rbp - 688],                    1
     jne main.119.logical_false
     jmp main.118.logical_true
main.118.logical_true:
     mov                  rax,     qword [rbp - 56]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 696]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 696],                  rax
     mov                  rax,    qword [rbp - 696]
     mov    qword [rbp - 704],                  rax
     jmp main.120.logical_exit
main.119.logical_false:
     mov    qword [rbp - 704],                    0
     jmp main.120.logical_exit
main.120.logical_exit:
     cmp    qword [rbp - 704],                    1
     jne main.122.logical_false
     jmp main.121.logical_true
main.121.logical_true:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 712],                  rax
     mov                  rax,    qword [rbp - 712]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 720]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 720],                  rax
     mov                  rax,    qword [rbp - 720]
     mov    qword [rbp - 728],                  rax
     jmp main.123.logical_exit
main.122.logical_false:
     mov    qword [rbp - 728],                    0
     jmp main.123.logical_exit
main.123.logical_exit:
     cmp    qword [rbp - 728],                    1
     jne main.125.logical_false
     jmp main.124.logical_true
main.124.logical_true:
     mov                  rax,       qword [@h - 0]
     mov    qword [rbp - 736],                  rax
     mov                  rax,    qword [rbp - 736]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 744]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 744],                  rax
     mov                  rax,    qword [rbp - 744]
     mov    qword [rbp - 752],                  rax
     jmp main.126.logical_exit
main.125.logical_false:
     mov    qword [rbp - 752],                    0
     jmp main.126.logical_exit
main.126.logical_exit:
     cmp    qword [rbp - 752],                    1
      je     main.127.if_true
     jmp    main.128.if_false
main.127.if_true:
     mov                  rax,   qword [@total - 0]
     mov    qword [rbp - 760],                  rax
     add   qword [@total - 0],                    1
     jmp     main.129.if_exit
main.128.if_false:
     jmp     main.129.if_exit
main.129.if_exit:
     jmp main.130.loop_increment
main.130.loop_increment:
     mov                  rax,     qword [rbp - 56]
     mov    qword [rbp - 776],                  rax
     add     qword [rbp - 56],                    1
     jmp main.131.loop_condition
main.131.loop_condition:
     mov                  rax,     qword [rbp - 56]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 784]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 784],                  rax
     cmp    qword [rbp - 784],                    1
      je     main.6.loop_body
     jmp   main.132.loop_exit
main.132.loop_exit:
     jmp main.133.loop_increment
main.133.loop_increment:
     mov                  rax,     qword [rbp - 48]
     mov    qword [rbp - 792],                  rax
     add     qword [rbp - 48],                    1
     jmp main.134.loop_condition
main.134.loop_condition:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 800]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 800],                  rax
     cmp    qword [rbp - 800],                    1
      je     main.5.loop_body
     jmp   main.135.loop_exit
main.135.loop_exit:
     jmp main.136.loop_increment
main.136.loop_increment:
     mov                  rax,     qword [rbp - 40]
     mov    qword [rbp - 808],                  rax
     add     qword [rbp - 40],                    1
     jmp main.137.loop_condition
main.137.loop_condition:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 816]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 816],                  rax
     cmp    qword [rbp - 816],                    1
      je     main.4.loop_body
     jmp   main.138.loop_exit
main.138.loop_exit:
     jmp main.139.loop_increment
main.139.loop_increment:
     mov                  rax,     qword [rbp - 32]
     mov    qword [rbp - 824],                  rax
     add     qword [rbp - 32],                    1
     jmp main.140.loop_condition
main.140.loop_condition:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 832]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 832],                  rax
     cmp    qword [rbp - 832],                    1
      je     main.3.loop_body
     jmp   main.141.loop_exit
main.141.loop_exit:
     jmp main.142.loop_increment
main.142.loop_increment:
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 840],                  rax
     add     qword [rbp - 24],                    1
     jmp main.143.loop_condition
main.143.loop_condition:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 848]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 848],                  rax
     cmp    qword [rbp - 848],                    1
      je     main.2.loop_body
     jmp   main.144.loop_exit
main.144.loop_exit:
     jmp main.145.loop_increment
main.145.loop_increment:
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 856],                  rax
     add     qword [rbp - 16],                    1
     jmp main.146.loop_condition
main.146.loop_condition:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 864]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 864],                  rax
     cmp    qword [rbp - 864],                    1
      je     main.1.loop_body
     jmp   main.147.loop_exit
main.147.loop_exit:
     mov                  rdi,   qword [@total - 0]
    call             toString
     mov    qword [rbp - 888],                  rax
     mov                  rdi,    qword [rbp - 888]
    call              println
     mov                  rax,                    0
     jmp        main.148.exit
main.148.exit:
     add                  rsp,                  896
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
@N:
    resq                    1
@h:
    resq                    1
@i:
    resq                    1
@j:
    resq                    1
@k:
    resq                    1
@total:
    resq                    1
@getIntBuf:
    resq                    1
@parseIntBuf:
    resq                    1
