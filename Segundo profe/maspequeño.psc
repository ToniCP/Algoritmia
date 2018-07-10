Proceso NomEdad
	Dimension Nom[3], Edad[3]
	
	Para i<-1 Hasta 3 Hacer
		Escribir "Ingrese el nombre de la persona",i,": "
		Leer Nom[i]
		Escribir "Ingrese la edad de la persona",i,": "
		Leer Edad[i]
		
	FinPara
	
	Si Edad[1] < Edad[2] Entonces
		acciones_por_verdadero
	Sino
		Si Edad[1] < Edad[2] Entonces
			acciones_por_verdadero
		Sino
			Si Edad[2] < Edad[3] Entonces
				acciones_por_verdadero
			Sino
				acciones_por_falso
			Fin Si
		Fin Si
	Fin Si
	
FinProceso
