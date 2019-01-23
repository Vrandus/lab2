	.globl fini
	.text
main:	#-----------------------------

		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t0, $0, $v0 # t0 = v0

		addi $t1, $0, 1024
		nor $t2, $0, $t1
		
		and $t3, $t0, $t2
		
		addi $v0, $0, 1
		add $a0, $0, $t3
		syscall
		addi $v0, $0, 11
		add $a0, $0, ' '
		syscall
		
		#-----------------------------
fini:	

