.global _start
_start:

	mov r0, #15
	mov r1, #16

	
	cmp r0, r1  
	BGT greater 
	mov r2, r1
	b end


greater:

	mov r2, r0

end:
	b end
	
	
