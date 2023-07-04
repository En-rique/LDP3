Funcion porcentaje = calcular_porc(monto,porc)
	//porcentaje=monto*porc //0.25, 0.50, 0.16
	porcentaje = monto*porc/100 //100 20, 15, 30
FinFuncion

SubProceso cargar_datos(preciof Por Referencia)
	
	Mostrar "Cuál es el precio de fábrica "
	//leer preciof
	
	preciof=Aleatorio(100,120)
	
	Mostrar "Precio de fábrica " preciof
	
FinSubProceso

SubProceso procesar_calculos(preciof, comision Por Referencia)
	comision=calcular_porc(preciof,20)
	ganancia=calcular_porc(preciof,20)
FinSubProceso

SubProceso precio_b()
	
FinSubProceso

SubAlgoritmo resultados (preciof, comision, ganancia)
	Mostrar "Precio de fábrica: " preciof
	Mostrar "Comisión 20% " comision
	mostrar "Ganancia 25% " ganancia
	Mostrar "Precio base: " precio_base
	Mostrar "Monto IVA: " monto_iva
	Mostrar "Precio de venta: " precio_venta
FinSubAlgoritmo

Algoritmo sin_titulo
	definir preciof, comision, ganancia como real
	
	cargar_datos(preciof)
	procesar_calculos(preciof, comision)
	resultados(preciof, comision, ganancia)
	
FinAlgoritmo
