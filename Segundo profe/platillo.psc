Proceso platillo
	Escribir "El numero de personas: "
	Leer NP
	
	Si NP > 300 Entonces
		TOT <- 75 * NP
	Sino
		Si NP > 200 Entonces
			TOT <- 85 * NP
		Sino
			TOT <- 95 * NP
		Fin Si
	Fin Si
	
	Escribir "El total a pagar es: $",TOT," ,por la cantidad de personas: ",NP
	
FinProceso
