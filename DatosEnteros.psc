Proceso DatosEnteros
	definir datos, indice Como Entero;
	Dimension datos[10];
	Para indice<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "Datos ",indice
		Leer datos[indice]
	Fin Para
	Para indice<-2 Hasta 10 Con Paso 1 Hacer
		Escribir "Dato[",indice,"]: ",datos[indice]
	Fin Para
FinProceso
