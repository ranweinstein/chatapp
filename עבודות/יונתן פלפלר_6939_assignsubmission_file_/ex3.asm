;Yonatan Plepler
;325307775
IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your variables here
var1 db 0
var2 db 1
myArr db 10 dup(0)
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
	mov cx, 9
	mov bx ,offset myArr
Next:
	inc bx;first number is 0 so i will start from the second number
	mov al,[var2]
	add al,[var1]
	mov [bx],al;var1+var2 = next number put into the adress
	mov ah,[var2]
	mov [var1],ah	;move var2 to var 1 and the new number to var2
	mov ah,[bx]		;move var2 to var 1 and the new number to var2
	mov [var2],ah
	loop Next;repeat 9 times(first number is already 0)
exit:
	mov ax, 4c00h
	int 21h
END start