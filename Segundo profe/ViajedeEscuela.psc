Proceso ViajedeEscuela
	Escribir "Ingrese la cantidad de alumnos: "
	Leer alumnos
	
	Si alumnos >= 100 Entonces
		pago<-65
	Sino
		Si alumnos >= 50 Entonces
			pago<-70
		Sino
			Si alumnos >= 30 Entonces
				pago <- 95
			Sino
				pago <- 4000 / alumnos
			Fin Si
		Fin Si
	Fin Si
	
	total <- alumnos * pago
	
	Escribir "El pago por cada alumno es de: $", pago," ,el numero de alumnos son: ",alumnos," ,el total que se debe de pagar a la empresa es de: $",total
	
FinProceso
