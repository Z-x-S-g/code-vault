#!/bin/python

groserias = [
    "pendejo", "pendeja", "cabron", "cabrona", "chingada", "chingado",
    "chingar", "pinche", "culero", "puta", "puto", "mierda",
    "coño", "cabrón", "joto", "verga", "coger", "marica",
    "perra", "perro", "huevon", "culera", "culon", "estupido", "estupida"
]

str = input("Escribe algo en tu chat de lol a tus companeros sobre su desempeno en el juego\n")

for word in range(0,len(str)):
    if str[word] in groserias:
        str[word] = "****"


print(str)
