.data
    .equ LED, 0xff200000
    .equ SWITCH, 0xff200040

.text
.global _start
_start:
    ldr r0, =LED         
    ldr r2, =SWITCH      

loop:
    ldr r1, [r2]        
    str r1, [r0]         
    b loop           
