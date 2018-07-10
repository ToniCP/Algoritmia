funcion fib(fibo, N)
	Definir i como entero
	fibo[1] = 1
	fibo[2] = 1
	Para i<-3 Hasta N Con Paso 1 Hacer
		fibo[i] <- fibo[i-1] + fibo[i-2]
	Fin Para
FinFuncion

Proceso ModFibonacciFunc
	definir N, i, fibo Como Entero
	Escribir "Número fibonacci a calcular: "
	Leer N
	
	Dimension fibo[N]
	fib(fibo, N)
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir "El numero fibonacci ",i," calculado es: ",fibo[i]
	Fin Para
FinProceso
