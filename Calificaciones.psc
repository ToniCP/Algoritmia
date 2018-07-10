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
	
	Para i<-1 Hasta num Con Paso 1 Hacer
		N[i] <- azar(101)
		
		Si N[i] >= 70 Entonces
			aprobados <- aprobados + 1
		Sino
			reprobados <- reprobados + 1
		Fin Si
		
		promedio <- promedio + N[i]
		
	Fin Para
	
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir "Calificacion ",i,": ",N[i]
	Fin Para
	
	Escribir "El numero de aprobados es: ",aprobados
	Escribir "El numero de reprobados es: ",reprobados
	Escribir "El promedio es: ",promedio/num
	
FinProceso
