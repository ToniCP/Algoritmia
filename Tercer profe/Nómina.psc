Funcion Vector(vec)
	Definir i como entero
	Para i<-1 Hasta 127 Con Paso 1 Hacer
		vec[i] <- Aleatorio(3200, 8750)
	Fin Para
FinFuncion

Funcion imprimirV(vec)
	Definir i como entero
	Para i<-1 Hasta 127 Con Paso 1 Hacer
		Escribir "El pago del empleado ",i," es: ", vec[i]
	Fin Para
FinFuncion

Funcion n <- nomina(vec)
	Definir i, n como entero
	n<-0
	Para i<-1 Hasta 127 Con Paso 1 Hacer
		n <- n + vec[i]
	Fin Para
FinFuncion

Funcion pago(vec)
	Definir i como entero
	A500 <- 0
	A200 <- 0
	A100 <- 0
	A50 <- 0
	A20 <- 0
	A10 <- 0
	A5 <- 0
	A2 <- 0
	A1 <- 0
	Para i<-1 Hasta 127 Con Paso 1 Hacer
		C500 <- 0
		C200 <- 0
		C100 <- 0
		C50 <- 0
		C20 <- 0
		C10 <- 0
		C5 <- 0
		C2 <- 0
		C1 <- 0
		Escribir "El pago del empleado ",i," que es de : $",vec[i]," va a estar dado por: "
		Mientras vec[i] != 0 Hacer
			Si vec[i] >= 500 Entonces
				vec[i] <- vec[i] - 500
				C500 <- C500 + 1
				A500 <- A500 + 1
			Sino
				Si vec[i] >= 200 Entonces
					vec[i] <- vec[i] - 200
					C200 <- C200 + 1
					A200 <- A200 + 1
				Sino
					Si vec[i] >= 100 Entonces
						vec[i] <- vec[i] - 100
						C100 <- C100 + 1
						A100 <- A100 + 1
					Sino
						Si vec[i] >= 50 Entonces
							vec[i] <- vec[i] - 50
							C50 <- C50 + 1
							A50 <- A50 + 1
						Sino
							Si vec[i] >= 20 Entonces
								vec[i] <- vec[i] - 20
								C20 <- C20 + 1
								A20 <- A20 + 1
							Sino
								Si vec[i] >= 10 Entonces
									vec[i] <- vec[i] - 10
									C10 <- C10 + 1
									A10 <- A10 + 1
								Sino
									Si vec[i] >= 5 Entonces
										vec[i] <- vec[i] - 5
										C5 <- C5 + 1
										A5 <- A5 + 1
									Sino
										Si vec[i] >= 2 Entonces
											vec[i] <- vec[i] - 2
											C2 <- C2 + 1
											A2 <- A2 + 1
										Sino
											vec[i] <- vec[i] - 1
											C1 <- C1 + 1
											A1 <- A1 + 1
										Fin Si
									Fin Si
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Mientras
		Escribir "Billetes de 500: $",C500
		Escribir "Billetes de 200: $",C200
		Escribir "Billetes de 100: $",C100
		Escribir "Billetes de 50: $",C50
		Escribir "Billetes de 20: $",C20
		Escribir "Monedas de 10: $",C10
		Escribir "Monedas de 5: $",C5
		Escribir "Monedas de 2: $",C2
		Escribir "Monedas de 1: $",C1
	Fin Para
	Escribir "********************************************"
	Escribir "Billetes totales de 500: $",A500
	Escribir "Billetes totales de 200: $",A200
	Escribir "Billetes totales de 100: $",A100
	Escribir "Billetes totales de 50: $",A50
	Escribir "Billetes totales de 20: $",A20
	Escribir "Monedas totales de 10: $",A10
	Escribir "Monedas totales de 5: $",A5
	Escribir "Monedas totales de 2: $",A2
	Escribir "Monedas totales de 1: $",A1
	Escribir "Comprobacion de la nomina: $",A500*500 + A200*200 + A100*100 + A50*50 + A20*20 + A10*10 + A5*5 + A2*2 + A1*1
FinFuncion

Proceso Nómina
	Dimension N[127]
	
	Vector(N)
	//imprimirV(N)
	//La nomina la va a mostrar al principio, y de ultimo se va a mostrar comprobado
	Escribir "La nómina es de: ",nomina(N)
	pago(N)
	
FinProceso
