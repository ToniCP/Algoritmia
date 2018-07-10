Proceso DatosReales
	definir datoR como real;
	Dimension datoR[10];
	suma <- 0
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "Escribe el dato ",i,": ";
		Leer  datoR[i];
		
		suma <- suma + datoR[i]
		
	Fin Para
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "El dato ",i," es: ", datoR[i]
	Fin Para
	
	Escribir "La suma de los numeros es: ",suma
	Escribir "El promedio de los numeros es: ",suma/10
	
FinProceso
