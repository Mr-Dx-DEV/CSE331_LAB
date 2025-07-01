.data
    .equ LED, 0xff200000
    
.text
.global _start
_start:
	mov r0, #0
	ldr r7, =LED
	mov r6, #1
	mov r8, #2
	
loop:
	add r0, #1
	str r6,[r7]
	mul r6,r8
	cmp r0, #10
	bgt end
	b delay
delay:
	ldr r1,=5000000
	
delay_loop:
	sub r1, #1
	cmp r1, #0
	beq loop 
	b delay_loop
end:
	b end
	
	
	
	
	
