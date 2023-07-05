SubProceso procesar_datos(cant, contador Por Referencia, contador_apro Por Referencia, contador_repro Por Referencia, acum_notas Por Referencia, acum_apro Por Referencia, acum_repro Por Referencia)
	Definir nota Como Real
	contador=0
	acum_notas=0
	acum_apro=0
	acum_repro=0
	contador_apro=0
	contador_repro=0
	para i=1 hasta cant
		Mostrar "Cuál es la nota del " i "° estudiante? " Sin Saltar
		leer nota
		
		si nota=100 Entonces
			contador=contador+1
		FinSi
		acum_notas=acum_notas+nota
		si nota>=50 Entonces
			contador_apro=contador_apro+1
			acum_apro=acum_apro+nota
		FinSi
		si nota<50 Entonces
			contador_repro=contador_repro+1
			acum_repro=acum_repro+nota
		FinSi
	FinPara
FinSubProceso

SubProceso resultado(cant, contador, acum_notas, acum_apro, acum_repro, prom, porc_apro, porc_repro)
	Mostrar ""
	Mostrar contador " estudiantes tienen una nota perfecta "
	Mostrar ""
	Mostrar "La sumatoria de las notas es: " acum_notas
	Mostrar "El porcentaje de aprobados es: " porc_apro "%"
	Mostrar "La sumatoria de las notas >50 es: " acum_apro
	Mostrar "El porcentaje de reprobados es: " porc_repro "%"
	Mostrar "La sumatoria de las notas <50 es: " acum_repro
	Mostrar ""
	Mostrar "El promedio de la sección es " prom
FinSubProceso

SubProceso calculos(prom Por Referencia, cant, acum_notas)
	prom=calcular_promedio(acum_notas, cant)
FinSubProceso

SubProceso calcu_porc(cant, contador_apro, contador_repro, porc_apro Por Referencia, porc_repro Por Referencia)
	porc_apro=calcular_porcentaje(contador_apro, cant)
	porc_repro=calcular_porcentaje(contador_repro, cant)
FinSubProceso

Funcion porc=calcular_porcentaje(contador_e, contador_g)
	si contador_g>0 Entonces
		porc=contador_e/contador_g*100
	SiNo
		porc=0
	FinSi
FinFuncion

Funcion prom=calcular_promedio(sumatoria_total, cant)
	prom=sumatoria_total/cant
	
FinFuncion

Algoritmo quinto_año_c
	
	Definir contador, cant, contador_apro, contador_repro Como Entero
	Definir acum_notas, acum_apro, acum_repro, prom, porc_apro, porc_repro, contador_e, contador_g Como Real
	cant=5
	
	procesar_datos(cant, contador, contador_apro, contador_repro, acum_notas, acum_apro, acum_repro)
	calculos(prom, cant, acum_notas)
	calcu_porc(cant, contador_apro, contador_repro, porc_apro, porc_repro)
	resultado(cant, contador, acum_notas, acum_apro, acum_repro, prom, porc_apro, porc_repro)
	
FinAlgoritmo
