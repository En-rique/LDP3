subproceso eda()
	si edad>=18 Entonces
		Mostrar "Eres mayor de edad "
	SiNo
		Mostrar "No eres mayor de edad "
	FinSi
	
	Mostrar ""
	
	Mostrar "Hola, cuàl es tu edad? " Sin Saltar
	leer edad
FinSubProceso

subproceso sex ()
	si Mayusculas(sexo)="F" Entonces
		Mostrar "mujer"
	SiNo 
		si Mayusculas(sexo)="M" Entonces
			Mostrar "hombre"
		FinSi
		
	FinSi
	
	Mostrar ""
	
	Mostrar "Eres hombre o mujer? F/M"
	leer sexo
FinSubProceso

Algoritmo sin_titulo
	eda()
	sex()
FinAlgoritmo
