Proceso EncSubcadena
	Escribir "Introduce la cadena: "
	Leer cad
	numcad <- Longitud(cad)
	Escribir "Introcue la subcadena: "
	Leer sub
	numsub <- Longitud(sub)
	
	Mientras numcad < numsub Hacer
		Escribir "La subcadena es mayor. Introduce una subcadena mas pequeña."
		Escribir "Introcue la subcadena: "
		Leer sub
		numsub <- Longitud(sub)
	Fin Mientras
	
	verif <- 0
	aux <- 0
	auxj <- 1
	
	Para i<-1 Hasta numsub Con Paso 1 Hacer
		subdsub <- Subcadena(sub, i , i)
		Para j<-auxj Hasta numcad Con Paso 1 Hacer
			subdcad <- Subcadena(cad, j , j)
			
			Si verif = 0 Entonces
				Si subdsub = subdcad Entonces
					verif <- verif + 1
					auxj <- auxj + j
					j <- numcad
					aux <- auxj - 1
				Sino
					verif <- 0
					aux <- 0
				Fin Si
			Sino
				Si subdsub = subdcad Entonces
					verif <- verif + 1
					auxj <- auxj + 1
					j <- numcad
				Sino
					verif <- 0
				Fin Si
			Fin Si
			
		Fin Para
	Fin Para
	
	Si numsub = verif Entonces
		Escribir "La subcadena esta dentro de la cadena."
		Escribir "Y empieza desde la letra numero: ", aux
	Sino
		Escribir "La subcadena no esta dentro de la cadena."
		Escribir "Por lo tanto no comienza en ninguna letra la subcadena."
	Fin Si
	
FinProceso
