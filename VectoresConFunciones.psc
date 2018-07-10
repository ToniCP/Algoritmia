Funcion Vector(num, vec)
	Definir i como entero
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir "Ingresa ",i,": "
		Leer vec[i]
	Fin Para
FinFuncion

Funcion VectorR(num, vec, a, b)
	Definir i como entero
	Para i<-1 Hasta num Con Paso 1 Hacer
		vec[i] <- Aleatorio(a, b)
	Fin Para
FinFuncion 

Funcion imprimirV(num, vec)
	Definir i como entero
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir "El valor ",i," es: ", vec[i]
	Fin Para
FinFuncion

Funcion n<-validacion(num, arg)
	Mientras num != trunc(num) | num < 0 Hacer
		Escribir "Error."
		Escribir arg
		Leer num
	Fin Mientras
	n <- num
FinFuncion

Funcion s <- suma(num, vec)
	Definir i, s como entero
	s<-0
	Para i<-1 Hasta num Con Paso 1 Hacer
		s <- s + vec[i]
	Fin Para
FinFuncion

Funcion op <- menu(opc, arg)
	Escribir arg
	
	Mientras opc < 1 | opc > 2 Hacer
		Escribir "Error."
		Escribir arg
		Leer opc
	Fin Mientras
	
	op <- opc
	
FinFuncion

Proceso VectoresConFunciones
	Escribir "Ingrese la dimension del vector"
	Leer num
	arg <- "Ingrese la dimension del vector"
	
	num <- validacion(num, arg)
	
	Dimension N[num]
	
	Escribir "1)Llenado manual. 2)Llenado aleatorio."
	Leer opc
	arg2 <- "1)Llenado manual. 2)Llenado aleatorio."
	
	opc <- menu(opc, arg2)
	
	Segun opc Hacer
		1:
			Vector(num, N)
			imprimirV(num, N)
			Escribir "La suma del arreglo es: ",suma(num, N)
		2:
			Escribir "Numero de comienzo del aleatorio: "
			Leer a
			
			Mientras a != trunc(a) Hacer
				Escribir "Error."
				Escribir "Numero de comienzo del aleatorio: "
				Leer a
			Fin Mientras
			
			Escribir "Numero final del aleatorio: "
			leer b
			
			Mientras b != trunc(b) Hacer
				Escribir "Error."
				Escribir "Numero final del aleatorio: "
				Leer b
			Fin Mientras
			
			VectorR(num, N, a, b)
			imprimirV(num, N)
			Escribir "La suma del arreglo es: ",suma(num, N)
		De Otro Modo:
			Escribir "ERROR."
		Fin Segun
	
FinProceso
