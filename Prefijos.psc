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
	Mientras num != trunc(num) | num <= 0 Hacer
		Escribir "Error."
		Escribir arg
		Leer num
	Fin Mientras
	n <- num
FinFuncion

Funcion op <- menu(opc, arg)
	Escribir arg
	Leer opc
	
	Mientras opc < 1 | opc > 2 Hacer
		Escribir "Error."
		Escribir arg
		Leer opc
	Fin Mientras
	
	op <- opc
	
FinFuncion

Funcion prefijo (num, vec1, vec2)
	Para i<-1 Hasta num Con Paso 1 Hacer
		Para j<-1 Hasta i Con Paso 1 Hacer
			vec2[i] <- vec2[i] + vec1[j]
		Fin Para
	Fin Para
FinFuncion

//*************************************************************************************************************************
Proceso Prefijos
	Escribir "Ingrese la cantidad de numeros del vector: "
	Leer num
	arg <- "Ingrese la cantidad de numeros del vector: "
	
	num <- validacion(num, arg)
	
	Dimension N1[num], N2[num]
	
	opc <- menu(opc, "1)Llenado manual. 2)Llenado aleatorio.")
	
	Segun opc Hacer
		1:
			Limpiar Pantalla
			Vector(num, N1)
			
			Escribir "El vector de numeros prefijos es: "
			Escribir ""
			prefijo(num, N1, N2)
			imprimirV(num, N2)
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
			
			Limpiar Pantalla
			Escribir "El vector generado aleatorio es: "
			VectorR(num, N1, a, b)
			imprimirV(num, N1)
			
			Escribir ""
			Escribir "El vector de numeros prefijos es: "
			prefijo(num, N1, N2)
			imprimirV(num, N2)
			
		De Otro Modo:
			Escribir "ERROR."
		Fin Segun
	
FinProceso
