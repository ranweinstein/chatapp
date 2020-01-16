; Tomer Yaakobi
; 325356376

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
	mov cx, 8 ;Determines out the numbers of organs in the Fibonacci series that we want to find out
	mov [byte ptr bx], 0
	mov [byte ptr bx+1], 1
result: ;Add two numbers and find out the next number in Fibonacci series
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