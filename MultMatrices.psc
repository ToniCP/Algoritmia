Funcion matriz(n, m, mat, num)
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta m Con Paso 1 Hacer
			Si num = 1 Entonces
				Escribir "Introduce el numero de la poscion: ",i,", ",j
				Leer mat[i, j]
			Sino
				mat[i, j] <- 0
			Fin Si
		Fin Para
	Fin Para
FinFuncion

Funcion matrizR(n, m, mat, num, a, b)
	Definir i como entero
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta m Con Paso 1 Hacer
			Si num = 1 Entonces
				alet <- Aleatorio(a, b)
				mat[i, j] <- alet
			Sino
				mat[i, j] <- 0
			Fin Si
		Fin Para
	Fin Para
FinFuncion

Funcion n <- validacion(num)
	Mientras num != trunc(num) | num < 1 Hacer
		Escribir "Error."
	Fin Mientras
	n <- num
FinFuncion

Funcion print(n, m, mat)
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta m Con Paso 1 Hacer
			Escribir Sin Saltarmat[i, j]," "
		Fin Para
		Escribir ""
	Fin Para
FinFuncion

Funcion multiplicacion(m, n, p, mat1, mat2, mat3)
	Para i<-1 Hasta m Con Paso 1 Hacer
		c <- 1
		Mientras c <= p Hacer
			suma <- 0
			Para j<-1 Hasta n Con Paso 1 Hacer
				suma <- suma + mat1[i, j] * mat2[j, c]
			Fin Para
			mat3[i, c] <- suma
			c <- c + 1
		Fin Mientras
	Fin Para
FinFuncion

Proceso MultMatrices
	Escribir "Para matriz A:"
	Escribir "Introduce la dimension de las filas:"
	Leer m
	m <- validacion(m)
	Escribir "Introduce la dimension de las columnas:"
	Leer n
	n <- validacion(n)
	Escribir "Para matriz B:"
	Escribir "Introduce la dimension de las columnas:"
	Leer p
	p <- validacion(p)
	
	Escribir "1) Llenado manual. 2) Llenado automatico."
	Leer opc
	
	Mientras opc != trunc(opc) | opc < 0 | opc > 2 Hacer
		Escribir "Valor invalido."
		Escribir "1) Llenado manual. 2) Llenado automatico."
		Leer opc
	Fin Mientras
	
	Segun opc Hacer
		1:
			Dimension mat1[m, n], mat2[n, p], mat3[m, p]
			matriz(m, n, mat1, 1)
			matriz(n, p, mat2, 1)
			matriz(m, p, mat3, 0)
			
			Limpiar Pantalla
			multiplicacion(m, n, p, mat1, mat2, mat3)
			Escribir "La multiplicacion de la matriz A por la matriz B es:"
			print(m, p, mat3)
			Escribir "La matriz A es:"
			print(m, n, mat1)
			Escribir "La matriz B es:"
			print(n, p, mat2)
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
			
			Dimension mat1[m, n], mat2[n, p], mat3[m, p]
			matrizR(m, n, mat1, 1, a, b)
			matrizR(n, p, mat2, 1, a, b)
			matrizR(m, p, mat3, 0, a, b)
			
			multiplicacion(m, n, p, mat1, mat2, mat3)
			Escribir "La multiplicacion de la matriz A por la matriz B es:"
			print(m, p, mat3)
			Escribir "La matriz A es:"
			print(m, n, mat1)
			Escribir "La matriz B es:"
			print(n, p, mat2)
			
		De Otro Modo:
			Escribir "Error."
		Fin Segun
FinProceso
