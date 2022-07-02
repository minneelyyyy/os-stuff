
; CODE

[org 0x7c00]

CODE_SEG equ GDT_code - GDT_Start
DATA_SEG equ GDT_data - GDT_Start

cli
lgdt [GDT_Descriptor]
mov eax, cr0
or eax, 1
mov cr0, eax
jmp CODE_SEG:start_protected_mode

; DATA

GDT_Start:
    GDT_null:
        dd 0x0
        dd 0x0

    GDT_code:
        dw 0xffff
        dw 0x0
        db 0x0
        db 0b10011010
        db 0b11001111
        db 0x0

    GDT_data:
        dw 0xffff
        dw 0x0
        db 0x0
        db 0b10010010
        db 0b11001111
        db 0x0
GDT_End:

GDT_Descriptor:
    dw GDT_End - GDT_Start - 1
    dd GDT_Start

[bits 32]
start_protected_mode:
mov al, 'A'
mov ah, 0x0f
mov [0xb8000], ax
jmp $

times 510-($-$$) db 0
db 0x55, 0xaa