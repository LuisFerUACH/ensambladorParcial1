.data
	UN_DIEZ DQ 10 
	INICIALIZAR DQ 0
	datos DQ 10 ,20 ,30 ,40 ,50
.code
;; La funcion principal del programa
	main proc
		;;SUMA1
		mov rax, INICIALIZAR ;; RAX = 0;
		lea rbx, datos ;; RBX apunta a datos[0]
		add rax, qword ptr[rbx] ;;RAX=RAX + datos[0]= 0 + 10 = 10;
		add rax, qword ptr[rbx + 8] ;;RAX=RAX + datos[1]=10 + 20 = 30;
		add rax, qword ptr[rbx + 16] ;;RAX=RAX + datos[2]=30 + 30 = 60;
		add rax, qword ptr[rbx + 24] ;;RAX=RAX + datos[3]=60 + 40 = 100;
		add rax, qword ptr[rbx + 32] ;;RAX=RAX + datos[4]=100 + 50 = 150;
		
		;;SUMA2 + 10
		mov rax, INICIALIZAR ;; RAX = 0;
		lea rbx, datos ;; RBX apunta a datos[0]
		add rax, qword ptr[rbx] ;;RAX=RAX + datos[0]= 0 + 10 = 10
		add rax, UN_DIEZ ;; RAX+=UN_DIEZ=20
		add rax, qword ptr[rbx + 8];;RAX=RAX + datos[1]=20 + 20 = 40
		add rax, UN_DIEZ ;; RAX+=UN_DIEZ=50
		add rax, qword ptr[rbx + 16];;RAX=RAX + datos[2]=50 + 30 = 80
		add rax, UN_DIEZ ;; RAX+=UN_DIEZ=90
		add rax, qword ptr[rbx + 24];;RAX=RAX + datos[3]=90 + 40 = 130
		add rax, UN_DIEZ ;; RAX+=UN_DIEZ=140
		add rax, qword ptr[rbx + 32];;RAX=RAX + datos[4]=140 + 50 = 190
		add rax, UN_DIEZ ;; RAX+=un_diez=200
		
		;;RESTA3 - 10
		mov rax, INICIALIZAR ;; RAX = 0;
		lea rbx, datos ;; RBX apunta a datos[0]
		sub qword ptr[rbx], 10 ;; datos[0] -= 10 = 0;
		add rax, qword ptr[rbx] ;;RAX=RAX + datos[0]= 0 + 0 = 0;
		sub qword ptr[rbx + 8], 10 ;; datos[1] -= 10 = 10;
		add rax, qword ptr[rbx + 8];;RAX=RAX + datos[1]=0 + 10 = 10;
		sub qword ptr[rbx + 16], 10 ;; datos[2] -= 10 = 20;
		add rax, qword ptr[rbx + 16];;RAX=RAX + datos[2]=10 + 20 = 30;
		sub qword ptr[rbx + 24], 10 ;; datos[3] -= 10 = 30;
		add rax, qword ptr[rbx + 24];;RAX=RAX + datos[3]=30 + 30 = 60;
		sub qword ptr[rbx + 32], 10 ;; datos[4] -= 10 = 40;
		add rax, qword ptr[rbx + 32];;RAX=RAX + datos[4]=60 + 40 = 100;
		ret
	main endp
end