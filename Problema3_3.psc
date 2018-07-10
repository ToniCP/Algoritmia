Funcion discosH(mat, num)
	Para i<-1 Hasta num Con Paso 1 Hacer
		Para j<-1 Hasta 3 Con Paso 1 Hacer
			mat[i,1] <- i
		Fin Para
	Fin Para
FinFuncion

Funcion print(mat, num)
	Para i<-1 Hasta num Con Paso 1 Hacer
		Para j<-1 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltarmat[i,j]," "
		Fin Para
		Escribir ""
	Fin Para
FinFuncion

Funcion movH()
	
FinFuncion

Proceso Problema3
	Escribir "Introduce el numero de discos: "
	Leer discos
	
	Mientras discos != trunc(discos) | discos < 1 Hacer
		Escribir "Número no válido."
		Leer discos
	Fin Mientras
	Dimension NumDisc[discos, 3]
	
	discosH(NumDisc, discos)
	print(NumDisc, discos)
	
FinProceso
