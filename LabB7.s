	.globl fini
	.text
main:	#------------Read 2 values from User------------------
		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t0, $0, $v0 # t0 = v0
		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t1, $0, $v0 # t1 = v0
		#-------------------------------
		slt $t5, $t0, $t1 # x = (t0 < t1) ? 1 : 0
		
		addi $t4, $0, 0
		
		bne $t5, $t4, XX # if t0 < t1, goto XX
		
		sub $t3, $t0, $t1 
		
		j YY
XX:	add $t3, $t0, $t1

YY:	addi $v0, $0, 1 
		add $a0, $0, $t3
		syscall
		#-----------------------------
fini:		jr $ra #return

