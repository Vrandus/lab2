	.globl fini
	.text
main:	#-----------------------------

		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t0, $0, $v0 # t0 = v0

		
		andi $a0, $t0, 0x400 #aka 1024, can write it in both ways
		
		addi $v0, $0, 1
		#add $a0, $0, $a0
		syscall
		addi $v0, $0, 11
		add $a0, $0, ' '
		syscall
		
		#-----------------------------
fini:	

