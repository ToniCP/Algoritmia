//hice todo el proceso en una funcion por falta de tiempo

Funcion reg <- matriz(mat)
	suma <- 0
	aprob <- 0
	acum <- 0
	rep <- 0
	Dimension cal[80], repro[80]//son vectores que me van a servir para el almacenamiento de las calificaciones de los 80 alumnos
	//y para la cantidad de materias reprobadas por cada alumno
	Para i<-1 Hasta 80 Con Paso 1 Hacer
		Para j<-1 Hasta 5 Con Paso 1 Hacer
			alet <- Aleatorio(50, 100)
			mat[i, j] <- alet//meto el valor aleatorio a mi matriz
			suma <- suma + alet//hago una suma para posteriormente determinar el promedio
			
			Si alet < 70 Entonces//pregunto si el valor dado aleatorio es menor a 70 que es el minimo aprobatorio
				rep <- rep +1 //si cumple mi variable que da referencia a cantidad de materias reprobadas se va a incrementar
			Fin Si
			
		Fin Para
		prom <- suma/5//determino mi promedio
		cal[i] <- prom//lo inserto en la posicion correspondiente a mi vector de calificaciones
		suma <- 0//regreso mi variable suma que es mi acumulador a 0
		
		Si rep < 5 Entonces//pregunto si mi variable de reprobados es menor a las 5 materias del curso
			repro[i] <- rep//si cumple va a meter el valor a mi vector de materias reprobadas por alumnos
		Fin Si
		
		rep <- 0//regreso mi variable rep a 0
	Fin Para
	
	maximo <- cal[1]//me va a servir para la comparacion
	lugar <- 1//es el lugar donde empiezo mi variable "maximo"
	Para i<-2 Hasta 80 Con Paso 1 Hacer //abro mi vector de calificaciones
		Si maximo < cal[i] Entonces//voy preguntando si mi variable maximo es menor a el valordado
			maximo <- cal[i]//si lo es, cambio el valor, ya que mi variable maximo debe de tener el numero maximo de todos los dados
			lugar <- i//mi variable lugar lo igualo a la posicion que tengo en ese momento
		Fin Si
	Fin Para
	
	Escribir "Desea ver el promedio de los alumnos: "//un pequeño menu de opciones para ver o no el promedio de cada alumno
	Escribir "1) Si"
	Escribir "2) No"
	Leer opc
	Mientras opc != trunc(opc) | opc < 1 | opc > 2 Hacer//hago una validacion para q la variable "opc" no acepte numeros decimales o mayores que 2 y menores que 1
		//ya que son mis dos opciones que entrego
		Escribir "Error"
		Leer opc//si no cumple vuelve a preguntar hasta que de una de las 2 opciones correspondientes 
	Fin Mientras
	Si opc = 1 Entonces
		Para i<-1 Hasta 80 Con Paso 1 Hacer
			Escribir "Alumno ",i," con promedio: ",cal[i]
		Fin Para
	Fin Si
	
	Escribir ""
	Escribir "El alumno con mejor promedio es el: ",lugar // entrego el lugar (numero) del alumnos que saco el promedio mas alto
	Escribir "Con el promedio de: ",maximo//entrego el promedio del mas alto
	Escribir ""
	
	r1 <- 0
	r2 <- 0
	r3 <- 0
	r4 <- 0
	r5 <- 0
	Para i<-1 Hasta 80 Con Paso 1 Hacer//en este fragmento del codigo lo que voy haciendo es abri mi vector de la cantidad de materias reprobadas
		//y los voy comparando para determinar y acumular la cantidad de materias reprobadas respectivamente
		Si repro[i] = 1 Entonces
			r1 <- r1 + 1
		Sino
			Si repro[i] = 2 Entonces
				r2 <- r2 + 1
			Sino
				Si repro[i] = 3 Entonces
					r3 <- r3 + 1
				Sino
					Si repro[i] = 4 Entonces
						r4 <- r4 + 1
					Sino
						Si repro[i] = 5 Entonces
							r5 <- r5 + 1
						Sino
							Si repro[i] = 0 Entonces
								acum <- acum + 1
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
		//Escribir repro[i]
	Fin Para
	
	Dimension materias[5]//creo un nuevo vector donde voy a almacenar el numero total de materias reprobadas
	//inserto cada una con su correspondiente
	materias[1] <- r1
	materias[2] <- r2
	materias[3] <- r3
	materias[4] <- r4
	materias[5] <- r5
	
	//aqui es un inicio para la comparacion que voy a hacer despues
	masrep <- materias[1]
	menosrep <- materias[1]
	
	//entrego la cantidad de materias reprobadas que van a ir de 1 a 5 materias
	Escribir "El total de alumnos que reprobaron 1 materia son: ",r1
	Escribir "El total de alumnos que reprobaron 2 materias son: ",r2
	Escribir "El total de alumnos que reprobaron 3 materias son: ",r3
	Escribir "El total de alumnos que reprobaron 4 materias son: ",r4
	Escribir "El total de alumnos que reprobaron 5 materias son: ",r5
	
	//comparacion para encontrar la materia que tiene mas reprobados y menores
	Para i<-2 Hasta 5 Con Paso 1 Hacer
		Si masrep < materias[i] Entonces
			masrep <- materias[i]
			identMas <- i
			
			//aqui lo que hago es cuando ya encontre uno menor a mi variable que comparo, en la variable anterior hago q se iguale a la posicion
			//de ese momento para que aqui determine que materia es la que en ese momento hay mas alumnos reprobados
			//lo mismo hago con la de menor que esta debajo de estas comparaciones
			Si identMas = 1 Entonces
				nombreMas <- "Español"
			Sino
				Si identMas = 2 Entonces
					nombreMas <- "Matematicas"
				Sino
					Si identMas = 3 Entonces
						nombreMas <- "Biologia"
					Sino
						Si identMas = 4 Entonces
							nombreMas <- "Historia"
						Sino
							nombreMas <- "Civismo"
						Fin Si
					Fin Si
				Fin Si
			Fin Si
			
		Fin Si
		Si menosrep > materias[i] Entonces
			menosrep <- materias[i]
			identMenos <- i
			
			Si identMenos = 1 Entonces
				nombreMenos <- "Español"
			Sino
				Si identMenos = 2 Entonces
					nombreMenos <- "Matematicas"
				Sino
					Si identMenos = 3 Entonces
						nombreMenos <- "Biologia"
					Sino
						Si identMenos = 4 Entonces
							nombreMenos <- "Historia"
						Sino
							nombreMenos <- "Civismo"
						Fin Si
					Fin Si
				Fin Si
			Fin Si
			
		Fin Si
	Fin Para
	
	Escribir ""
	Escribir "La materia con mas reprobados es: ", nombreMas
	Escribir "Con ",masrep," reprobados."
	Escribir "La materia con menos reprobados es: ",nombreMenos
	Escribir "Con ",menosrep," reprobados."
	
	reg <- acum
	
FinFuncion

Funcion print(mat)
	Para i<-1 Hasta 80 Con Paso 1 Hacer
		Escribir "Alumno: ",i,", calificaciones: "
		Para j<-1 Hasta 5 Con Paso 1 Hacer
			Escribir Sin Saltar mat[i, j]," "
		Fin Para
		Escribir ""
	Fin Para
FinFuncion

Proceso Problema2
	Dimension calificaciones[80,5]
	//80 alumnos
	//5 materias
	n <- matriz(calificaciones)
	Escribir ""
	Escribir "El numero de alumnos regulares es de: ",n
	Escribir ""
	Escribir "Desea ver las calificaciones de cada alumno: "
	Escribir "1) Si"
	Escribir "2) No"
	Leer opc
	Mientras opc != trunc(opc) | opc < 1 | opc > 2 Hacer
		Escribir "Error"
		Leer opc
	Fin Mientras
	Si opc = 1 Entonces
		print(calificaciones)
	Fin Si
	
FinProceso
