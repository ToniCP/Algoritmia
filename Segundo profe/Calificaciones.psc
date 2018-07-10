Proceso Calificaciones
	Escribir "Ingresa la cantidad de numeros que van a estar en el vector: "
	Leer num
	
	//Esto lo uso para que no me salte error y me permita poner los numero
	Mientras num != trunc(num) | num < 0 Hacer
		Escribir "Valor invalido."
		Escribir "Ingresa la cantidad de numeros que van a estar en el vector: "
		Leer num
	Fin Mientras
	
	Dimension N[num]
	aprobados <- 0
	reprobados <- 0
	promedio <- 0
	
	Escribir "Opcion 1: Se introduce numeros aleatorios."
	Escribir "Opcion 2: Usted ingresa los numeros."
	Leer opc
	
	Mientras opc != trunc(opc) | opc < 0 | opc > 2 Hacer
		Escribir "Valor invalido."
		Escribir "Opcion 1: Se introduce numeros aleatorios."
		Escribir "Opcion 2: Usted ingresa los numeros."
		Leer opc
	Fin Mientras
	
	Segun opc Hacer
		1:
			Para i<-1 Hasta num Con Paso 1 Hacer
				N[i] <- azar(101)
				
				Si N[i] >= 70 Entonces
					aprobados <- aprobados + 1
				Sino
					reprobados <- reprobados + 1
				Fin Si
				
				promedio <- promedio + N[i]
				
			Fin Para
		2:
			Para i<-1 Hasta num Con Paso 1 Hacer
				Escribir "Introduce la calificacion ",i,": "
				Leer N[i]
				
				Mientras N[i] < 0 | N[i] > 100 Hacer
					Escribir "Valor invalido."
					Escribir "Introduce la calificacion ",i,": "
					Leer N[i]
				Fin Mientras
				
				Si N[i] >= 70 Entonces
					aprobados <- aprobados + 1
				Sino
					reprobados <- reprobados + 1
				Fin Si
				
				promedio <- promedio + N[i]
				
			Fin Para
		De Otro Modo:
			Escribir "Valor invalido."
		Fin Segun
	
	
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir "Calificacion ",i,": ",N[i]
	Fin Para
	
	Escribir "El numero de aprobados es: ",aprobados
	Escribir "El numero de reprobados es: ",reprobados
	Escribir "El promedio es: ",promedio/num
	
FinProceso
