Proceso tercero
	Escribir "Introduzca las coordenadas: "
	Dimension equis[3], ye[3]
	Para i<-1 Hasta 3 Hacer
		Escribir "Ingrese la coordenada ",i,":"
		Escribir "Ingrese X: "
		Leer equis[i]
		Escribir "Ingrese Y: "
		Leer ye[i]
	FinPara
	
	AB <- (equis[2]-equis[1])^2 + (ye[2]-ye[1])^2
	AB <- AB^2
	AB <- rc(AB)
	
	BC <- (equis[3]-equis[2])^2 + (ye[3]-ye[2])^2
	BC <- BC^2
	BC <- rc(BC)
	
	CA <- (equis[3]-equis[1])^2 + (ye[3]-ye[1])^2
	CA <- CA^2
	CA <- rc(CA)
	
	Si AB = BC & AB = CA Entonces
		Escribir "Es un triangulo equilatero."
	Sino
		Escribir "No es un triangulo equilatero. "
	Fin Si
FinProceso
