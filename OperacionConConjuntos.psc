Funcion interseccion(VecA, N, VecB, M, VecAB)
	Definir i, j como enteros
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		Para j<-1 Hasta M Con Paso 1 Hacer
			Si VecA[i] = VecB[j] Entonces
				VecAB[i] <- VecA[i]
			Fin Si
		Fin Para
	Fin Para
	
FinFuncion

Funcion union(VecA, N, VecB, M, VecAB)
	definir i, j, aux, cont como enteros
	aux <- 1
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		VecAB[i] <- VecA[i]
	Fin Para
	
	Para i<-1 Hasta M Con Paso 1 Hacer
		VecAB[N+aux] <- VecB[i]
		aux <- aux + 1
	Fin Para
	
	Dimension Vaux[N+M], Vfinal[N+M]
	j <- 1
	z <- 1
	Para i<-1 Hasta N+M Con Paso 1 Hacer
		cont <- 0
		num <- VecAB[i]
		Vaux[j] = num;
		j <- j +1
		Para k<-1 Hasta N+M Con Paso 1 Hacer
			Si Vaux[k] = num Entonces
				cont <- cont + 1
			Fin Si
		Fin Para
		Si cont = 1 Entonces
			Vfinal[z] <- num
			z <- z + 1
		Fin Si
	Fin Para
	
	Para i<-1 Hasta N+M Con Paso 1 Hacer
		VecAB[i] <- Vfinal[i]
	Fin Para
	
FinFuncion

Funcion Vector(num, vec)
	Definir i como entero
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir "Ingresa ",i,": "
		Leer vec[i]
	Fin Para
FinFuncion

Proceso OperacionConConjuntos
	Escribir "Dimensión del vector A: "
	Leer A
	Escribir "Dimensión del vector B: "
	Leer B
	
	Si A > B Entonces
		Dimension VecIN[B]
		j <- B
	Sino
		Dimension VecIN[A]
		j <- A
	Fin Si
	
	Dimension VecA[A], VecB[B]
	Dimension VecUN[A+B]
	
	Escribir "Ingresa los números del vector A: "
	Vector(A, VecA)
	Escribir ""
	Escribir "Ingresa los números del vector B: "
	Vector(B, VecB)
	
	interseccion(VecA, A, VecB, B, VecIN)
	Escribir "La intersección de A entre B es: "
	Para i<-1 Hasta j Con Paso 1 Hacer
		Si VecIN[i] != real Entonces
			Escribir VecIN[i]
		Fin Si
	Fin Para
	Escribir ""
	
	union(VecA, A, VecB, B, VecUN)
	Escribir "La unión de A entre B es: "
	Para i<-1 Hasta A+B Con Paso 1 Hacer
		Escribir VecUN[i]
	Fin Para
	
FinProceso
