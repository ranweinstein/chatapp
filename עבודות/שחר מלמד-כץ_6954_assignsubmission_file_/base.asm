; Shachar Melamed-Katz
; 213874365

IDEAL
MODEL small
STACK 100h
DATASEG

; --------------------------
fibary db 10 dup (9)
; --------------------------

CODESEG
start:
	mov ax, @data
	mov ds, ax
	
; --------------------------
	mov bx, offset fibary ;Set pointer.
	mov cx, 8 ;Determines the number of organs in the Fibonacci series that we want to find out(the constant+2).
	mov [byte ptr bx], 0
	mov [byte ptr bx+1], 1
result: ;Add two numbers and find the next number in Fibonacci series (put him in the array).
    mov al, [bx]
    add al, [bx+1]
	mov [bx+2], al
	inc bx
    loop result
; -------------------------

exit:
	mov ax, 4c00h
	int 21h
END start