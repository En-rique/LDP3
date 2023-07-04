Funcion porcentaje = calcular_porc(monto,porc)
	//porcentaje=monto*porc //0.25, 0.50, 0.16
	porcentaje = monto*porc/100 //100 20, 15, 30
FinFuncion

Algoritmo sin_titulo
	
	Definir monto, porcen, resultado Como Real
	
	Mostrar "Ingrese el monto al cual desea calcular el porcentaje " Sin Saltar
	leer monto
	
	Mostrar ""
	
	Mostrar "Cuál será el a calcular? " Sin Saltar
	Leer porcen
	
	Mostrar ""
	
	Mostrar "El " porcen "% de " monto " es " calcular_porc(monto,porcen)
	
FinAlgoritmo
