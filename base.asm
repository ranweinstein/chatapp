IDEAL
MODEL small
STACK 20h
DATASEG
; --------------------------
; Your variables here
; --------------------------

CODESEG
start:
    mov ax, @data
    mov ds, ax
    
    xor ax,ax
; --------------------------
; Your code here
; --------------------------

exit:
    mov ax, 4c00h
    int 21h
END start


