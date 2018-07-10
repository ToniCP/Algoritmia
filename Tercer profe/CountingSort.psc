Funcion n<-validacion(num, arg)
	Mientras num != trunc(num) | num < 0 Hacer
		Escribir "Valor invalido."
		Escribir arg
		Leer num
	Fin Mientras
	n <- num
FinFuncion

Funcion Vector(num, vec)
	Definir i como entero
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir "Introduzca la cantidad del vector en la posicion ",i
		Leer vec[i]
		
		Mientras vec[i] != trunc(vec[i]) | vec[i] < 0 Hacer
			Escribir "Valor invalido."
			Escribir "Introduzca la cantidad del vector en la posicion ",i
			Leer vec[i]
		Fin Mientras
		
	Fin Para
FinFuncion

Proceso CountingSort
	arg <- "Introduzca la dimension de su vector: "
	Escribir arg
	Leer num
	num <- validacion(num, arg)
	Dimension vec[num]
	Vector(num, vec)
	min <- vec[1]
	max <- vec[1]
	
	Para i<-1 Hasta num Con Paso 1 Hacer
		Si vec[i] > max Entonces
			max <- vec[i]
		Fin Si
		Si vec[i] < min Entonces
			min <- vec[i]
		Fin Si
	Fin Para
	
	Escribir "El minimo es: ",min,". El maximo es: ",max
	Dimension vaux[max]
	
	cont <- 0
	Para i<-min Hasta max Con Paso 1 Hacer
		Para j<-1 Hasta num Con Paso 1 Hacer
			Si vec[j] = i Entonces
				cont <- cont + 1
			Fin Si
		Fin Para
		vaux[i] <- cont
		cont <- 0
	Fin Para
	
	cont <- 1
	acum <- 0
	Dimension listV[num]
	Para i<-min Hasta max Con Paso 1 Hacer
		Escribir "El numero ",i," se repite ",vaux[i]," veces."
		Para j<-1 Hasta num Con Paso 1 Hacer
			Si j <= vaux[i] Entonces
				listV[1+acum] <- i
				acum <- acum + 1
			Sino
				j <- num
			Fin Si
		Fin Para
	Fin Para
	
	Escribir "La lista ordenada es: "
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir listV[i]
	Fin Para
	
FinProceso
