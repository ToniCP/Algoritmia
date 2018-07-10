Proceso figuras
	escribir "Introduce el lado del cuadrado: "
	leer ladoC
	Dimension a[ladoC, ladoc]
	
	Para i<-1 Hasta ladoC con paso 1 Hacer
		Para j<-1 Hasta ladoC con paso 1 Hacer
			a[1,j] <- "*"
			a[i,1] <- "*"
			a[i,ladoC] <- "*"
			a[ladoC,j] <- "*"
		Fin Para
	Fin Para
	
	Para i<-1 Hasta ladoC con paso 1 Hacer
		Para j<-1 Hasta ladoC con paso 1 Hacer
			Si i = 1 & j = j  Entonces
				Escribir Sin Saltar a[i,j]
			Sino
				Si i = i & j = 1 Entonces
					Escribir Sin Saltar a[i,1]
				Sino
					Si i = i & j = ladoC Entonces
						Escribir Sin Saltar a[i,ladoC]
					Sino
						Si i = ladoC & j = j Entonces
							Escribir Sin Saltar a[ladoC,j]
						Sino
							escribir sin saltar " "
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Para
		Escribir ""
	Fin Para
	
	
FinProceso
