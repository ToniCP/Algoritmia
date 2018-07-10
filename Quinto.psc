Proceso Quinto
	//http://cienciageografica.carpetapedagogica.com/2014/03/las-dimensiones-de-la-tierra.html
	//Diametro Ecuatorial 12 756 Kilómetros
	//Circunferencia Ecuatorial 40 076 Kilómetros
	Escribir "Ingrese la velocidad del avion (en Km/h): "
	Leer velocidad
	
	kmEc <- 40076
	
	tiempo <- kmEc / velocidad
	tiempo <- tiempo / 24
	tiempoT <- trunc(tiempo)
	tiempo <- (tiempo - tiempoT) * 10000
	tiempo <- trunc(tiempo)
	
	Escribir "El tiempo que le toma a el avion dar una vuelta sobre el Ecuador es de: ",tiempoT," dias y de: ", tiempo,"/10000 horas aproximadamente."
	
FinProceso
