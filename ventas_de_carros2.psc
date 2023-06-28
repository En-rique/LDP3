SubProceso leer_entradas(nom Por Referencia, cant Por Referencia, mon_ventas Por Referencia)
	Mostrar "Còmo se llama el empleado? " Sin Saltar
	leer nom
	
	Mostrar "Cuàntos autos vendiò? "
	leer cant
	
	Mostrar "Cuàl fue el monto de ventas de " nom "?"
	leer mon_ventas
	
FinSubProceso

subproceso calcular_comision(cant, comision_a Por Referencia)
	comision_a=cant*300
FinSubProceso

SubProceso calcular_comision2(mon_ventas, porc, comision_ventas Por Referencia)
	comision_ventas=mon_ventas*porc/100
FinSubProceso

SubProceso calcular(salario por referencia)
	Definir sala_base como real
	sala_base=120
	calcular_comision(cant, comision_a)
	calcular_comision2(mon_ventas,18,comision_ventas)
	salario=comision_a+comision_ventas+sala_base
FinSubProceso


SubProceso calculo(salario_total Por Referencia, cant, mon_ventas)
	salario_base=120
	comision=cant*300
	comision_ventas=mon_ventas*0.18
	salario_total=salario_base+comision+comision_ventas	
FinSubProceso


SubProceso salida(nom, salario_total)
	Mostrar "El nombre del empleado es " nom 
	Mostrar "El salario total de " nom " es " salario_total
FinSubProceso


Algoritmo eh
	Definir nom Como Caracter
	Definir cant como entero
	Definir mon_ventas, salario_final como real
	
	leer_entradas(nom, cant, mon_ventas)
	calculo(salario_total, cant, mon_ventas)
	salida(nom, salario_total)
	
	Definir opc Como real
	
	Repetir
		Limpiar Pantalla
		Mostrar "Menù de opciones "
		Mostrar "1) Ingresar datos "
		Mostrar "2) Salidas/Mostrar Resultados/Ver Resultados "
		Mostrar "3) Salir "
		leer opc
		
		Segun opc hacer
			1: leer_entradas(nom, cant, mon_ventas)
				calculo(salario_total, cant, mon_ventas)
			2: salida(nom, salario_total)
			3: mostrar "Chao pescao "
			De Otro Modo:
				Mostrar "Seleccione una opciòn correcta "
		FinSegun
		
	Hasta Que opc=3
	
FinAlgoritmo
