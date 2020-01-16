IDEAL
MODEL small
STACK 100h
DATASEG

numbers  db 10 dup(9)
; --------------------------
; Your variables here
; --------------------------


CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	
	mov bx,offset numbers
    mov [byte ptr bx],0
	mov [byte ptr bx+1],1
	mov cx,8
fibo:
	mov dl,[bx]
	add dl,[bx+1]
	mov [bx+2],dl
	inc bx
	loop fibo


	
	
; --------------------------
; Your code here
; -------------------------



exit:
	mov ax, 4c00h
	int 21h
END start


