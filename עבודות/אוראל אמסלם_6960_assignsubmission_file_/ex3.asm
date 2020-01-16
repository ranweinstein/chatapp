;Orel Amsalem
; 325257699
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
	xor ax, ax
	mov bx, offset fib
	mov [bx], 0
	inc bx
	mov [bx], 1
	mov cx, 8
fibon:
	mov ah, [bx]
	add ah, [bx-1]
	inc bx 
	mov [bx], ah
	loop fibon
; --------------------------
exit:
	mov ax, 4c00h
	int 21h
END start

