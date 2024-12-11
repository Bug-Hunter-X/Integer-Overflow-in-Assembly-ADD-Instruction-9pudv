```assembly
mov ax, bx
add ax, cx
mov dx, ax ;potential bug here if cx is very large
```