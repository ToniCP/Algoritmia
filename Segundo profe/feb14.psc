Proceso Febreo14
	Escribir "Escribe su presupuesto: "
	Leer monto
	
	Mientras monto > 0 Hacer
		Si monto >= 251 Entonces
			Escribir "Puedes comprar un anillo."
			monto <- monto - 251
		Sino
		Fin Si
		Si monto >= 101 | monto <= 250 Entonces
			Escribir "Puedes comprar flores."
			monto <- monto - 101
		Sino
		Fin Si
		Si monto >= 11 | monto <= 100 Entonces
			Escribir "Puedes comprar chocolates."
			monto <- monto - 11
		Sino
			Escribir "Puedes comprar tarjeta."
			monto <- monto - 10
		Fin Si
	Fin Mientras
	
FinProceso
