IDEAL
MODEL small
STACK 100h
DATASEG

Numbers  db 10 dup(3)
CODESEG
start:
    
	mov ax, @data
	mov ds, ax
	
	mov bx,offset Numbers
	mov [byte ptr  bx],0
	mov [byte ptr bx+1],1
	mov cx, 8
	num:
		mov dl,[bx]
		add dl,[bx+1]
		mov[bx+2],dl
		inc bx
		loop num
exit:
	mov ax, 4c00h
	int 21h
END start