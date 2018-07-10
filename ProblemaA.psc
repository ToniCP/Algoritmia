Proceso ProblemaA
	//Abro la lectura para cada dato siguiendo el patron de la ecuacion.
	Escribir "Siguiendo la ecuacion: price(k) = p*(sen(a*i + b) + cos(c*i + d) + 2)."
	Escribir "Ingresar los siguientes valores: "
	Escribir "Valor p: "
	Leer p
	Escribir "Valor a: "
	Leer a
	Escribir "Valor b: "
	Leer b
	Escribir "Valor c: "
	Leer c
	Escribir "Valor d: "
	Leer d
	Escribir "Valor k: "
	Leer k
	Dimension modelado[k]
	Para i<-1 Hasta k Con Paso 1 Hacer
	modelado[i] <- p*(sen(a*i + b) + cos(c*i + d) + 2)
Fin Para
	
	Para i<-1 Hasta k Con Paso 1 Hacer
		Escribir "-----",modelado[i]
	Fin Para
	
	pm = modelado[1]
	Escribir "******",pm,"******"
	
	val<-0
	Para i<-2 Hasta k Con Paso 1 Hacer
		Si modelado[i] > pm Entonces
			pm = modelado[i]
			Escribir "maxn ",pm
		Sino
			camb <- pm - modelado[i]
			Escribir "pm - modelado[i]: ",camb
			Si val < camb Entonces
				val = camb
				Escribir "val ",val
			Sino
				val = val
				Escribir "val ",val
			Fin Si
		Fin Si
	Fin Para
	
	Escribir "La disminucion maxica fue de: ",val

FinProceso
