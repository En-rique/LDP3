SubProceso procesar_datos(cant, contador Por Referencia, acum_notas Por Referencia, acum_apro Por Referencia, acum_repro Por Referencia, prom_acum_apro Por Referencia, prom_acum_repro Por Referencia)
	Definir nota Como Real
	contador=0
	acum_notas=0
	acum_apro=0
	acum_repro=0
	prom_acum_apro=0
	prom_acum_repro=0
	para i=1 hasta cant
		Mostrar "Cuál es la nota del " i "° estudiante? " Sin Saltar
		leer nota
		
		si nota=100 Entonces
			contador=contador+1
		FinSi
		acum_notas=acum_notas+nota
		si nota>=50 Entonces
			acum_apro=acum_apro+nota
			prom_acum_apro=acum_apro/nota
		FinSi
		si nota<50 Entonces
			acum_repro=acum_repro+nota
			prom_acum_repro=acum_repro/nota
		FinSi
	FinPara
FinSubProceso

SubProceso resultado(cant, contador, acum_notas, acum_apro, acum_repro, prom_acum_apro, prom_acum_repro, nota)
	Mostrar contador " estudiantes tienen una nota perfecta "
	Mostrar "La sumatoria de las notas es: " acum_notas
	Mostrar "La sumatoria de las notas >50 es: " acum_apro
	Mostrar "La sumatoria de las notas <50 es: " acum_repro
	Mostrar "El promedio de la sección es " calcular_promedio(acum_notas, cant)
	Mostrar "El promedio de los aprobados es: " prom_acum_apro(prom_acum_apro, nota)
	Mostrar "El promedio de los reprobados es: " prom_acum_repro(prom_acum_repro, nota)
FinSubProceso

Funcion prom=calcular_promedio(sumatoria_total, cant)
	prom=sumatoria_total/cant
	
FinFuncion

Algoritmo sin_titulo
	
	Definir contador, cant Como Entero
	Definir acum_notas Como Real
	cant=5
	
	procesar_datos(cant, contador, acum_notas, acum_apro, acum_repro, prom_acum_apro, prom_acum_repro)
	resultado(cant, contador, acum_notas, acum_apro, acum_repro, prom_acum_apro, prom_acum_repro, nota)
	
FinAlgoritmo
