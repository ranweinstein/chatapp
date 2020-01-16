IDEAL
MODEL small
STACK 100h
DATASEG

fibo db 10 dup (0)
var1 db 0
var2 db 1


CODESEG
start:
	mov ax, @data
	mov ds, ax

	xor ax,ax
	
	
	mov bx, offset fibo
	mov cx,10
fibo11:
	mov dl,[var1]
	mov [bx],dl
	mov dh,[var2]
	add [var2],dl
	mov [var1],dh
	inc bx
	loop fibo11




exit:
	mov ax, 4c00h
	int 21h
END start


