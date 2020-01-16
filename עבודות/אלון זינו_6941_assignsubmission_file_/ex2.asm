;alon zino
;325257129

IDEAL
MODEL small
STACK 100h
DATASEG
myarr db 10 dup (0)
var db 0
CODESEG
start:
	mov ax, @data
	mov ds, ax
	mov ds, ax
	mov [0000],0
	mov [0001],1
	mov bx,offset myarr
	mov cx,8
	fibo:
	mov al,[bx]
	add al,[bx+1]
	mov [bx+2],al
	inc bx
	loop fibo
	

	
	
	
exit:
	mov ax, 4c00h
	int 21h
END start


