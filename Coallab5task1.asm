; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
.code
main Proc 

    mov ah,01  
    int 21h
    mov bx,ax

    mov dl,45   
    mov ah,02
    int 21h

    mov ah,01  
    int 21h
    mov cx,ax

    mov dl,61   
    mov ah,02
    int 21h

    sub bx,cx   
    add bx, 30h    
    mov dx,bx

    mov ah,02
    int 21h 

mov ah,4ch
int 21h
main endp
end main

ret

