Proceso MCD
	Dimension n[3]
	
	Para i<-1 Hasta 3 Hacer
		Escribir "Ingrese un numero entero positivo: "
		Leer n[i]
		
		vald<-trunc(n[i])
		
		Mientras n[i] < 1 | n[i] <> vald Hacer
			Escribir "Error, el numero que dio no es positivo o no es entero."
			Escribir "Ingrese un numero entero positivo: "
			Leer n[i]
			vald<-trunc(n[i])
		Fin Mientras
	Fin Para
	
	Si n[1] < n[2] & n[1] < n[3] Entonces
		val <- n[1]
	Sino
		Si n[2] < n[3] Entonces
			val <- n[2]
		Sino
			val <- n[3]
		Fin Si
	Fin Si
	
	may<-0
	Para i<-1 Hasta val Hacer
		Si n[1]/i = n[2]/i & n[1]/i = n[3]/i Entonces
			Si may > i Entonces
				may <- may
			Sino
				may <- i
			Fin Si
		Sino
			Escribir "no es posible"
		Fin Si
	Fin Para
	Escribir may 
	
FinProceso
