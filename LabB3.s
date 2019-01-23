	.globl fini
	.text
main:	#------------------------------
		addi $t0, $0, 60 # t0 = 60
		# could be replaced with
		#li $t0, 60 #t0 = 60
		#known as pseudo-instruction
		addi $t1, $0, 7  # t1 = 60
		add $t2, $t0, $t1 # t2 = t0 + t1
		#-----------------------------
		addi $v0, $0, 11 # service #11
		add $a0, $0, $t2 # printInt
		syscall 			#do print
		#-----------------------------
fini:		jr $ra #return

