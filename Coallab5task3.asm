.model small
.stack 100h
.data 
.code
main Proc 


    mov ah,01     
    int 21h 
    mov cx,ax

    mov dl, '+' 
    mov ah,02
    int 21h 

    mov ah,01     
    int 21h 
    mov bx,ax

    add cx,bx
    sub cx, 30h 
    mov dx,cx

    mov dl, '+'  
    mov ah,02
    int 21h 

    mov ah,01    
    int 21h 
    mov bx,ax 

    mov dl, '=' 
    mov ah,02
    int 21h 

    add cx,bx
    sub cx,30h
    mov dx,cx

    mov ah,02
    int 21h

mov ah,4ch
int 21h
main endp
end main
