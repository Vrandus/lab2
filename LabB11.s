	.globl fini
	.text
main:	#-----------------------------
		addi $t0, $0, 60
		srl $t1, $t0, 2  #Logical Right Shift (>>>)
		addi $v0, $0, 1
		add $a0, $0, $t1
		syscall
		#addi $v0, $0, 1
		#add $a0, $0, $t5
		#syscall
		addi $v0, $0, 11
		add $a0, $0, ' '
		syscall
		sll $t2, $t0, 1  #Logical Left Shift (<<)
		addi $v0, $0, 1
		add $a0, $0, $t2
		syscall
		addi $v0, $0, 11
		add $a0, $0, ' '
		syscall
		addi $v0, $0, 1
		addi $t3, $0, 60  #Arthmetical Right Shift (>>)
		sra $t4, $t3, 1
		add $a0, $0, $t4
		syscall
		
		#-----------------------------
fini:	

