Proceso Segund
	Escribir "Introduzca su nombre: "
	Leer nombre
	
	Escribir "Introduzca sus calificaciones: "
	cont <- 0
	cont2 <- 0
	Para i<-1 Hasta 4 Hacer
		Escribir "Ingrese la calificacion ",i,":"
		Leer dato
		cont<-cont + dato
		
		Si i = 1 Entonces
			cont2 <- dato * .30 + cont2
		Sino
			Si i = 2 Entonces
				cont2 <- dato * .20 + cont2
			Sino
				Si i = 3 Entonces
					cont2 <- dato * .40 + cont2
				Sino
					cont2 <- dato * .10 + cont2
				Fin Si
			Fin Si
		Fin Si
	FinPara
	
	promN <- cont/4;
	
	Escribir "El promedio normal es de: ",promN
	Escribir "El promedio ponderado es de: ",cont2
	
	Si promN > cont2 Entonces
		Escribir "La forma de calificacion recomendada a ",nombre," es: ", promN
	Sino
		Escribir "La forma de calificacion recomendada a ",nombre," es: ", cont2
	Fin Si
	
FinProceso
