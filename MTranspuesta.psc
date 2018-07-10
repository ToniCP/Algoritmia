Funcion n<-validacion(num)
	Mientras num != trunc(num) | num < 0 Hacer
		Escribir "Valor invalido."
		Leer num
	Fin Mientras
	n <- num
FinFuncion

Funcion matriz(N, M, mat)
	Definir i como entero
	Para i<-1 Hasta N Con Paso 1 Hacer
		Para j<-1 Hasta M Con Paso 1 Hacer
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

Funcion matrizR(N, M, mat, a, b)
	Definir i como entero
	Para i<-1 Hasta N Con Paso 1 Hacer
		Para j<-1 Hasta M Con Paso 1 Hacer
			alet <- Aleatorio(a, b)
			mat[i, j] <- alet
		Fin Para
	Fin Para
FinFuncion

Funcion imprimirMat(N, M, mat)
	Para i<-1 Hasta N Con Paso 1 Hacer
		Para j<-1 Hasta M Con Paso 1 Hacer
			Escribir Sin Saltar mat[i, j],", "
		Fin Para
		Escribir ""
	Fin Para
FinFuncion

Funcion transpuesta(N, M, mat)
	Para i<-1 Hasta M Con Paso 1 Hacer
		Para j<-1 Hasta N Con Paso 1 Hacer
			Escribir Sin Saltar mat[j, i],", "
		Fin Para
		Escribir ""
	Fin Para
FinFuncion

Proceso MTranspuesta
	Escribir "Introduce la cantidad de filas que llevara la matriz."
	Leer N
	N <- validacion(N)
	
	Escribir "Introduce la cantidad de columnas que llevara la matriz."
	Leer M
	M <- validacion(M)
	
	Dimension mat[N, M]
	
	Escribir "1) Llenado manual. 2) Llenado automatico."
	Leer opc
	
	Mientras opc != trunc(opc) | opc < 0 | opc > 2 Hacer
		Escribir "Valor invalido."
		Escribir "1) Llenado manual. 2) Llenado automatico."
		Leer opc
	Fin Mientras
	
	Segun opc Hacer
		1:
			matriz(N, M, mat)
			Limpiar Pantalla
			
			Escribir "Matriz original: "
			imprimirMat(N, M, mat)
			Escribir ""
			Escribir "La matriz transpuesta es: "
			transpuesta(N, M, mat)
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
			
			matrizR(N, M, mat, a, b)
			Escribir "Matriz original: "
			imprimirMat(N, M, mat)
			Escribir ""
			Escribir "La matriz transpuesta es: "
			transpuesta(N, M, mat)
		De Otro Modo:
			Escribir "Error."
		Fin Segun
	
FinProceso
