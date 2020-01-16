;saar frenkel
;213433436
IDEAL
MODEL small
STACK 100h
DATASEG

fibarr db 10 dup(0,1,0,0,0,0,0,0,0,0)
CODESEG
start:
	mov ax, @data
	mov ds, ax
	mov cx, 10
loopfib:	;loop takes sum of two following places in array and puts it in the following place
	mov al, [bx]
	add al, [bx+1]
	mov [bx+2],al
	inc bx
	loop loopfib
	
	
exit:
	mov ax, 4c00h
	int 21h
END start