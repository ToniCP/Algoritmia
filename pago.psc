Proceso Pago
	Escribir "Nombre del trabajador: "
	Leer Nombre
	Escribir "Horas de trabajo: "
	Leer Horas
	Escribir "Pago por hora: "
	Leer PagoH
	
	Si Horas > 40 Entonces
		Total <- (Horas * PagoH)*2
	Sino
		Total <- Horas * PagoH
	Fin Si
	
	Escribir "El trabajador: ",Nombre," ,tiene un pago total de: $",Total," , por las horas de trabajo(",Horas,")."
	
FinProceso
