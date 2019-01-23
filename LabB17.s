	.globl fini
	.text
main:	#-----------------------------

		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t0, $0, $v0 # t0 = v0

		
		ori $t1, $0, 0xffff
		ori $t5, $0, 0xfbff
		sll $t2, $t1, 16
		or $t4, $t5, $t2
		
		and $t3, $t0, $t4
		
		lui $t7, 0xffff
		ori $t7, $t7, 0xfbff
		
		
		addi $v0, $0, 1
		add $a0, $0, $t3
		syscall
		addi $v0, $0, 11
		add $a0, $0, ' '
		syscall
		
		#-----------------------------
fini:	

