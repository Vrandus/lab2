	.globl fini
	.text
main:	#------------------------------
		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t0, $0, $v0 # t0 = v0
		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t1, $0, $v0 # t1 = v0
		#-------------------------------
		beq $t1, $t0, XX # if t1 == t0, goto XX
		
		sub $t3, $t0, $t1 
		
		j YY
XX:	add $t3, $t0, $t1

YY:	addi $v0, $0, 1 
		add $a0, $0, $t3
		syscall
		#-----------------------------
fini:		jr $ra #return

