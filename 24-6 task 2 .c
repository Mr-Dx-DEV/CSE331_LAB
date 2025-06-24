.data
	.equ seven,0xff200020
	.equ seven_2,0xff200030
.text
.global _start
_start:
	ldr r0,=seven
	ldr r1,=0b01011011010110110101101101011011
	str r1,[r0]
	
	ldr r2,=seven_2
	ldr r3,=0b0101101101011011
	str r3,[r2]
	

	
