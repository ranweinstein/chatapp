IDEAL
MODEL small
STACK 100h
DATASEG
arry db 10 dup(9)

; --------------------------
; Your variables here
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
	
	mov bx,offset arry
	xor ax,ax
	
	mov [byte ptr bx],0
	mov [byte ptr bx+1],1
	mov cx,8
fib:
    mov dl,[bx]
	add dl,[bx+1]
	mov [bx+2],dl
	inc bx
	
	loop fib
	
	
	
; --------------------------
; Your code here
; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


