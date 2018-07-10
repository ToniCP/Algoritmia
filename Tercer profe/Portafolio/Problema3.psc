//Problema 3: las torres de Hanoi

//implementacion de la funcion recursiva
Funcion hanoi(n, com, aux, ter)
	Si n = 1 Entonces
		Escribir "Se mueve el disco ",n," desde ",com," hasta ", ter
	Sino
		hanoi(n-1, com, ter, aux)
		Escribir "Se mueve el disco ",n," desde ",com," hasta ", ter
		hanoi(n-1, aux, com, ter)
	Fin Si
FinFuncion

Proceso Problema3
	com <- "A"; aux <- "B"; ter <- "C"
	Escribir "Ingrese el numero de discos: "
	Leer n
	
	Escribir "Los movimientos a realizar son: "
	hanoi(n, com, aux, ter)
	
FinProceso
