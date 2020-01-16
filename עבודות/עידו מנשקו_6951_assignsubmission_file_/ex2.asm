; Ido Menashko
; 325325066

IDEAL
MODEL small
STACK 100h
DATASEG

fib db 10 dup(9)

CODESEG
start:
	mov ax, @data
	mov ds, ax
	xor ax,ax
	mov bx , offset fib
	mov [bx],0
	mov [bx+1],1
	mov cx,8
fib1:
	mov al,[bx]
	add al,[bx+1]
	mov [bx+2],al
	inc bx
	loop fib1

	

	
	
exit:
	mov ax, 4c00h
	int 21h
END start


