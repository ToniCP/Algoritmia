Funcion n<-validacion(num, arg)
	Mientras num != trunc(num) | num < 0 Hacer
		Escribir "Valor invalido."
		Escribir arg
		Leer num
	Fin Mientras
	n <- num
FinFuncion

Funcion matriz(num, mat)
	Definir i como entero
	Para i<-1 Hasta num Con Paso 1 Hacer
		Para j<-1 Hasta num Con Paso 1 Hacer
			Escribir "Introduzca la cantidad de la matriz en la posicion: ",i,",", j
			Leer mat[i, j]
			
			Mientras mat[i, j] != trunc(mat[i, j]) Hacer
				Escribir "Valor invalido."
				Escribir "Introduzca la cantidad de la matriz en la posicion: ",i,",", j
				Leer mat[i, j]
			Fin Mientras
		Fin Para
	Fin Para
FinFuncion

Funcion matrizR(num, mat, a, b)
	Definir i como entero
	Para i<-1 Hasta num Con Paso 1 Hacer
		Para j<-1 Hasta num Con Paso 1 Hacer
			alet <- Aleatorio(a, b)
			mat[i, j] <- alet
		Fin Para
	Fin Para
FinFuncion

Funcion imprimirMat(num, mat)
	Para i<-1 Hasta num Con Paso 1 Hacer
		Para j<-1 Hasta num Con Paso 1 Hacer
			Escribir Sin Saltar mat[i, j],", "
		Fin Para
		Escribir ""
	Fin Para
FinFuncion

Funcion simetria(num, mat)
	aux <- 1
	Para i<-1 Hasta num Con Paso 1 Hacer
		Para j<-1 Hasta num Con Paso 1 Hacer
			Si mat[i,j] <> mat[j,i] Entonces
				Escribir "La matriz no es simetrica."
				i <- num
				j <- num
				aux <- aux + 1
			Fin Si
		Fin Para
	Fin Para
	
	Si aux = 1 Entonces
		Escribir "La matriz es simetrica."
	Fin Si
FinFuncion

Proceso MSimetrica
	arg <- "Introduce la dimension de la matriz. "
	Escribir arg
	Leer N
	
	N <- validacion(N, arg)
	
	Escribir "1) Llenado manual. 2) Llenado automatico."
	Leer opc
	
	Mientras opc != trunc(opc) | opc < 0 | opc > 2 Hacer
		Escribir "Valor invalido."
		Escribir "1) Llenado manual. 2) Llenado automatico."
		Leer opc
	Fin Mientras
	Dimension mat[N, N]
	
	Segun opc Hacer
		1:
			matriz(N, mat)
			Limpiar Pantalla
			
			imprimirMat(N, mat)
			simetria(N, mat)
			
		2:
			Escribir "Limite inferior para el llenado automatico."
			Leer a
			
			Mientras a != trunc(a) Hacer
				Escribir "Valor invalido."
				Escribir "Limite inferior para el llenado automatico."
				Leer a
			Fin Mientras
			
			Escribir "Limite superior para el llenado automatico."
			Leer b
			
			Mientras b != trunc(b) Hacer
				Escribir "Valor invalido."
				Escribir "Limite superior para el llenado automatico."
				Leer b
			Fin Mientras
			Limpiar Pantalla
			
			matrizR(N, mat, a, b)
			imprimirMat(N, mat)
			simetria(N, mat)
			
		De Otro Modo:
			Escribir "Error."
		Fin Segun
	
FinProceso
