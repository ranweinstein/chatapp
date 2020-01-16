;Lino Chernyavsky
;213800881
IDEAL
MODEL small
STACK 100h
DATASEG
; the fibo's numbers 
myArr db 10 dup (0)
var1 db 0
var2 db 1
CODESEG
start:
	mov ax, @data
	mov ds, ax
	; how many numbers will be in the fibo code
	mov cx, 10
	mov bx, offset myArr
	
Next:
    ; the fibo code
    inc bx
	mov al, [var2]
	add al, [var1]
	mov [bx], al
	mov ah, [var2]
	mov [var1], ah
	mov dl, [bx]
	mov [var2], dl
	  
	loop Next
	
    
exit:
	mov ax, 4c00h
	int 21h
END start


