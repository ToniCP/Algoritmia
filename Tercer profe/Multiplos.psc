Proceso Multiplos
	Escribir "Ingresa la dimension que deseas que sea tu vectos: "
	Leer num
	
	//Esto lo uso para que no me salte error y me permita poner los numero
	Mientras num != trunc(num) | num < 0 Hacer
		Escribir "Valor invalido."
		Escribir "Ingresa la dimension que deseas que sea tu vectos: "
		Leer num
	Fin Mientras
	
	Dimension N[num]
	
	Escribir "Ingresa el numero el cual se determine su multiplo: "
	Leer X
	
	Mientras X != trunc(X) | X < 0 Hacer
		Escribir "Valor invalido."
		Escribir "Ingresa la dimension que deseas que sea tu vectos: "
		Leer X
	Fin Mientras
	
	Para i<-1 Hasta num Hacer
		N[i] <- X*i
	Fin Para
	
	Para i<-1 Hasta num Hacer
		Escribir "Valor de N[",i,"]: ",N[i]
	Fin Para
	
FinProceso
