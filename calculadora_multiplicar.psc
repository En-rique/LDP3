SubProceso limitador (min Por Referencia, max Por Referencia)
	Mostrar "Ingrese el valor mínimo a multiplicar " Sin Saltar
	leer min
	
	Mostrar ""
	
	Mostrar "Ingrese el valor máximo a multiplicar " Sin Saltar
	leer max
	
FinSubProceso

SubProceso generar_tabla(min, max)
	Para i=min Hasta max
		Mostrar "Tabla de multiplicar del numero " i
		para j=0 Hasta 10
			Mostrar i "*" j " = " i*J
		FinPara
		Mostrar ""
	FinPara
FinSubProceso

Algoritmo calculadora_multiplicar
	Definir min, max Como Real
	
	limitador(min, max)
	generar_tabla(min, max)
FinAlgoritmo
