subproceso saludar()
	Mostrar "Hola, cuàl es tu nombre? " Sin Saltar
	leer nom
	Mostrar "Hola, " nom ", cuàles son tus notas? " Sin Saltar
	leer nota_1, nota_2, nota_3
	prom=(nota_1+nota_2+nota_3)/3
	Mostrar nom ", tu promedio es de: " prom
FinSubProceso

SubProceso despedir()
	Mostrar "Hasta luego "
	esperar 2 Segundos
	Limpiar Pantalla
FinSubProceso

Algoritmo sin_titulo
	saludar()
	despedir()
FinAlgoritmo
