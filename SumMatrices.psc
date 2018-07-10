Funcion matriz(n, m, mat)
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta m Con Paso 1 Hacer
			Escribir "Introduce el numero de la poscion: ",i,", ",j
			Leer mat[i, j]
		Fin Para
	Fin Para
FinFuncion

Funcion matrizR(n, m, mat, a, b)
	Definir i como entero
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta m Con Paso 1 Hacer
			alet <- Aleatorio(a, b)
			mat[i, j] <- alet
		Fin Para
	Fin Para
FinFuncion

Funcion n <- validacion(num)
	Mientras num != trunc(num) | num < 0 Hacer
		Escribir "Error."
		Leer num
	Fin Mientras
	n <- num
FinFuncion

Funcion sumaM(n, m, mat1, mat2, mat3)
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta m Con Paso 1 Hacer
			mat3[i, j] <- mat1[i, j] + mat2[i, j]
		Fin Para
	Fin Para
FinFuncion

Funcion print(n, m, mat)
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta m Con Paso 1 Hacer
			Escribir Sin Saltarmat[i, j]," "
		Fin Para
		Escribir ""
	Fin Para
FinFuncion

Proceso SumMatrices
	Escribir "Introduce la dimension de las filas: "
	Leer n
	n <- validacion(n)
	Escribir "Introduce la dimension de las columnas:"
	Leer m
	m <- validacion(m)
	
	Escribir "1) Llenado manual. 2) Llenado automatico."
	Leer opc
	
	Mientras opc != trunc(opc) | opc < 0 | opc > 2 Hacer
		Escribir "Valor invalido."
		Escribir "1) Llenado manual. 2) Llenado automatico."
		Leer opc
	Fin Mientras
	
	Segun opc Hacer
		1:
			Dimension mat1[n, m], mat2[n, m], mat3[n, m]
			matriz(n, m, mat1)
			matriz(n, m, mat2)
			
			sumaM(n, m, mat1, mat2, mat3)
			Limpiar Pantalla
			Escribir "La suma de las matrices es: "
			print(n, m, mat3)
			Escribir "Las matrices originales son: "
			Escribir "Matriz A:"
			print(n, m, mat1)
			Escribir "Matriz B:"
			print(n, m, mat2)
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
			
			Dimension mat1[n, m], mat2[n, m], mat3[n, m]
			matrizR(n, m, mat1, a, b)
			matrizR(n, m, mat2, a, b)
			
			sumaM(n, m, mat1, mat2, mat3)
			Escribir "La suma de las matrices es: "
			print(n, m, mat3)
			Escribir "Las matrices originales son: "
			Escribir "Matriz A:"
			print(n, m, mat1)
			Escribir "Matriz B:"
			print(n, m, mat2)
			
		De Otro Modo:
			Escribir "Error."
		Fin Segun
	
FinProceso
