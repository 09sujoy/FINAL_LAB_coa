.model small
.stack 100h
.data
a db 'Ascii codes are: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h 
    
    mov cx,255
    
    mov ah,2
    mov dl,0
    
    print:
    int 21h
    
    inc dl
    dec cx
    jnz print
    
    exit:
    mov ah,4ch
    int 21h
    main endp 
end main