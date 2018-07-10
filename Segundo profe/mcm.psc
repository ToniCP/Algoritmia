Proceso mcm
	Dimension n[3]
	
	Para i<-1 Hasta 3 Hacer
		Escribir "Ingrese un numero entero positivo: "
		Leer n[i]
		
		vald<-trunc(n[i])
		
		Mientras n[i] < 1 | n[i] <> vald Hacer
			Escribir "Error, el numero que dio no es positivo o no es entero."
			Escribir "Ingrese un numero entero positivo: "
			Leer n[i]
			vald<-trunc(n[i])
		Fin Mientras
	Fin Para
	
	Si n[1]%n[2]=0 & n[2]%n[1]=0 & n[1]%n[3]=0 & n[2]%n[3]=0 Entonces
		Si n[1] > n[2] Entonces
			num <- n[1]
			Escribir num
		Sino
			Si n[2] > n[3] Entonces
				num <- n[2]
				Escribir num
			Sino
				num <- n[3]
				Escribir num
			Fin Si
		Fin Si
	Sino
		num <- n[1] * n[2]
		num2 <- n[1] * n[3]
		num3 <- n[2] * n[3]
		Si num % 2 = 0 Entonces
			Si (num/2)%n[1]=0 & (num/2)%n[2]=0 Entonces
				num<-num/2
				Escribir num
			Sino
				Escribir num
			Fin Si
		Sino
			Si num2 % 2 = 0 Entonces
				Si (num2/2)%n[1]=0 & (num2/2)%n[3]=0 Entonces
					num2<-num2/2
					Escribir num2
				Sino
					Escribir num2
				Fin Si
			Sino
				Si num3/2%2=0 Entonces
					Si (num3/2)%n[2]=0 & (num3/2)%n[3]=0 Entonces
						num3<-num3/2
						Escribir num3
					Sino
						escribir num3
					Fin Si
				Sino
					Escribir num
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	
FinProceso
