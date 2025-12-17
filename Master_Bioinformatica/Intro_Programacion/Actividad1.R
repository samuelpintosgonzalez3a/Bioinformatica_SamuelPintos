#SCRIPT DE LA ACTIVIDAD 1 DE SAMUEL PIUNTOS GONZÁLEZ PARA INTRODUCCIÓN A LA PROGRAMACIÓN#


####### ENUNCIADO 7 #######

#CREAMOS VECTOR10 

Vector10 <- 1:10 #Forma 1, con dos puntos
Vector10 <- seq(from = 1, to = 10, by = 1) #Forma 2, utilizando seq()
Vector10 <- rep(1:10, times = 1) #Forma 3, utilizando rep()

#CREAMOS VECTOR3

Vector3 <- c("uva", 5.4, TRUE) #"uva" es un carácter, 5.4 es un número y TRUE es un booleano
class(Vector3) #Aquí vemos de qué clase es cada valor; nos da "character" como resultado porque los vectores solo almacenan un tipo de dato

#CREAMOS LISTA3

Lista3 <- list("manzana", 6.7, TRUE) 
class(Lista3[[1]]) # carácter
class(Lista3[[2]]) # numérico
class(Lista3[[3]]) # booleano

#CREAMOS MATRIZ_RESULTADO SUMANDO MATRIZA Y MATRIZB"

matrizA <- matrix(23:34, nrow = 4, ncol = 3) #Creamos matrizA con los números del 23 al 34
matrizB <- matrix(11:22, nrow = 4, ncol = 3) #Creamos matrizB con los números del 11 al 22

Matriz_Resultado <- matrizA + matrizB #Se crea una matriz donde vemos los números pares desde el 34 hasta el 56

####### ENUNCIADO 8 #######

#CREAMOS VECTORRANDOM#

vector_random <- runif(50) #Contiene 50 valores aleatorios entre 0 y 1
maximo__valor <- max(vector_random) #Valor máximo
minimo_valor <- min(vector_random) #Valor mínimo
media <- mean(vector_random) #media
mediana <- median(vector_random) #mediana
desviacion <- sd(vector_random) #desviación estándar
orden_asc <- sort(vector_random) #lo ordenamos en orden ascendente
orden_desc <- sort(vector_random, decreasing = TRUE) #lo ordenamos en orden descendente
suma_total_elementos <- sum(vector_random) #suma total
producto_total_elementos <- prod(vector_random) #producto total

####### ENUNCIADO 10 #######

#PEDIMOS AL USUARIO QUE INGRESE UN NUCLEÓTIDO#

nucleotido <- toupper(readline(prompt = "Escribe un nucleótido (C,G,A,T,U): "))

#Toupper es para que si escribe una minúscula se transforme a mayúscula
#Personalmente he añadido el uracilo porque no especificamos si la secuencia es de DNA o RNA y me parece más correcto incluir al uracilo como un nucleótido posible

#PONEMOS LOS CONDICIONALES PARA QUE MARQUEN ERROR CUANDO PONEMOS UNA LETRA QUE NO SEA UN NUCLEÓTIDO:

if (nucleotido == "A") {
  cat("El nucleótido que has escrito es Adenina (A)\n")
} else if (nucleotido == "T") {
  cat("El nucleótido que has escrito es Timina (T)\n")
} else if (nucleotido == "C") {
  cat("El nucleótido que has escrito es Citosina (C)\n")
} else if (nucleotido == "U") {
  cat("El nucleótido que has escrito es Uracilo (U)\n")
} else if (nucleotido == "G") {
  cat("El nucleótido que has escrito es Guanina (G)\n")
} else {
  cat("Error: el nucleótido que has escrito no existe. Debe ser A, T, C, U o G.\n")
}

####### ENUNCIADO 11 #######

#BUCLE FOR#

for (i in 50:100) {
  suma <- suma + i
} #Bucle for desde 50 hasta 100
suma #muestra el resultado

#BUCLE WHILE#

suma <- 0
i <- 50
while (i <= 100) {
  suma <- suma + i
  i <- i + 1
} #Bucle while hasta 100

suma #muestra el resultado

####### ENUNCIADO 12 #######

#BUCLE WHILE#

suma_pares <- 0
contador_pares <- 0
i <- 1
while (i <= 50) {
  if (i %% 2 == 0) {
    suma_pares <- suma_pares + i
    contador_pares <- contador_pares + 1
  }
  i <- i + 1
}  #Como apunte, i %% 2 hace la división entre 2 y que dé un número entero del valor i para comprobar que estamos cogiendo un i par
promedio_pares <- suma_pares / contador_pares #calculamos promedio
cat("Suma de números pares:", suma_pares, "\n") #Mostramos la suma de números pares
cat("Promedio de números pares:", promedio_pares, "\n") #Mostramos el promedio de números pares

#BUCLE F0R#

suma_pares <- 0
contador_pares <- 0
for (i in 1:50) {
  if (i %% 2 == 0) {       
    suma_pares <- suma_pares + i
    contador_pares <- contador_pares + 1
  }
}
promedio_pares <- suma_pares / contador_pares # A partir de aquí, idéntico al apartado anterior
cat("Suma de números pares:", suma_pares, "\n")
cat("Promedio de números pares:", promedio_pares, "\n")

####### ENUNCIADO 13 #######

Deteccion_Nucleotido <- function(nucleotido) {
  nucleotido <- toupper(nucleotido)
  if (nucleotido == "A") {
    cat("El nucleótido que has escrito es Adenina (A)\n")
  } else if (nucleotido == "T") {
    cat("El nucleótido que has escrito es Timina (T)\n")
  } else if (nucleotido == "C") {
    cat("El nucleótido que has escrito es Citosina (C)\n")
  } else if (nucleotido == "U") {
    cat("El nucleótido que has escrito es Uracilo (U)\n")
  } else if (nucleotido == "G") {
    cat("El nucleótido que has escrito es Guanina (G)\n")
  } else {
    cat("Error: el nucleótido que has escrito no existe. Debe ser A, T, C, U o G.\n")
  }
}    #Con la función Deteccion_Nucleotido abarcamos todo el bloque de código para que cuando escribamos Deteccion_Nucleotido(), lo de dentro del paréntesis sea directamente el nucleótido que introducimos

Deteccion_Nucleotido("a") #Adenina
Deteccion_Nucleotido("c") #Citosina
Deteccion_Nucleotido("g") #Guanina
Deteccion_Nucleotido("k") #Error: el nucleótido que has escrito no existe. Debe ser A, T, C, U o G.
