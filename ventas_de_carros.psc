SubProceso leer_entradas(nom Por Referencia, cant Por Referencia, mon_ventas Por Referencia)
	Mostrar "Còmo se llama el empleado? " Sin Saltar
	leer nom
	
	Mostrar "Cuàntos autos vendiò? "
	leer cant
	
	Mostrar "Cuàl fue el monto de ventas de " nom "?"
	leer mon_ventas
	
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


Algoritmo practica_3
	Definir nom, nombre Como Caracter
	Definir salario_total, salario_total2, mont_ventas, mon_ventas como real
	Definir cant, canti como entero
	
	Mostrar "Primer empleado "
	leer_entradas(nom, cant, mon_ventas)
	calculo(salario_total, cant, mon_ventas)
	salida(nom, salario_total)
	
	Mostrar ""
	
	Mostrar "Segundo empleado "
	leer_entradas(nombre, canti, mont_ventas)
	calculo(salario_total2, canti, mont_ventas)
	salida(nombre, salario_total2)
FinAlgoritmo
