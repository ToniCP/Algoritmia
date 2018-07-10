Proceso factorial
	Escribir "Escribe el numero: "
	Leer n
	escribir "El factorial de: ",n," es: ",factor(n)
FinProceso

funcion n<-factor(val)
	fact<-1
	cont<-1
	Mientras cont<=val Hacer
		fact<-fact*cont
		cont<-cont+1
	Fin Mientras
	n<-fact
	//Escribir "El factorial de: ",val," es: ",fact
	FinFuncion
	