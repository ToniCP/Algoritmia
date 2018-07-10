Funcion matriz(mat)
	
	Definir i, j como entero
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Para j<-1 Hasta 6 Con Paso 1 Hacer
			
			horaE <- Aleatorio(8,9)
			horaS <- Aleatorio(16,17)
			minE <- Aleatorio(0,59)
			minS <- Aleatorio(0,59)
			
			mat[i,j,1] <- horaE
			mat[i,j,2] <- minE
			mat[i,j,3] <- horaS
			mat[i,j,4] <- minS
			
			minTE <- horaE*60 + minE
			minTS <- horaS*60 + minS
			
			mat[i,j,5] <- minTE
			mat[i,j,6] <- minTS
			
			minT <- minTS - minTE
			
			mat[i,j,7] <- minT
			
			horaTT <- trunc(minT/60)
			
			mat[i,j,8] <- horaTT
			
			minTT <- mint mod 60
			
			mat[i,j,9] <- minTT
			
		Fin Para
	Fin Para
FinFuncion

Funcion printHT(mat)
	
	Definir i, j como entero
	
	Escribir "Selecciona la opcion correspondiente."
	Escribir "1) Lectura de las horas trabajadas por los empleados en la semana."
	Escribir "2) Lectura de los empleados que trabajaron menos de 48H semanales."
	Escribir "3) Lectura de las horas/hombre trabajadas por cada día."
	Escribir "4) Lectura del registro de ingreso de las horas de entrada y salida con el tiempo total trabajado por día."
	Escribir "5) Todas las anteriores."
	Escribir "6) Salir."
	Leer opc
	
	Mientras opc != trunc(opc) | opc < 0 | opc > 6 Hacer
		Escribir "Número no válido."
		Leer opc
	Fin Mientras
	Limpiar Pantalla
	
	Mientras opc != 6 Hacer
		Segun opc Hacer
			1:
				
				Para i<-1 Hasta 10 Con Paso 1 Hacer
					cont <- 0
					Para j<-1 Hasta 6 Con Paso 1 Hacer
						
						cont <- cont + mat[i,j,7]
						
					Fin Para
					
					horas <- trunc(cont/60)
					minutos <- cont mod 60
					
					Si minutos < 10 Entonces
						
						Escribir "El empleado: ",i," trabajó ",horas,":0",minutos," horas en toda la semana"
						
					Sino
						
						Escribir "El empleado: ",i," trabajó ",horas,":",minutos," horas en toda la semana"
						
					Fin Si
					
				Fin Para
				
			2:
				
				Para i<-1 Hasta 10 Con Paso 1 Hacer
					cont <- 0
					Para j<-1 Hasta 6 Con Paso 1 Hacer
						
						cont <- cont + mat[i,j,7]
						
					Fin Para
					
					Escribir "El empleado: ",i,"."
					Si cont < 2880 Entonces
						Escribir "Trabajó menos de 48H semanales."
					Sino
						Si cont > 2880 Entonces
							Escribir "Trabajó mas de 48H semanales."
						Sino
							Escribir "Trabajó 48H semanales."
						Fin Si
					Fin Si
					
				Fin Para
				
			3:
				
				Para i<-1 Hasta 6 Con Paso 1 Hacer
					cont <- 0
					Para j<-1 Hasta 10 Con Paso 1 Hacer
						cont <- cont + mat[j,i,7]
					Fin Para
					
					horas <- trunc(cont/60)
					minutos <- cont mod 60
					
					Si minutos < 10 Entonces
						
						Escribir "Las horas/hombre trabajadas en el día ",i,"."
						Escribir "Es de: ",horas,":0",minutos," horas."
						
					Sino
						
						Escribir "Las horas/hombre trabajadas en el día ",i,"."
						Escribir "Es de: ",horas,":",minutos," horas."
						
					Fin Si
				Fin Para
				
			4:
				
				Para i<-1 Hasta 10 Con Paso 1 Hacer
					Escribir "Empleado: ",i
					Escribir "----------------------------------------------"
					Para j<-1 Hasta 6 Con Paso 1 Hacer
						Escribir "Día: ",j
						Escribir "**********************************************"
						
						Si mat[i,j,2] < 10 Entonces
							Escribir "Hora de entrada: ",mat[i,j,1],":0",mat[i,j,2]
						Sino
							Escribir "Hora de entrada: ",mat[i,j,1],":",mat[i,j,2]
						Fin Si
						
						Si mat[i,j,4] < 10 Entonces
							Escribir "Hora de salida: ",mat[i,j,3],":0",mat[i,j,4]
						Sino
							Escribir "Hora de salida: ",mat[i,j,3],":",mat[i,j,4]
						Fin Si
						
						Si mat[i,j,9] < 10 Entonces
							Escribir "Tiempo trabajado en el día: ",mat[i,j,8],":0",mat[i,j,9]," horas."
						Sino
							Escribir "Tiempo trabajado en el día: ",mat[i,j,8],":",mat[i,j,9]," horas."
						Fin Si
						
						Escribir "**********************************************"
					Fin Para
					
					Escribir "----------------------------------------------"
				Fin Para
				
			5:
				
				Para i<-1 Hasta 10 Con Paso 1 Hacer
					Escribir "Empleado: ",i
					Escribir "----------------------------------------------"
					cont <- 0
					Para j<-1 Hasta 6 Con Paso 1 Hacer
						Escribir "Día: ",j
						Escribir "**********************************************"
						
						Si mat[i,j,2] < 10 Entonces
							Escribir "Hora de entrada: ",mat[i,j,1],":0",mat[i,j,2]
						Sino
							Escribir "Hora de entrada: ",mat[i,j,1],":",mat[i,j,2]
						Fin Si
						
						Si mat[i,j,4] < 10 Entonces
							Escribir "Hora de salida: ",mat[i,j,3],":0",mat[i,j,4]
						Sino
							Escribir "Hora de salida: ",mat[i,j,3],":",mat[i,j,4]
						Fin Si
						
						Si mat[i,j,9] < 10 Entonces
							Escribir "Tiempo trabajado en el día: ",mat[i,j,8],":0",mat[i,j,9]," horas."
						Sino
							Escribir "Tiempo trabajado en el día: ",mat[i,j,8],":",mat[i,j,9]," horas."
						Fin Si
						
						cont <- cont + mat[i,j,7]
						
						Escribir "**********************************************"
					Fin Para
					
					horas <- trunc(cont/60)
					minutos <- cont mod 60
					
					Si minutos < 10 Entonces
						
						Escribir "El empleado: ",i," trabajó ",horas,":0",minutos," horas en toda la semana"
						
					Sino
						
						Escribir "El empleado: ",i," trabajó ",horas,":",minutos," horas en toda la semana"
						
					Fin Si
					
					Si cont < 2880 Entonces
						Escribir "Por lo tanto, el empleado trabajó menos de 48H semanales."
					Fin Si
					
					Escribir "----------------------------------------------"
				Fin Para
				
				Para i<-1 Hasta 6 Con Paso 1 Hacer
					cont <- 0
					Para j<-1 Hasta 10 Con Paso 1 Hacer
						cont <- cont + mat[j,i,7]
					Fin Para
					
					horas <- trunc(cont/60)
					minutos <- cont mod 60
					
					Si minutos < 10 Entonces
						
						Escribir "Las horas/hombre trabajadas en el día ",i,"."
						Escribir "Es de: ",horas,":0",minutos," horas."
						
					Sino
						
						Escribir "Las horas/hombre trabajadas en el día ",i,"."
						Escribir "Es de: ",horas,":",minutos," horas."
						
					Fin Si				
				Fin Para
				
			Fin Segun
			
			Escribir ""
			Escribir "Selecciona la opcion correspondiente."
			Escribir "1) Lectura de las horas trabajadas por los empleados en la semana."
			Escribir "2) Lectura de los empleados que trabajaron menos de 48H semanales."
			Escribir "3) Lectura de las horas/hombre trabajadas por cada día."
			Escribir "4) Lectura del ingreso de la hora de entrada y salida con el tiempo total trabajado por día."
			Escribir "5) Todas las anteriores."
			Escribir "6) Salir."
			Leer opc
			
			Mientras opc != trunc(opc) | opc < 0 | opc > 6 Hacer
				Escribir "Número no válido."
				Leer opc
			Fin Mientras
			Limpiar Pantalla
			
	Fin Mientras
	
FinFuncion

Proceso HojaDeTrabajo
	
	Dimension HT[10, 6, 9]
	
	matriz(HT)
	printHT(HT)
	
FinProceso
