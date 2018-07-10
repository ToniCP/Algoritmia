Proceso cuarto
	Escribir "Introduzca las coordenadas: "
	Dimension equis[4], ye[4]
	Para i<-1 Hasta 4 Hacer
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
	
	CD <- (equis[4]-equis[3])^2 + (ye[4]-ye[3])^2
	CD <- CD^2
	CD <- rc(CD)
	
	DA <- (equis[4]-equis[1])^2 + (ye[4]-ye[1])^2
	DA <- DA^2
	DA <- rc(DA)
	
	PAB <- (ye[2]-ye[1]) / (equis[2]-equis[1])
	
	PBC <- (ye[3]-ye[2]) / (equis[3]-equis[2])
	
	PAB <- PAB * PBC
	
	Si AB = BC & AB = CD & AB = DA Entonces
		Si PAB = -1 Entonces
			Escribir "Es un cuadrado."
		Sino
			Escribir "No es un cuadrado. "
		Fin Si
	Sino
		Escribir "No es un cuadrado. "
	Fin Si
FinProceso
