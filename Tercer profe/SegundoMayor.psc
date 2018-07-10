Proceso SegundoMayor
	Escribir "Ingresa la cantidad de numeros que van a estar en el vector: "
	Leer num
	
	Mientras num != trunc(num) | num < 0 Hacer
		Escribir "Valor invalido."
		Escribir "Ingresa la cantidad de numeros que van a estar en el vector: "
		Leer num
	Fin Mientras
	
	Dimension N[num]
	Dimension N2[num]
	
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir "Ingresa el dato ",i,": "
		Leer N[i]
		
		Mientras N[i] != trunc(N[i]) | N[i] < 0 Hacer
			Escribir "Valor invalido."
			Escribir "Ingresa el dato ",i,": "
			Leer N[i]
		Fin Mientras
		
	Fin Para
	
	Para i <- 1 Hasta num-1 Hacer
        Pmenor <- i
        Para j <- i+1 Hasta num Hacer
            Si N[j] < N[Pmenor] Entonces
                Pmenor<-j
            FinSi
        FinPara
        aux <- N[i]
        N[i]<-N[Pmenor]
        N[Pmenor]<-aux
    FinPara 
	
//	Escribir "La lista ordenada es:"
//    Para i<-1 Hasta num Hacer
//        Escribir "   ",N[i]
//    FinPara
	
	Escribir "El segundo numero mayor es: ", N[num-1]
	
FinProceso
