Algoritmo CALCULADORA_PROYECTO_FINAL
	Definir seleccion, fila, col, tam, auxiliar Como Entero
	Definir numero1, numero2, totalSuma, totalResta, media Como Real
	Definir matrizA, matrizB, matrizResultado Como Entero
	Definir arregloNumeros Como Entero
	Dimension matrizA[100,100], matrizB[100,100], matrizResultado[100,100]
	Dimension arregloNumeros[100]
	Definir contadorNums, maximo, minimo, arribaMedia, abajoMedia Como Entero
	
	Repetir
		Limpiar Pantalla
		Escribir "------ CALCULADORA AVANZADA ------"
		Escribir "-------------MENU PRINCIPAL-------------"
		Escribir "1. Suma"
		Escribir "2. Resta"
		Escribir "3. Multiplicación"
		Escribir "4. División"
		Escribir "5. Sumar todos los valores de la matriz"
		Escribir "6. Restar todos los valores de la matriz"
		Escribir "7. Suma de matrices"
		Escribir "8. Resta de matrices"
		Escribir "9. Triángulo con números"
		Escribir "10. Rectángulo con asteriscos"
		Escribir "11. Estadísticas en una lista de números"
		Escribir "0. Salir"
		Escribir "Seleccione una opción a ejecutar:"
		Leer seleccion
		
		Si seleccion = 1 Entonces
			Escribir "Ingrese dos números para sumar:"
			Leer numero1, numero2
			Escribir "Resultado: ", numero1 + numero2
		SiNo
			Si seleccion = 2 Entonces
				Escribir "Ingrese dos números para restar:"
				Leer numero1, numero2
				Escribir "Resultado: ", numero1 - numero2
			SiNo
				Si seleccion = 3 Entonces
					Escribir "Ingrese dos números para multiplicar:"
					Leer numero1, numero2
					Escribir "Resultado: ", numero1 * numero2
				SiNo
					Si seleccion = 4 Entonces
						Escribir "Ingrese dos números para dividir:"
						Leer numero1, numero2
						Si numero2 <> 0 Entonces
							Escribir "Resultado: ", numero1 / numero2
						SiNo
							Escribir "SYNTAX ERROR: NO SE PUEDE DIVIDIR DENTRO DE CERO!."
						FinSi
					SiNo
						Si seleccion = 5 Entonces
							Escribir "Ingrese tamaño de la matriz:"
							Leer tam
							totalSuma <- 0
							Para fila <- 1 Hasta tam
								Para col <- 1 Hasta tam
									Escribir "Matriz[", fila, ",", col, "]:" 
									Leer matrizA[fila, col]
									totalSuma <- totalSuma + matrizA[fila, col]
								FinPara
							FinPara
							Escribir "Suma total: ", totalSuma
						SiNo
							Si seleccion = 6 Entonces
								Escribir "Ingrese tamaño de la matriz:"
								Leer tam
								totalResta <- 0
								Para fila <- 1 Hasta tam
									Para col <- 1 Hasta tam
										Escribir "Matriz[", fila, ",", col, "]:" 
										Leer matrizA[fila, col]
										Si fila = 1 Y col = 1 Entonces
											totalResta <- matrizA[fila, col]
										SiNo
											totalResta <- totalResta - matrizA[fila, col]
										FinSi
									FinPara
								FinPara
								Escribir "Resta total: ", totalResta
							SiNo
								Si seleccion = 7 Entonces
									Escribir "Ingrese tamaño de la matriz:"
									Leer tam
									Escribir "Primera matriz:"
									Para fila <- 1 Hasta tam
										Para col <- 1 Hasta tam
											Leer matrizA[fila, col]
										FinPara
									FinPara
									Escribir "Segunda matriz:"
									Para fila <- 1 Hasta tam
										Para col <- 1 Hasta tam
											Leer matrizB[fila, col]
										FinPara
									FinPara
									Escribir "Resultado de la suma:"
									Para fila <- 1 Hasta tam
										Para col <- 1 Hasta tam
											matrizResultado[fila, col] <- matrizA[fila, col] + matrizB[fila, col]
											Escribir Sin Saltar matrizResultado[fila, col], " "
										FinPara
										Escribir ""
									FinPara
								SiNo
									Si seleccion = 8 Entonces
										Escribir "Ingrese tamaño de la matriz:"
										Leer tam
										Escribir "Primera matriz:"
										Para fila <- 1 Hasta tam
											Para col <- 1 Hasta tam
												Leer matrizA[fila, col]
											FinPara
										FinPara
										Escribir "Segunda matriz:"
										Para fila <- 1 Hasta tam
											Para col <- 1 Hasta tam
												Leer matrizB[fila, col]
											FinPara
										FinPara
										Escribir "Resultado de la resta:"
										Para fila <- 1 Hasta tam
											Para col <- 1 Hasta tam
												matrizResultado[fila, col] <- matrizA[fila, col] - matrizB[fila, col]
												Escribir Sin Saltar matrizResultado[fila, col], " "
											FinPara
											Escribir ""
										FinPara
									SiNo
										Si seleccion = 9 Entonces
											Escribir "Ingrese número de filas:"
											Leer tam
											Para fila <- 1 Hasta tam
												auxiliar <- 1 + (fila - 1) * 2
												Para col <- 1 Hasta fila
													Escribir Sin Saltar auxiliar, " "
													auxiliar <- auxiliar - 2
												FinPara
												Escribir ""
											FinPara
										SiNo
											Si seleccion = 10 Entonces
												Escribir "Ingrese el tamaño del rectángulo:"
												Leer tam
												Para fila <- 1 Hasta tam
													Para col <- 1 Hasta tam
														Si fila = 1 O fila = tam O col = 1 O col = tam Entonces
															Escribir Sin Saltar "* "
														SiNo
															Escribir Sin Saltar "  "
														FinSi
													FinPara
													Escribir ""
												FinPara
											SiNo
												Si seleccion = 11 Entonces
													contadorNums <- 0
													Escribir "Ingrese números (-1 para terminar):"
													Repetir
														Leer auxiliar
														Si auxiliar <> -1 Entonces
															contadorNums <- contadorNums + 1
															arregloNumeros[contadorNums] <- auxiliar
														FinSi
													Hasta Que auxiliar = -1 O contadorNums = 100
													
													totalSuma <- 0
													maximo <- arregloNumeros[1]
													minimo <- arregloNumeros[1]
													Para fila <- 1 Hasta contadorNums
														totalSuma <- totalSuma + arregloNumeros[fila]
														Si arregloNumeros[fila] > maximo Entonces
															maximo <- arregloNumeros[fila]
														FinSi
														Si arregloNumeros[fila] < minimo Entonces
															minimo <- arregloNumeros[fila]
														FinSi
													FinPara
													media <- totalSuma / contadorNums
													arribaMedia <- 0
													abajoMedia <- 0
													Para fila <- 1 Hasta contadorNums
														Si arregloNumeros[fila] > media Entonces
															arribaMedia <- arribaMedia + 1
														SiNo
															Si arregloNumeros[fila] < media Entonces
																abajoMedia <- abajoMedia + 1
															FinSi
														FinSi
													FinPara
													Escribir "Suma: ", totalSuma
													Escribir "Promedio: ", media
													Escribir "Mayor: ", maximo
													Escribir "Menor: ", minimo
													Escribir "Encima del promedio: ", arribaMedia
													Escribir "Debajo del promedio: ", abajoMedia
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir ""
		Esperar Tecla
	Hasta Que seleccion = 0
FinAlgoritmo
