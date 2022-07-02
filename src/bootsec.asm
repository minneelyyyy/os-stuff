
mov ah, 0x0e
mov al, 'A'
mov bl, 0

loop:
    int 0x10
    inc al

    mov cl, al

    ; check if a character is uppercase or lowercase
    ; A = 01000001
    ; a = 01100001
    and cl, 1 << 5
    cmp cl, 0
    je isupper
    islower: ; xx1xxxxx -> xx0xxxxx
    sub al, 1 << 5
    jmp ifelseend
    isupper: ; xx0xxxxx -> xx1xxxxx
    add al, 1 << 5
    ifelseend:

    inc bl
    cmp bl, 'Z' - 'A' ; add support in case letters get added or removed between A and Z
    jle loop

jmp $

times 510-($-$$) db 0
db 0x55, 0xaa
