;Ron Boutboul
;325622504
IDEAL
MODEL small
STACK 100h
DATASEG
fib db 10 dup (?)
CODESEG
start:
	mov ax, @data
	mov ds, ax
	;Add the first two numbers in fibonachi series and find the next number
	mov [0000], 0
	mov [0001], 1
	mov bx, offset fib
	; The loop run 8 times
	mov cx,8
	
fibonachi:
	;connects the numbers
	mov al, [bx]
	add al,[bx+1]
	; the next number
	mov [bx+2],al
	inc bx
	loop fibonachi

exit:
	mov ax, 4c00h
	int 21h
END start
