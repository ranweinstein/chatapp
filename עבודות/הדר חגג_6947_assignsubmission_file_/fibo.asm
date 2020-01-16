;Hadar Hagag
;325299550
IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
fib db 10 dup (?)

; --------------------------


CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
; -------------------------
	;defining the first two organs
	mov [0000], 0
	mov [0001], 1
	mov bx, offset fib
	;the loop will run 8 times
	mov cx,8
	
fibo:
	;connects the numbers
	mov al, [bx]
	add al,[bx+1]
	;enters the next number
	mov [bx+2],al
	inc bx
	loop fibo

exit:
	mov ax, 4c00h
	int 21h
END start


