;itay branover
;213656366
IDEAL
MODEL small
stack 100h
DATASEG
myarr db 10 dup  (0)

CODESEG
start:
	mov ax,@data
	mov ds,ax
	mov [0000],0
	mov [0001],1
	mov bx ,offset myarr
	mov cx,8
	sum:
	mov al ,[bx]
	add al ,[bx+1]
	mov [bx+2],al
	inc bx
	loop sum
	
	
	
	
	
	



exit:
mov ax,4c00h
int 21h
END start
	
