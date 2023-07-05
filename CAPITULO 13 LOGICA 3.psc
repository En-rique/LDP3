subproceso cargar_datos(cant, acum_seccion por referencia, cont_aprobados por referencia, cont_femeninas Por Referencia)
	definir nombre, genero Como Caracter
	definir nota como real 
	definir acum_estudiante como real 
	acum_seccion=0
	cont_aprobados=0
	cont_femeninas=0
	para i=1 hasta cant
		mostrar "Nombre del Estudiante " i
		leer nombre 
		mostrar "Género de " nombre
		leer genero 
		acum_estudiante=0
		para j=1 hasta 3
			mostrar "Nota " j
			nota=aleatorio(2,25)
			mostrar nota 
			acum_estudiante=acum_estudiante+nota
		FinPara
		acum_seccion=acum_seccion+acum_estudiante
		mostrar "El estudiante " nombre, ", suma " acum_estudiante
		promedio_est=calcular_prom(acum_estudiante, 3)
		mostrar "El promedio de " nombre " es " promedio_est
		si promedio_est>10 entonces
			cont_aprobados=cont_aprobados+1
		FinSi
		si promedio_est>15 y mayusculas(genero)="F" entonces
			cont_femeninas=cont_femeninas+1
		FinSi
		
	FinPara
	
FinSubProceso

funcion porcentaje=calcular_porcentaje(contador_e, contador_g)
	si contador_g>0 entonces
		porcentaje=contador_e/contador_g*100
	sino 
		porcentaje=0
	FinSi	
FinFuncion

funcion promedio=calcular_prom(sumatoria_total, cantidad)
	promedio=sumatoria_total/ cantidad 	
FinFuncion

subproceso calculos(acum_seccion, cont_aprobados, cant, promedio_seccion por referencia, porcentaje_aprobados por referencia)
	definir cantidad_total_notas como entero 
	cantidad_total_notas=cant*3
	promedio_seccion=calcular_prom(acum_seccion,cantidad_total_notas)
	porcentaje_aprobados=calcular_porcentaje(cont_aprobados,cant)
FinSubProceso

subproceso salidas(promedio_seccion, porcentaje_aprobados, cont_femeninas)
	mostrar "Promedio seccion " promedio_seccion
	mostrar "Porcentaje de aprobados " porcentaje_aprobados "%" 
	mostrar "Femeninas con promedio mayor a 15 " cont_femeninas
FinSubProceso

Algoritmo sin_titulo
	
	cant=4
	cargar_datos(cant, acum_seccion, cont_aprobados, cont_femeninas)
	calculos(acum_seccion, cont_aprobados, cant, promedio_seccion,porcentaje_aprobados)
	salidas(promedio_seccion, porcentaje_aprobados,cont_femeninas)
	
FinAlgoritmo
