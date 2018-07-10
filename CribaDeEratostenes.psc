Funcion n<-validacion(num, arg)
	Mientras num != trunc(num) | num < 0 Hacer
		Escribir "Error."
		Escribir arg
		Leer num
	Fin Mientras
	n <- num
FinFuncion

Funcion Vector(num, vec)
	Definir i como entero
	Para i<-2 Hasta num Con Paso 1 Hacer
		vec[i] <- 1
	Fin Para
FinFuncion

Proceso CribaDeEratostenes
	Escribir "Ingresa la extencion del vector: "
	Leer num
	arg <- "Ingresa la extencion del vector: "
	
	num <- validacion(num, arg)
	
	Dimension N[num]
	
	vector(num, N)
	
	Para i <- 2 Hasta num Con Paso 1 Hacer
		Si N[i] = 1 Entonces
			Para j<-i*i Hasta num Con Paso i Hacer
				N[j] <- 0
			Fin Para
		Fin Si
	Fin Para
	
	num <- redon(rc(num))
	Escribir "La Criba termina después de eliminar los múltiplos del número primo más grande menor o igual a RaizCuadrada(N)."
	Escribir "Si la RaizCuadrada(N) da numero decimal, se tomara el numero mas cercano al resultado."
	
	Para i<-2 Hasta num Con Paso 1 Hacer
		Si N[i] = 1 Entonces
			Escribir "El numero ",i," es primo."
		Fin Si
	Fin Para
	
FinProceso
