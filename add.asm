SYS_CALL_EXIT equ 1
SYS_CALL_WRITE equ 4
section .data
	msgout db "the sum of: "
	lenmsgout equ $- msgout
section .bss
	res resb 100
section .text
	global funct1

funct1:
	mov rax,SYS_CALL_WRITE
        mov rbx, 1
        mov rcx, msgout
        mov rdx, lenmsgout
        int 80h

			
	movsx rax, edi
	movsx rcx,esi
	add rax,rcx
	je exit

exit:
	mov rcx,SYS_CALL_WRITE
	mov ebx,1
	mov rcx,rax

	mov rcx, SYS_CALL_EXIT
	mov ebx,0
	ret
