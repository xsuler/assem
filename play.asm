section .text
global _start

section .data
	msg db  '苏乐 男 2016013244 软件61 清华大学',0xa
	len equ $ - msg

	section .text

	_start:


	    mov edx,len ;length of message
	    mov ecx,msg
	    mov ebx,1   ;file descriptor of stdout
	    mov eax,4   ;system call number of sys_write
	    int 0x80    ;call kernel


  ;; exist
	    mov ebx,0   ;process' exit code
	    mov eax,1   ;system call number (sys_exit)
	    int 0x80    ;call kernel - this interrupt won't return
