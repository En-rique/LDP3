subproceso entradas(nom por referencia, nota1 por referencia, nota2 por referencia, nota3 Por Referencia)
	Mostrar "Cu�l es su nombre? " Sin Saltar
	leer nom
	Mostrar "Ingrese el valor de sus notas " Sin Saltar
	leer nota1, nota2, nota3
FinSubProceso

SubProceso calculo_prom(nota1, nota2, nota3, prom Por Referencia)
	prom=(nota1+nota2+nota3)/3
FinSubProceso

SubProceso salida(nom, prom)
	Mostrar "Bolet�n Acad�mico"
	Mostrar "Nombre: " nom
	Mostrar "Promedio: " prom
FinSubProceso

subproceso aprobado(prom)
	si prom>=15 entonces
		Mostrar "Usted aprob�"
	SiNo
		si prom<15 Entonces
			Mostrar "Usted no aprob�"
		FinSi
	FinSi
FinSubProceso

Algoritmo sin_titulo
	Definir nom Como Caracter
	Definir nota1, nota2, nota3, prom Como Real
	
	entradas(nom, nota1, nota2, nota3)
	calculo_prom(nota1, nota2, nota3, prom)
	salida(nom, prom)
	aprobado(prom)
	
	mostrar "Segundo estudiante"
	calculo_prom(10,18,17, prom)
	salida("Isabella", prom)
	
	
FinAlgoritmo
