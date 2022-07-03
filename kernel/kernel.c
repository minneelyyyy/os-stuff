
void main() {
    *(char*) 0xb8000 = 'H';
    *(char*) 0xb8001 = 'E';
    *(char*) 0xb8002 = 'L';
    *(char*) 0xb8003 = 'L';
    *(char*) 0xb8004 = 'O';
    *(char*) 0xb8005 = '!';

    for (;;)
        __asm__("brk");
}
