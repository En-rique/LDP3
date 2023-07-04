SubProceso procesar (cant, mayor_nota Por Referencia, nombre_mayor Por Referencia, menor_nota Por Referencia, nombre_menor Por Referencia)
	
	Definir nota Como Real
	
	mayor_nota=-1
	menor_nota=101
	
	para i=1 hasta cant
		Mostrar "Cómo se llama el " i "° estuadiante "
		leer nombre_mayor
		Mostrar "Ingrese la " i "° nota"
		leer nota
		si nota>mayor_nota Entonces
			mayor_nota=nota
			nombre_mayor=nombre
		FinSi
	FinPara
	
	para i=1 hasta cant
		Mostrar "Cómo se llama el " i "° estuadiante "
		leer nombre_menor
		Mostrar "Ingrese la " i "° nota"
		leer nota
		si nota>menor_nota Entonces
			menor_nota=nota
			nombre_menor=nombre
		FinSi
	FinPara
	
FinSubProceso

SubProceso mostrar_resultados (cant, mayor_nota, nombre_mayor, menor_nota, nombre_menor)
	
	mostrar "El estudiante con la mayor nota es " nombre_mayor
	mostrar "Y la mayor nota es " mayor_nota
	
	mostrar "El estudiante con la menor nota es " nombre_menor
	mostrar "Y la menor nota es " menor_nota
	
FinSubProceso

Algoritmo sin_titulo
	
	Definir mayor_nota, menor_nota como real
	Definir cant Como Entero
	Definir nombre_mayor, nombre_menor Como Caracter
	cant=5
	
	procesar(cant, mayor_nota, nombre_mayor, menor_nota, nombre_menor)
	mostrar_resultados(cant, mayor_nota, nombre_mayor, menor_nota, nombre_menor)
FinAlgoritmo
