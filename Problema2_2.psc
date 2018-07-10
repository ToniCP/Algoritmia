//Problema 2: Números Romanos a decimales y decimales a romanos
Funcion DaR(num)//"DaR" Decimal a Romano; en esta entrego el valor del numero decimal a su parte romana
	//utilizo 4 vectores constantes que alacenan las expresiones numericas de los numeros romanos
	Dimension uni[10], dec[10], cen[10], mil[5]
	//estan separados por unidad, decena, centena y millar
	uni[1] <- "I"; uni[2] <- "II"; uni[3] <- "III"; uni[4] <- "IV"; uni[5] <- "V"; uni[6] <- "VI"; uni[7] <- "VII"; uni[8] <- "VIII"; uni[9] <- "IX"; uni[10] <- ""
	dec[1] <- "X"; dec[2] <- "XX"; dec[3] <- "XXX"; dec[4] <- "XL"; dec[5] <- "L"; dec[6] <- "LX"; dec[7] <- "LXX"; dec[8] <- "LXXX"; dec[9] <- "XC"; dec[10] <- ""
	cen[1] <- "C"; cen[2] <- "CC"; cen[3] <- "CCC"; cen[4] <- "CD"; cen[5] <- "D"; cen[6] <- "DC"; cen[7] <- "DCC"; cen[8] <- "DCCC"; cen[9] <- "CM"; cen[10] <- ""
	mil[1] <- "M"; mil[2] <- "MM"; mil[3] <- "MMM"; mil[4]<- "MMMM"; mil[5] <- ""
	
	//dado el numero entregado voy hacuendo la conversion, si el valor da 0 hago que pase directamente a la ultima cantidad para que asi
	//entregue un valor "nulo"
	unidad <- num mod 10
	Si unidad = 0 Entonces
		unidad <- 10
	Fin Si
	decena <- trunc(num/10) mod 10
	Si decena = 0 Entonces
		decena <- 10
	Fin Si
	centena <- trunc(num/100) mod 10
	Si centena = 0 Entonces
		centena <- 10
	Fin Si
	millar <- trunc(num/1000) mod 10
	Si millar = 0 Entonces
		millar <- 10
	Fin Si
	//entrego la expresion del numero romano
	Escribir "Equivale al número romano: ",mil[millar],cen[centena],dec[decena],uni[unidad]
	
FinFuncion

Funcion RaD(num, cad, vec)//"RaD" Romano a decimal; aqui, es dada una expresion numerida romana, entrego su valor correspondiente a decimal
	//dada la cadena voy a sacar sus subcadenas y almacenarlo en un vector para poder usarlo mejor
	Para i<-1 Hasta num Con Paso 1 Hacer
		roma <- Subcadena(cad, i, i)
		vec[i] <- roma
	Fin Para
	acum <- acum + 0
	//aqui empiezo a hacer las comparaciones de cada posicion del vector, si coinciden con alguna de las expresiones se acumula la cantidad correspondiente
	//esta contenplado los casos especiales
	Para i<-1 Hasta num Con Paso 1 Hacer
		Si vec[i] = "I" Entonces
			
			Si i+1 <= num Entonces
				Si vec[i+1] = "X" Entonces
					acum <- acum - 1
				Sino
					Si vec[i+1] = "V" Entonces
						acum <- acum - 1
					Sino
						acum <- acum + 1
					Fin Si
				Fin Si
			Sino
				acum <- acum + 1
			Fin Si
		Sino
			Si vec[i] = "V" Entonces
				acum <- acum + 5
			Sino
				Si vec[i] = "X" Entonces
					
					Si i+1 <= num Entonces
						Si vec[i+1] = "C" Entonces
							acum <- acum - 10
						Sino
							Si vec[i+1] = "L" Entonces
								acum <- acum - 10
							Sino
								acum <- acum + 10
							Fin Si
						Fin Si
					Sino
						acum <- acum + 10
					Fin Si
				Sino
					Si vec[i] = "L"  Entonces
						acum <- acum + 50
					Sino
						Si vec[i] = "C" Entonces
							
							Si i+1 <= num Entonces
								Si vec[i+1] = "M" Entonces
									acum <- acum - 100
								Sino
									Si vec[i+1] = "D" Entonces
										acum <- acum - 100
									Sino
										acum <- acum + 100
									Fin Si
								Fin Si
							Sino
								acum <- acum + 100
							Fin Si
						Sino
							Si vec[i] = "D" Entonces
								acum <- acum + 500
							Sino
								Si vec[i] = "M" Entonces
									acum <- acum + 1000
								Sino
									//si no coinciden con ninguno le marca error, seguido del despliegue de la posicion donde se 
									//encontro el error, dambien le saca del bucle
									Escribir "Error, caracter no identificado, verificar ",cad," en la posicion ",i
									i = num
									band <- 1
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Para
	//identificador si todo salio bien se va a desplegar la acumulacion de todas las expresiones
	Si band = 0 Entonces
		Escribir "Equivale al número decimal: ",acum
	Fin Si
	
FinFuncion
//funcion princial, aqui se hace todo los llamados y validaciones para determinar los numeros correspondientes
Proceso Problema2
	Escribir "1) Decimal a Romano."
	Escribir "2) Romano a Decimal."
	Escribir "3) Salir."
	Leer opc
	
	Mientras opc != trunc(opc) | opc < 1 | opc > 3 Hacer
		Escribir "Opción inválida."
		Leer opc
	Fin Mientras
	
	Segun opc Hacer
		1:
			Escribir "Ingrese el número decimal:"
			Leer dr
			
			Mientras dr != trunc(dr) | dr < 1 | dr > 4000 Hacer
				Escribir "Cantidad no valida."
				Leer dr
			Fin Mientras
			
			DaR(dr)
		2:
			Escribir "Ingrese el número romano:"
			Leer rd
			
			long <- Longitud(rd)
			dimension vecrom[long]
			
			RaD(long, rd, vecrom)
		Fin Segun
	
FinProceso
