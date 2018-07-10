Proceso descuento
	Escribir "Ingrese el costo del articulo: "
	Leer costo
	
	Si costo >= 200 Entonces
		des <- costo * 0.15
	Sino
		Si costo > 100 & costo < 200  Entonces
			des <- costo * 0.12
		Sino
			des <- costo * 0.10
		Fin Si
	Fin Si
	
	costo <- costo - des
	
	Escribir "El costo del articulo es de: ",costo," ,se le desconto: ",des
	
FinProceso
