;Hili Moshe
;325292910
IDEAL
MODEL small
STACK 100h
DATASEG

fibarr db 10 dup (9)

CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	mov bx,offset fibarr
	xor ax,ax
	mov [bx],0
	mov [bx+1],1
	mov cx,8
fibloop:
	mov dl,[bx]
	add dl,[bx+1]
	mov [bx+2],dl
	inc bx
	
	loop fibloop
	
exit:
	mov ax, 4c00h
	int 21h
END start