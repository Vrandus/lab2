	.globl fini
	.text
main:	#-----------------------------
		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t0, $0, $v0 # t0 = v0

		addi $v0, $0, 1
		addi $t1, $0, 1
		addi $t2, $0, 0
loop:	slt $t9, $t2, $t0
		bne $t9, $t1, fini
		add $a0, $a0, $t2
		add $t2, $t2, 1
		
		j loop

		#-----------------------------
fini:	
		syscall

