
mov cx, 37
mov ax,1
mov bx,1
label:
add ax,bx
add bx,4
loop label

mov ah,2
mov dx,ax
int 21h
;dos exit

mov ah,4ch
int 21h 
