```assembly
mov ax, bx
cmp cx, 0 ;check if cx is negative, if not proceed to next
jge add_check
;If cx is negative jump to negative_check
jmp negative_check
add_check:
mov dx, ax
sub dx, cx ;Subtracting value to check whether overflow is possible
jc overflow ;jump to overflow handling if overflow happens
add ax, cx
jmp end
overflow:
; Handle overflow (e.g., set an error flag or use a larger register)
mov ax, 0xFFFF ; setting error flag or something negative
jmp end
negative_check:
;handle negative value of cx
sub ax, cx
jmp end
end:
;rest of the code
```