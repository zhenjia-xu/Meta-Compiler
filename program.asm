global main
extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp
SECTION .text
cd:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
cd.0.enter:
     mov                  r11,                  rdi
     mov                  r10,                  rsi
     mov                  r12,                  rdx
     mov                   r9,                  rcx
     mov                  rbx,                   r8
     cmp                  r11,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
      je         cd.1.if_true
     jmp        cd.2.if_false
cd.1.if_true:
     mov                  rdi,      __string_const0
     mov                  rsi,                  r10
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const1
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     add                  rbx,                    1
     jmp         cd.3.if_exit
cd.2.if_false:
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r10
     mov                  rdx,                   r9
     mov                  rcx,                  r12
     mov                   r8,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call                   cd
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rbx,                  rax
     mov                  rdi,      __string_const2
     mov                  rsi,                  r10
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,      __string_const3
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call  __string_connection
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rdi,                  r10
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rdi,                  r12
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rdi,                   r9
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r12
     mov                  rdx,                  r10
     mov                  rcx,                   r9
     mov                   r8,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call                   cd
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rbx,                  rax
     add                  rbx,                    1
     jmp         cd.3.if_exit
cd.3.if_exit:
     mov                  rax,                  rbx
     jmp            cd.4.exit
cd.4.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
@GlobalDeclaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    0
@GlobalDeclaration.0.enter:
@GlobalDeclaration.1.exit:
     add                  rsp,                    0
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call   @GlobalDeclaration
     sub                  rsp,                    0
main.0.enter:
     mov                  rsi,      __string_const4
     mov                   r8,      __string_const5
     mov                  rbx,      __string_const6
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call               getInt
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rdi,                  rax
     mov                  rdx,                   r8
     mov                  rcx,                  rbx
     mov                   r8,                    0
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call                   cd
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call             toString
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rcx
    push                  rdx
    push                  rbx
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
    push                  r12
    push                  r13
     sub                  rsp,                    8
    call              println
     add                  rsp,                    8
     pop                  r13
     pop                  r12
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  rbx
     pop                  rdx
     pop                  rcx
     mov                  rax,                    0
     jmp          main.1.exit
main.1.exit:
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
      dq                    5
__string_const0:
      db           "move ", 0
      dq                    5
__string_const1:
      db           " --> ", 0
      dq                    5
__string_const2:
      db           "move ", 0
      dq                    5
__string_const3:
      db           " --> ", 0
      dq                    1
__string_const4:
      db               "A", 0
      dq                    1
__string_const5:
      db               "B", 0
      dq                    1
__string_const6:
      db               "C", 0
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
