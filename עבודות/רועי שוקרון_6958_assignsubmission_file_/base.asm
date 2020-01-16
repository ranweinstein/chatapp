;Roy Shukrun
;326324530
IDEAL
MODEL small
STACK 100h
DATASEG

fibarr db 10 dup (0,1,0,0,0,0,0,0,0,0)


CODESEG
start:
	mov ax, @data
	mov ds, ax

	mov cx, 8
	mov bx, offset fibarr
loopfib
	
	mov al,[bx]
	add al,[bx+1]
	mov [bx+2],al
	inc bx
	loop loopfib
	
		
exit:
	mov ax, 4c00h
	int 21h
END start


