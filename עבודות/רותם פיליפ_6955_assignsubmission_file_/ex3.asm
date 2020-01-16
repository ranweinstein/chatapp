;rotem philip
;326324043

IDEAL
MODEL small
STACK 100h
DATASEG
   
	fib db 10 dup (?)

CODESEG
start:

	mov ax, @data
	mov ds, ax
	
	xor ax,ax
	mov bx, offset fib
	
	mov [ds:0000],0
	mov [ds:0001],1
	
	mov cx,8
calc:	
	mov al,[bx]
	add al,[bx+1]
	mov [bx+2],al
	inc bx
	
	loop calc
	

exit:
	mov ax, 4c00h
	int 21h
END start

