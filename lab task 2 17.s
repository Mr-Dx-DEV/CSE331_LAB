
.data
	num: .word 26
.text
.global _start
_start:
	LDR R0, =num
	LDR R0, [R0] 
	
	CMP R0, #0
	BGT Positive
	
	CMP R0, #0
	BLT Negative
	
	CMP R0, #0
	BEQ Zero
	

Positive:
	MOV R1, #1
	B done
Negative:
	MOV R1, #-1
	B done
Zero:
	MOV R1, #0
	B done

done:
	B done



























.data
    num: .word 26       

.text
.global _start
_start:
    LDR R0, =num       
    LDR R0, [R0]        

    CMP R0, #0   
	
    BGT Positive        
    BLT Negative        
    BEQ Zero            

Positive:
    MOV R1, #1
    B done

Negative:
    MOV R1, #-1
    B done

Zero:
    MOV R1, #0
    B done

done:
    B done              








