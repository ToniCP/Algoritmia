Funcion r <- db( dec )//db = "Decimal a Binario"
	Definir dig,d como Caracter
	dig <- ''
	res <- dec
	Mientras res > 0 Hacer
		resto <- res Mod 2//voy sacando el modulo a 2 por las propiedades de un numero binario
		d <- ConvertirATexto(resto)//lo paso a texto para poder concatenerlo
		dig <- d + dig//aqui hago la concatenacion, la variable dig la inicie vacia
		res <- trunc(res / 2)//obtengo el valor entero de la division a 2 para poder seguir descomponiendo y sacar su expresion a binario
	FinMientras
	bin <- ConvertirANumero(dig)//lo regreso como numero
	r <- bin
FinFuncion

Funcion r <- bd( num )//bd = "Binario a Decimal"
	Definir dig, d como Caracter
	dec <- 0
	dig <- ConvertirATexto(num)//tuve que pasar el numero a una conversion a texto para que pueda operarlo en fragmentos
	Para i<-0 Hasta Longitud(dig) Hacer
		d <- SubCadena(dig, i, i)
		dec <- dec*2 + ConvertirANumero(d)//volvi a pasarlo a su expresion numerica para poder operar ese fragmento
	Fin Para
	r <- dec//paso el resultado de la operacion anterior
FinFuncion

Proceso Problema1
	definir a, b, c, b1, b2, b3 como entero
	Escribir "Ingrese el primer numero en binario"
	Leer b1
	Escribir "-El primer numero ingresado a decimal es: "
	a <- bd(b1)//hago el llamado a la funcion bd que su significado es "Binario a Decimal", para realizar el proceso que dice su nombre
	Escribir a
	Escribir ""
	
	Escribir "Ingrese el segundo numero en binario"
	Leer b2
	Escribir "-El segundo numero ingresado a decimal es: "
	b <- bd(b2)//hago el llamado a la funcion bd que su significado es "Binario a Decimal", para realizar el proceso que dice su nombre
	Escribir b
	Escribir ""
	
	c <- a + b//sumo el resultado de mandar las numeros binarios a su transformacion decimar
	b3 <- db(c)//hago el llamado a la funcion db que su significado es "Decimal a Binario", para realizar el proceso que dice su nombre
	
	Escribir "El resultado de la suma de los 2 numeros en binario es: "
	Escribir b3
	Escribir "-El resultado de la suma de los 2 numeros en decimal es: "
	Escribir c
	
FinProceso