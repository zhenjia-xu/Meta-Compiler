global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
     mov       qword [@h - 0],                   99
     mov       qword [@i - 0],                  100
     mov       qword [@j - 0],                  101
     mov       qword [@k - 0],                  102
     mov   qword [@total - 0],                    0
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                  832
main.0.enter:
    call               getInt
     mov      qword [rbp - 8],                  rax
     mov                  rax,      qword [rbp - 8]
     mov       qword [@N - 0],                  rax
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
      je  main.8.logical_true
     jmp main.7.logical_false
main.7.logical_false:
     mov     qword [rbp - 72],                    0
     jmp  main.9.logical_exit
main.8.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,     qword [rbp - 32]
     mov                  rax,     qword [rbp - 80]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 80],                  rax
     mov                  rax,     qword [rbp - 80]
     mov     qword [rbp - 72],                  rax
     jmp  main.9.logical_exit
main.9.logical_exit:
     cmp     qword [rbp - 72],                    1
      je main.11.logical_true
     jmp main.10.logical_false
main.10.logical_false:
     mov     qword [rbp - 88],                    0
     jmp main.12.logical_exit
main.11.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,     qword [rbp - 40]
     mov                  rax,     qword [rbp - 96]
     mov                  rax,                    0
   setne                   al
     mov     qword [rbp - 96],                  rax
     mov                  rax,     qword [rbp - 96]
     mov     qword [rbp - 88],                  rax
     jmp main.12.logical_exit
main.12.logical_exit:
     cmp     qword [rbp - 88],                    1
      je main.14.logical_true
     jmp main.13.logical_false
main.13.logical_false:
     mov    qword [rbp - 104],                    0
     jmp main.15.logical_exit
main.14.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,     qword [rbp - 48]
     mov                  rax,    qword [rbp - 112]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 112],                  rax
     mov                  rax,    qword [rbp - 112]
     mov    qword [rbp - 104],                  rax
     jmp main.15.logical_exit
main.15.logical_exit:
     cmp    qword [rbp - 104],                    1
      je main.17.logical_true
     jmp main.16.logical_false
main.16.logical_false:
     mov    qword [rbp - 120],                    0
     jmp main.18.logical_exit
main.17.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,     qword [rbp - 56]
     mov                  rax,    qword [rbp - 128]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 128],                  rax
     mov                  rax,    qword [rbp - 128]
     mov    qword [rbp - 120],                  rax
     jmp main.18.logical_exit
main.18.logical_exit:
     cmp    qword [rbp - 120],                    1
      je main.20.logical_true
     jmp main.19.logical_false
main.19.logical_false:
     mov    qword [rbp - 136],                    0
     jmp main.21.logical_exit
main.20.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 144]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 144],                  rax
     mov                  rax,    qword [rbp - 144]
     mov    qword [rbp - 136],                  rax
     jmp main.21.logical_exit
main.21.logical_exit:
     cmp    qword [rbp - 136],                    1
      je main.23.logical_true
     jmp main.22.logical_false
main.22.logical_false:
     mov    qword [rbp - 152],                    0
     jmp main.24.logical_exit
main.23.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 160]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 160],                  rax
     mov                  rax,    qword [rbp - 160]
     mov    qword [rbp - 152],                  rax
     jmp main.24.logical_exit
main.24.logical_exit:
     cmp    qword [rbp - 152],                    1
      je main.26.logical_true
     jmp main.25.logical_false
main.25.logical_false:
     mov    qword [rbp - 168],                    0
     jmp main.27.logical_exit
main.26.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 176]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 176],                  rax
     mov                  rax,    qword [rbp - 176]
     mov    qword [rbp - 168],                  rax
     jmp main.27.logical_exit
main.27.logical_exit:
     cmp    qword [rbp - 168],                    1
      je main.29.logical_true
     jmp main.28.logical_false
main.28.logical_false:
     mov    qword [rbp - 184],                    0
     jmp main.30.logical_exit
main.29.logical_true:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 192]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 192],                  rax
     mov                  rax,    qword [rbp - 192]
     mov    qword [rbp - 184],                  rax
     jmp main.30.logical_exit
main.30.logical_exit:
     cmp    qword [rbp - 184],                    1
      je main.32.logical_true
     jmp main.31.logical_false
main.31.logical_false:
     mov    qword [rbp - 200],                    0
     jmp main.33.logical_exit
main.32.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,     qword [rbp - 32]
     mov                  rax,    qword [rbp - 208]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 208],                  rax
     mov                  rax,    qword [rbp - 208]
     mov    qword [rbp - 200],                  rax
     jmp main.33.logical_exit
main.33.logical_exit:
     cmp    qword [rbp - 200],                    1
      je main.35.logical_true
     jmp main.34.logical_false
main.34.logical_false:
     mov    qword [rbp - 216],                    0
     jmp main.36.logical_exit
main.35.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,     qword [rbp - 40]
     mov                  rax,    qword [rbp - 224]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 224],                  rax
     mov                  rax,    qword [rbp - 224]
     mov    qword [rbp - 216],                  rax
     jmp main.36.logical_exit
main.36.logical_exit:
     cmp    qword [rbp - 216],                    1
      je main.38.logical_true
     jmp main.37.logical_false
main.37.logical_false:
     mov    qword [rbp - 232],                    0
     jmp main.39.logical_exit
main.38.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,     qword [rbp - 48]
     mov                  rax,    qword [rbp - 240]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 240],                  rax
     mov                  rax,    qword [rbp - 240]
     mov    qword [rbp - 232],                  rax
     jmp main.39.logical_exit
main.39.logical_exit:
     cmp    qword [rbp - 232],                    1
      je main.41.logical_true
     jmp main.40.logical_false
main.40.logical_false:
     mov    qword [rbp - 248],                    0
     jmp main.42.logical_exit
main.41.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,     qword [rbp - 56]
     mov                  rax,    qword [rbp - 256]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 256],                  rax
     mov                  rax,    qword [rbp - 256]
     mov    qword [rbp - 248],                  rax
     jmp main.42.logical_exit
main.42.logical_exit:
     cmp    qword [rbp - 248],                    1
      je main.44.logical_true
     jmp main.43.logical_false
main.43.logical_false:
     mov    qword [rbp - 264],                    0
     jmp main.45.logical_exit
main.44.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 272]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 272],                  rax
     mov                  rax,    qword [rbp - 272]
     mov    qword [rbp - 264],                  rax
     jmp main.45.logical_exit
main.45.logical_exit:
     cmp    qword [rbp - 264],                    1
      je main.47.logical_true
     jmp main.46.logical_false
main.46.logical_false:
     mov    qword [rbp - 280],                    0
     jmp main.48.logical_exit
main.47.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 288]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 288],                  rax
     mov                  rax,    qword [rbp - 288]
     mov    qword [rbp - 280],                  rax
     jmp main.48.logical_exit
main.48.logical_exit:
     cmp    qword [rbp - 280],                    1
      je main.50.logical_true
     jmp main.49.logical_false
main.49.logical_false:
     mov    qword [rbp - 296],                    0
     jmp main.51.logical_exit
main.50.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 304]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 304],                  rax
     mov                  rax,    qword [rbp - 304]
     mov    qword [rbp - 296],                  rax
     jmp main.51.logical_exit
main.51.logical_exit:
     cmp    qword [rbp - 296],                    1
      je main.53.logical_true
     jmp main.52.logical_false
main.52.logical_false:
     mov    qword [rbp - 312],                    0
     jmp main.54.logical_exit
main.53.logical_true:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 320]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 320],                  rax
     mov                  rax,    qword [rbp - 320]
     mov    qword [rbp - 312],                  rax
     jmp main.54.logical_exit
main.54.logical_exit:
     cmp    qword [rbp - 312],                    1
      je main.56.logical_true
     jmp main.55.logical_false
main.55.logical_false:
     mov    qword [rbp - 328],                    0
     jmp main.57.logical_exit
main.56.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,     qword [rbp - 40]
     mov                  rax,    qword [rbp - 336]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 336],                  rax
     mov                  rax,    qword [rbp - 336]
     mov    qword [rbp - 328],                  rax
     jmp main.57.logical_exit
main.57.logical_exit:
     cmp    qword [rbp - 328],                    1
      je main.59.logical_true
     jmp main.58.logical_false
main.58.logical_false:
     mov    qword [rbp - 344],                    0
     jmp main.60.logical_exit
main.59.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,     qword [rbp - 48]
     mov                  rax,    qword [rbp - 352]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 352],                  rax
     mov                  rax,    qword [rbp - 352]
     mov    qword [rbp - 344],                  rax
     jmp main.60.logical_exit
main.60.logical_exit:
     cmp    qword [rbp - 344],                    1
      je main.62.logical_true
     jmp main.61.logical_false
main.61.logical_false:
     mov    qword [rbp - 360],                    0
     jmp main.63.logical_exit
main.62.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,     qword [rbp - 56]
     mov                  rax,    qword [rbp - 368]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 368],                  rax
     mov                  rax,    qword [rbp - 368]
     mov    qword [rbp - 360],                  rax
     jmp main.63.logical_exit
main.63.logical_exit:
     cmp    qword [rbp - 360],                    1
      je main.65.logical_true
     jmp main.64.logical_false
main.64.logical_false:
     mov    qword [rbp - 376],                    0
     jmp main.66.logical_exit
main.65.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 384]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 384],                  rax
     mov                  rax,    qword [rbp - 384]
     mov    qword [rbp - 376],                  rax
     jmp main.66.logical_exit
main.66.logical_exit:
     cmp    qword [rbp - 376],                    1
      je main.68.logical_true
     jmp main.67.logical_false
main.67.logical_false:
     mov    qword [rbp - 392],                    0
     jmp main.69.logical_exit
main.68.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 400]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 400],                  rax
     mov                  rax,    qword [rbp - 400]
     mov    qword [rbp - 392],                  rax
     jmp main.69.logical_exit
main.69.logical_exit:
     cmp    qword [rbp - 392],                    1
      je main.71.logical_true
     jmp main.70.logical_false
main.70.logical_false:
     mov    qword [rbp - 408],                    0
     jmp main.72.logical_exit
main.71.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 416]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 416],                  rax
     mov                  rax,    qword [rbp - 416]
     mov    qword [rbp - 408],                  rax
     jmp main.72.logical_exit
main.72.logical_exit:
     cmp    qword [rbp - 408],                    1
      je main.74.logical_true
     jmp main.73.logical_false
main.73.logical_false:
     mov    qword [rbp - 424],                    0
     jmp main.75.logical_exit
main.74.logical_true:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 432]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 432],                  rax
     mov                  rax,    qword [rbp - 432]
     mov    qword [rbp - 424],                  rax
     jmp main.75.logical_exit
main.75.logical_exit:
     cmp    qword [rbp - 424],                    1
      je main.77.logical_true
     jmp main.76.logical_false
main.76.logical_false:
     mov    qword [rbp - 440],                    0
     jmp main.78.logical_exit
main.77.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,     qword [rbp - 48]
     mov                  rax,    qword [rbp - 448]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 448],                  rax
     mov                  rax,    qword [rbp - 448]
     mov    qword [rbp - 440],                  rax
     jmp main.78.logical_exit
main.78.logical_exit:
     cmp    qword [rbp - 440],                    1
      je main.80.logical_true
     jmp main.79.logical_false
main.79.logical_false:
     mov    qword [rbp - 456],                    0
     jmp main.81.logical_exit
main.80.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,     qword [rbp - 56]
     mov                  rax,    qword [rbp - 464]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 464],                  rax
     mov                  rax,    qword [rbp - 464]
     mov    qword [rbp - 456],                  rax
     jmp main.81.logical_exit
main.81.logical_exit:
     cmp    qword [rbp - 456],                    1
      je main.83.logical_true
     jmp main.82.logical_false
main.82.logical_false:
     mov    qword [rbp - 472],                    0
     jmp main.84.logical_exit
main.83.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 480]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 480],                  rax
     mov                  rax,    qword [rbp - 480]
     mov    qword [rbp - 472],                  rax
     jmp main.84.logical_exit
main.84.logical_exit:
     cmp    qword [rbp - 472],                    1
      je main.86.logical_true
     jmp main.85.logical_false
main.85.logical_false:
     mov    qword [rbp - 488],                    0
     jmp main.87.logical_exit
main.86.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 496]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 496],                  rax
     mov                  rax,    qword [rbp - 496]
     mov    qword [rbp - 488],                  rax
     jmp main.87.logical_exit
main.87.logical_exit:
     cmp    qword [rbp - 488],                    1
      je main.89.logical_true
     jmp main.88.logical_false
main.88.logical_false:
     mov    qword [rbp - 504],                    0
     jmp main.90.logical_exit
main.89.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 512]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 512],                  rax
     mov                  rax,    qword [rbp - 512]
     mov    qword [rbp - 504],                  rax
     jmp main.90.logical_exit
main.90.logical_exit:
     cmp    qword [rbp - 504],                    1
      je main.92.logical_true
     jmp main.91.logical_false
main.91.logical_false:
     mov    qword [rbp - 520],                    0
     jmp main.93.logical_exit
main.92.logical_true:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 528]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 528],                  rax
     mov                  rax,    qword [rbp - 528]
     mov    qword [rbp - 520],                  rax
     jmp main.93.logical_exit
main.93.logical_exit:
     cmp    qword [rbp - 520],                    1
      je main.95.logical_true
     jmp main.94.logical_false
main.94.logical_false:
     mov    qword [rbp - 536],                    0
     jmp main.96.logical_exit
main.95.logical_true:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,     qword [rbp - 56]
     mov                  rax,    qword [rbp - 544]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 544],                  rax
     mov                  rax,    qword [rbp - 544]
     mov    qword [rbp - 536],                  rax
     jmp main.96.logical_exit
main.96.logical_exit:
     cmp    qword [rbp - 536],                    1
      je main.98.logical_true
     jmp main.97.logical_false
main.97.logical_false:
     mov    qword [rbp - 552],                    0
     jmp main.99.logical_exit
main.98.logical_true:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 560]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 560],                  rax
     mov                  rax,    qword [rbp - 560]
     mov    qword [rbp - 552],                  rax
     jmp main.99.logical_exit
main.99.logical_exit:
     cmp    qword [rbp - 552],                    1
      je main.101.logical_true
     jmp main.100.logical_false
main.100.logical_false:
     mov    qword [rbp - 568],                    0
     jmp main.102.logical_exit
main.101.logical_true:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 576]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 576],                  rax
     mov                  rax,    qword [rbp - 576]
     mov    qword [rbp - 568],                  rax
     jmp main.102.logical_exit
main.102.logical_exit:
     cmp    qword [rbp - 568],                    1
      je main.104.logical_true
     jmp main.103.logical_false
main.103.logical_false:
     mov    qword [rbp - 584],                    0
     jmp main.105.logical_exit
main.104.logical_true:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 592]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 592],                  rax
     mov                  rax,    qword [rbp - 592]
     mov    qword [rbp - 584],                  rax
     jmp main.105.logical_exit
main.105.logical_exit:
     cmp    qword [rbp - 584],                    1
      je main.107.logical_true
     jmp main.106.logical_false
main.106.logical_false:
     mov    qword [rbp - 600],                    0
     jmp main.108.logical_exit
main.107.logical_true:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 608]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 608],                  rax
     mov                  rax,    qword [rbp - 608]
     mov    qword [rbp - 600],                  rax
     jmp main.108.logical_exit
main.108.logical_exit:
     cmp    qword [rbp - 600],                    1
      je main.110.logical_true
     jmp main.109.logical_false
main.109.logical_false:
     mov    qword [rbp - 616],                    0
     jmp main.111.logical_exit
main.110.logical_true:
     mov                  rax,     qword [rbp - 56]
     cmp                  rax,       qword [@h - 0]
     mov                  rax,    qword [rbp - 624]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 624],                  rax
     mov                  rax,    qword [rbp - 624]
     mov    qword [rbp - 616],                  rax
     jmp main.111.logical_exit
main.111.logical_exit:
     cmp    qword [rbp - 616],                    1
      je main.113.logical_true
     jmp main.112.logical_false
main.112.logical_false:
     mov    qword [rbp - 632],                    0
     jmp main.114.logical_exit
main.113.logical_true:
     mov                  rax,     qword [rbp - 56]
     cmp                  rax,       qword [@i - 0]
     mov                  rax,    qword [rbp - 640]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 640],                  rax
     mov                  rax,    qword [rbp - 640]
     mov    qword [rbp - 632],                  rax
     jmp main.114.logical_exit
main.114.logical_exit:
     cmp    qword [rbp - 632],                    1
      je main.116.logical_true
     jmp main.115.logical_false
main.115.logical_false:
     mov    qword [rbp - 648],                    0
     jmp main.117.logical_exit
main.116.logical_true:
     mov                  rax,     qword [rbp - 56]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 656]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 656],                  rax
     mov                  rax,    qword [rbp - 656]
     mov    qword [rbp - 648],                  rax
     jmp main.117.logical_exit
main.117.logical_exit:
     cmp    qword [rbp - 648],                    1
      je main.119.logical_true
     jmp main.118.logical_false
main.118.logical_false:
     mov    qword [rbp - 664],                    0
     jmp main.120.logical_exit
main.119.logical_true:
     mov                  rax,     qword [rbp - 56]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 672]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 672],                  rax
     mov                  rax,    qword [rbp - 672]
     mov    qword [rbp - 664],                  rax
     jmp main.120.logical_exit
main.120.logical_exit:
     cmp    qword [rbp - 664],                    1
      je main.122.logical_true
     jmp main.121.logical_false
main.121.logical_false:
     mov    qword [rbp - 680],                    0
     jmp main.123.logical_exit
main.122.logical_true:
     mov                  rax,       qword [@i - 0]
     mov    qword [rbp - 688],                  rax
     mov                  rax,    qword [rbp - 688]
     cmp                  rax,       qword [@j - 0]
     mov                  rax,    qword [rbp - 696]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 696],                  rax
     mov                  rax,    qword [rbp - 696]
     mov    qword [rbp - 680],                  rax
     jmp main.123.logical_exit
main.123.logical_exit:
     cmp    qword [rbp - 680],                    1
      je main.125.logical_true
     jmp main.124.logical_false
main.124.logical_false:
     mov    qword [rbp - 704],                    0
     jmp main.126.logical_exit
main.125.logical_true:
     mov                  rax,       qword [@h - 0]
     mov    qword [rbp - 712],                  rax
     mov                  rax,    qword [rbp - 712]
     cmp                  rax,       qword [@k - 0]
     mov                  rax,    qword [rbp - 720]
     mov                  rax,                    0
   setne                   al
     mov    qword [rbp - 720],                  rax
     mov                  rax,    qword [rbp - 720]
     mov    qword [rbp - 704],                  rax
     jmp main.126.logical_exit
main.126.logical_exit:
     cmp    qword [rbp - 704],                    1
      je     main.127.if_true
     jmp    main.128.if_false
main.127.if_true:
     mov                  rax,   qword [@total - 0]
     mov    qword [rbp - 728],                  rax
     add   qword [@total - 0],                    1
     jmp     main.129.if_exit
main.128.if_false:
     jmp     main.129.if_exit
main.129.if_exit:
     jmp main.130.loop_increment
main.130.loop_increment:
     mov                  rax,     qword [rbp - 56]
     mov    qword [rbp - 736],                  rax
     add     qword [rbp - 56],                    1
     jmp main.131.loop_condition
main.131.loop_condition:
     mov                  rax,     qword [rbp - 56]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 744]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 744],                  rax
     cmp    qword [rbp - 744],                    1
      je     main.6.loop_body
     jmp   main.132.loop_exit
main.132.loop_exit:
     jmp main.133.loop_increment
main.133.loop_increment:
     mov                  rax,     qword [rbp - 48]
     mov    qword [rbp - 752],                  rax
     add     qword [rbp - 48],                    1
     jmp main.134.loop_condition
main.134.loop_condition:
     mov                  rax,     qword [rbp - 48]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 760]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 760],                  rax
     cmp    qword [rbp - 760],                    1
      je     main.5.loop_body
     jmp   main.135.loop_exit
main.135.loop_exit:
     jmp main.136.loop_increment
main.136.loop_increment:
     mov                  rax,     qword [rbp - 40]
     mov    qword [rbp - 768],                  rax
     add     qword [rbp - 40],                    1
     jmp main.137.loop_condition
main.137.loop_condition:
     mov                  rax,     qword [rbp - 40]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 776]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 776],                  rax
     cmp    qword [rbp - 776],                    1
      je     main.4.loop_body
     jmp   main.138.loop_exit
main.138.loop_exit:
     jmp main.139.loop_increment
main.139.loop_increment:
     mov                  rax,     qword [rbp - 32]
     mov    qword [rbp - 784],                  rax
     add     qword [rbp - 32],                    1
     jmp main.140.loop_condition
main.140.loop_condition:
     mov                  rax,     qword [rbp - 32]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 792]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 792],                  rax
     cmp    qword [rbp - 792],                    1
      je     main.3.loop_body
     jmp   main.141.loop_exit
main.141.loop_exit:
     jmp main.142.loop_increment
main.142.loop_increment:
     mov                  rax,     qword [rbp - 24]
     mov    qword [rbp - 800],                  rax
     add     qword [rbp - 24],                    1
     jmp main.143.loop_condition
main.143.loop_condition:
     mov                  rax,     qword [rbp - 24]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 808]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 808],                  rax
     cmp    qword [rbp - 808],                    1
      je     main.2.loop_body
     jmp   main.144.loop_exit
main.144.loop_exit:
     jmp main.145.loop_increment
main.145.loop_increment:
     mov                  rax,     qword [rbp - 16]
     mov    qword [rbp - 816],                  rax
     add     qword [rbp - 16],                    1
     jmp main.146.loop_condition
main.146.loop_condition:
     mov                  rax,     qword [rbp - 16]
     cmp                  rax,       qword [@N - 0]
     mov                  rax,    qword [rbp - 824]
     mov                  rax,                    0
   setle                   al
     mov    qword [rbp - 824],                  rax
     cmp    qword [rbp - 824],                    1
      je     main.1.loop_body
     jmp   main.147.loop_exit
main.147.loop_exit:
     mov                  rdi,   qword [@total - 0]
    call             toString
     mov    qword [rbp - 832],                  rax
     mov                  rdi,    qword [rbp - 832]
    call              println
     mov                  rax,                    0
     jmp        main.148.exit
main.148.exit:
     add                  rsp,                  832
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
