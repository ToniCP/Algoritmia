// Problema 1: Cuantas ciudades hay en un pais,
// cuantas calles tiene cada ciudad que los conecte a otra ciudad
SubProceso vector(vec,N) // Se llena el vector del nombre de las ciudades
	Para i<-1 Hasta N Hacer
		Escribir 'Ingrese el nombre de la cuidad ',i
		Leer vec(i)
	FinPara
FinSubProceso

SubProceso matriz(mat,vec,N) // Se llenan con 1 las ciudades que tengas carreteras que la una a otra ciudad o con 0 las que no tengan
	Para i<-1 Hasta N Hacer
		Para j<-1 Hasta N Hacer
			// "darnom" es una funcion que se va a ver mas abajo, la cual implemente para que dado un numero de la fila de la matriz
			// entregre la ciudad correspondiente que es
			Si i!=j Entonces
				Escribir 'Presiona 1 si: '
				Escribir 'La ciudad ',darnom(vec,N,i),' SI tiene carretera que conecta a la ciudad ',darnom(vec,N,j)
				Escribir 'Presiona 0 si: '
				Escribir 'La ciudad ',darnom(vec,N,i),' NO tiene carretera que conecte a la ciudad ',darnom(vec,N,j)
				Leer opc
				// una validación por si entrega un numero erróneo no le bote del programa
				Mientras opc!=trunc(opc) O opc<0 O opc>1 Hacer
					Escribir 'Opción incorrecta.'
					Leer opc
				FinMientras
				Escribir ''
				mat(i,j)<-((opc))
			FinSi
		FinPara
	FinPara
FinSubProceso

// esta función esta implementada para que imprima el vector y la matriz, con la variable num hace la identificación
// entre vector o matriz
SubProceso print(form,N,num)
	Si num=1 Entonces
		Escribir 'Los caminos son: '
	Sino
		Escribir 'Las ciudades son: '
	FinSi
	Para i<-1 Hasta N Hacer
		Si num=1 Entonces
			Para j<-1 Hasta N Hacer
				Escribir form(i,j),' ' Sin Saltar
			FinPara
			Escribir ''
		Sino
			Escribir form(i)
		FinSi
	FinPara
FinSubProceso

// En esta función es la que identifica si hay la ciudad que solicito encontrar, si no hay le marcara, de lo contrario le va a desplegar todas
// las ciudades en las cuales puede ir desde la ciudad que esta
SubProceso solicitud(vec,mat,N,bus)
	band<-0 // esta variable me servida como identificador para saber si esta o no esta la ciudad que busco
	aux<-0
	Dimension vecaux(N)
	Para i<-1 Hasta N Hacer
		Si vec(i)=bus Entonces
			// aquí la identificación fue aceptada y le entrega las ciudades que se pueden ir desde esa ciudad
			Escribir 'Desde ',bus,' puedes ir a: '
			band<-1 // la variable cambia de 0 a 1 para identificar que se encontró la ciudad
			aux<-i
			// aquí, dada la matriz donde se encuentra caminos y con la función "darnom" entrego los nombres correspondientes de las ciudades
			Para j<-i Hasta i Hacer
				Para k<-1 Hasta N Hacer
					// el vecaux es un vector auxiliar, el cual me va a servir para obtener las calles de la ciudad que solicite, esto me va 
					// a servir abajo para compararlo y hacer una verificación
					Si mat(j,k)=1 Entonces
						Escribir darnom(vec,N,k)
						vecaux(k)<-((1))
					Sino
						vecaux(k)<-((0))
					FinSi
				FinPara
			FinPara
			Escribir ''
			// en esta parte verifico que las ciudades que puedo ir atravesando las ciudades de por medio 
			aux2<-0
			Para j<-1 Hasta N Hacer
				Si vecaux(j)=1 Entonces
					aux2<-j
					// empiezo a desplegar las posibles rutas que tengo para ir estando en esa ciudad
					Escribir 'Estando en ',darnom(vec,N,aux2),' puedes ir a: '
					// aquí entrego todas las posibilidades usando el mismo método que al principio
					Para k<-aux2 Hasta aux2 Hacer
						Para l<-1 Hasta N Hacer
							Si mat(k,l)=1 Entonces
								Escribir darnom(vec,N,l)
							FinSi
						FinPara
					FinPara
					Escribir ''
				FinSi
			FinPara
		FinSi
	FinPara
	Si band=0 Entonces // si no se encuentra la ciudad la variable se mantiene en 0, por lo danto me despliega el aviso que la ciudad no se encontró
		Escribir 'La ciudad no está en este país.'
	FinSi
FinSubProceso

// esta función fue implementada para dar el nombre de las ciudades haciendo una comparación de la localización (numero) donde me encuentre en la matriz
SubProceso nom<-darnom(vec,N,com)
	Para i<-1 Hasta N Hacer
		Si i=com Entonces
			nom<-vec(i)
		FinSi
	FinPara
FinSubProceso

// aquí solo hago la comparación de cada fila de la matriz para determinar la ciudad que tiene mas calles
SubProceso MAX(mat,vec,N)
	maxim<-0
	Para i<-1 Hasta N Hacer
		cont<-0
		Para j<-1 Hasta N Hacer
			Si mat(i,j)=1 Entonces
				cont<-cont+1
				aux<-j
			FinSi
		FinPara
		Si maxim<cont Entonces
			maxim<-cont
			nom<-aux-1
		FinSi
	FinPara
	Escribir 'La ciudad con mayor carreteras es ',darnom(vec,N,nom),' con ',maxim,' carreteras.'
FinSubProceso

// aquí hago todas las solicitudes y llamados a las funciones
// es mi función principal
Proceso Problema1
	Escribir '¿Cuántas ciudades tiene el país?'
	Leer N
	// otra validación para que me entregue valores numéricos enteros, de lo contrario no va a marcar error sino le volverá a pedir el numero
	// hasta que este sea entregado correctamente
	Mientras N!=trunc(N) O N<1 Hacer
		Escribir 'Valor inválido.'
		Leer N
	FinMientras
	Dimension ciudad(N),caminos(N,N)
	vector(ciudad,N)
	matriz(caminos,ciudad,N)
	Borrar Pantalla
	print(ciudad,N,0)
	Escribir ''
	print(caminos,N,1)
	Escribir ''
	Escribir '¿Qué ciudad desea consultar la existencia de carreteras?'
	Leer buscar
	Escribir ''
	solicitud(ciudad,caminos,N,buscar)
	Escribir 'Ingrese la palabra MAYOR para mostrarle la ciudad que tiene mas carreteras.'
	Leer may
	Mientras may!='MAYOR' Hacer
		Escribir 'Palabra incorrecta'
		Leer may
	FinMientras
	MAX(caminos,ciudad,N)
FinProceso

