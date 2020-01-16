IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your variables here
; --------------------------

fib  db 10 dup (?)

CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
; -------------------------
	xor ax,ax
	mov [ds:0000],0
	mov [ds:0001],1
	mov bx,offset fib
	mov cx,8
fibonachi:
	mov al,[bx]
	add al,[bx+1]
	mov [bx+2],al
	inc bx
	loop fibonachi
	
	
	

exit:
	mov ax, 4c00h
	int 21h
END start
