Proceso expresion19062018
	Escribir "Ingresar hasta que numero quiere obtener el resultado: "
	Leer n
	S<-0
	resul <- 1
	
	Para i<-1 Hasta n Hacer
		Para dim<-1 Hasta n Hacer
			resul <- resul*dim
		Fin Para
		S<-(result/n) + S
	Fin Para
	
	Escribir "La suma de la division factorial es del numero: ",n," es: ",S
	
FinProceso
