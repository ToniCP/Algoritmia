Proceso InvertirString
	Definir String, SubString, inversoString Como Caracter
	Definir numS, i Como Entero
	Escribir "Introduce tu palabra: "
	Leer String
	numS <- Longitud(String)
	
	inversoString <- ""
	
	Para i<-numS Hasta 1 Con Paso -1 Hacer
		SubString <- subcadena(String, i, i)
		inversoString <- concatenar(inversoString, SubString)
	Fin Para
	
	Escribir inversoString
	
FinProceso
