funcion f <- fib(N)
	Definir f, f1, f2, i como entero
	Si N = 1 | N = 2 Entonces
		f <- 1
	Sino
		f1 <- 1
		f2 <- 1
		Para i<-3 Hasta N Con Paso 1 Hacer
			f <- f1 + f2
			f1 <- f2
			f2 <- f
		Fin Para
	Fin Si
FinFuncion

Proceso FibonacciFuncion
	Definir N, fibo, i Como Entero
	Escribir "Número fibonacci a calcular: "
	Leer N
	Dimension fibo[N]
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		fibo[i] <- fib(i)
		Escribir "El numero fibonacci ",i," calculado es: ",fibo[i]
	Fin Para
FinProceso
