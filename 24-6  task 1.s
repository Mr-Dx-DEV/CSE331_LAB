.global _start
_start:
	mov r0, #0 @i = 0
	mov r1, #5 @n =5
	
loop_start:

	cmp r0,r1
	bge loop_end
	//loop body
	add r0, r0, #1
	b loop_start
	
loop_end:
	mov r3, #10

end:
	b end
	
	
