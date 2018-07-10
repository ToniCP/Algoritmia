Proceso Histograma
	Dimension poblacion[1000], histo[1000]
	limite <- 1000
	//Escribir "Aleatorio: "
	Para i<-1 Hasta limite Con Paso 1 Hacer
		aleat <- Aleatorio(17, 30)
		poblacion[i] <- aleat
		//Escribir Sin Saltar poblacion[i],", "
	Fin Para
	
	Para i <- 1 Hasta limite - 1 Hacer
		Pmenor <- i
		Para j <- i+1 Hasta limite Hacer
			Si poblacion[j] < poblacion[Pmenor] Entonces
				Pmenor<-j
			FinSi
		FinPara
		aux <- poblacion[i]
		poblacion[i] <- poblacion[Pmenor]
		poblacion[Pmenor]<-aux
	FinPara 
	
//	Escribir ""
//	Escribir "Ordenado: "
//	Para i<-1 Hasta limite Con Paso 1 Hacer
//		Escribir Sin Saltar poblacion[i],", "
//	Fin Para
	
	cont <- 0
	acum <- 0
	j <- 1
	sumador <- 17
	Para i<-1 Hasta limite Con Paso 1 Hacer
		Si poblacion[i] = sumador Entonces
			cont <- cont + 1
		Sino
			histo[j] <- cont
			acum <- acum + cont
			sumador <- sumador + 1
			cont <- 1
			j <- j +1
		Fin Si
	Fin Para
	acum <- 1000 - acum
	histo[30] <- acum
	
	cont <- 0
	acum <- 0
	aux <- 0
	comp <- 0
	Escribir "Histograma: "
	Para i<-1 Hasta limite Con Paso 1 Hacer
		cont <- cont + histo[i]
		Si histo[i] > 0 Entonces
			Si i+16 <= 30 Entonces
				Escribir "Los numeros repetidos de ",i+16," es: ",histo[i]
				Si comp < histo[i] Entonces
					comp <- histo[i]
					aux <- i + 16
				Fin Si
				acum <- acum + (histo[i] * (i+16))
			Sino
				Escribir "Los numeros repetidos de 30 es: ",histo[i]
				Si comp < histo[i] Entonces
					comp <- histo[i]
					aux <- 30
				Fin Si
				acum <- acum + (histo[i] * 30)
			Fin Si
		Fin Si
	Fin Para
	Escribir ""
	Escribir "La media es de: ",acum/1000," (Del intervalo de 17 - 30)."
	Escribir "La mediana es de: ",(poblacion[50]+poblacion[51])/2
	Escribir "La moda es de: ",aux," con la cantidad de repeticiones de: ",comp
	Escribir "Valores totales: ", cont
	
FinProceso
