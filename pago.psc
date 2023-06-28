SubProceso entradas(ingreso por referencia, nom Por Referencia, curso Por Referencia, precio Por Referencia)
	precio=Aleatorio(20,60)
	Mostrar "Còmo se llama el estudiante? "
	leer nom
	
	Mostrar ""
	
	Mostrar "En cuàl curso desea inscribirse? "
	leer curso
	ingreso=verdadero
FinSubProceso

SubProceso calcular_inicial(precio, porc, inicial Por Referencia)
	inicial=precio*porc/100
FinSubProceso

SubProceso calcular_cuotas(precio, incial, cuotas por referencia)
	cuotas=(precio-inicial)/24
FinSubProceso

SubProceso salidas(nom, precio, inicial, cuotas, curso)
	Mostrar ""
	
	Mostrar "Participante: " nom
	Mostrar "Curso: " curso
	Mostrar "Costo: " precio
	Mostrar "Inicial: " inicial
	Mostrar "Monto de cuotas: " cuotas
FinSubProceso

SubProceso menu(opc Por Referencia)
	Mostrar ""
	
	Mostrar "1) Registrarse "
	Mostrar "2) Ver comprobante "
	Mostrar "3) Salir "
	Mostrar "Seleccione una opciòn "
	leer opc
	
FinSubProceso

Algoritmo sin_titulo
	Definir nom, curso Como Caracter
	Definir precio, inicial, cuotas, opc, porc como real
	porc=20
	
	repetir
		menu(opc)
		Limpiar Pantalla
		Segun opc hacer
			1: entradas(ingreso, nom, curso, precio)
				calcular_inicial(precio, porc,  inicial)
				calcular_cuotas(precio, inicial, cuotas)
			2: si ingreso=verdadero entonces
					salidas(nom, precio, inicial, cuotas, curso)
				SiNo
					Mostrar "Debe ingresar los datos primeros "
				FinSi
			3: mostrar "Hasta luego, vuelva pronto!! "
			De Otro Modo:
				Mostrar "Seleccione una opciòn vàlida"
		FinSegun
	Hasta Que opc=3

	
FinAlgoritmo
