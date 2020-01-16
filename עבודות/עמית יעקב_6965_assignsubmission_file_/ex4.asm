;Amit Jacob
;213890734
IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
fibonachi db 10 dup (0)
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
	mov bx, offset fibonachi
	mov [byte ptr bx], 0
	mov [byte ptr bx+1], 1
	
	mov cx, 8
fib:
	mov ax, [bx]
	add ax, [bx+1]
	mov [bx+2], ax
	inc bx
	loop fib
; -------------------------

exit:
	mov ax, 4c00h
	int 21h
END start


