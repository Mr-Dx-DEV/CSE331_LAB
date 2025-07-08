.global _start
_start:
	mov r0, #10
	mov r1, #20
	mov r2, #30
	
	mov sp, #0x1000
	PUSH {r0,r1,r2}
	
	POP {r4,r5,r6}




 LAST








.equ JTAG, 0xff201000

.data
TEXT: .string "Tanvir ANjum Neon"

.text
.global _start
_start:
	ldr r0,=JTAG
	ldr r1,=TEXT
loop:
	ldrb r2,[r1], #1
	cmp r2,#0
	beq _stop
	strb r2,[r0]
	b loop
_stop:
	b _stop
