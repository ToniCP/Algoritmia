Proceso Primero
	Escribir "Introduzca su peso (en kg): "
	Leer peso
	Escribir "Introduzca su estatura (en Mts): "
	Leer altura
	altura <- altura^2
	IMC <- peso / altura
	
	Si IMC > 40 Entonces
		Escribir "III, Extrema o Morbida."
	Sino
		Si IMC>=30 & IMC<=39.9 Entonces
			Escribir "II."
		Sino
			Si IMC>=27 & IMC<=29.9 Entonces
				Escribir "I."
			Sino
				Si IMC >= 27 Entonces
					Escribir "Obesidad de grado: "
				Sino
					Si IMC>=25 & IMC<=26.9 Entonces
						Escribir "Sobrepeso"
					Sino
						Si IMC>=18 & IMC<=24.9 Entonces
							Escribir "Peso normal."
						Sino
							Escribir "Peso bajo."
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	Escribir "El IMC es de: ", IMC
FinProceso
