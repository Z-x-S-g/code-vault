#!/bin/python

str = input("Escribe una palabra y checare si es palindromo o no: ")

if str == str[::-1]:
    print("Si soy un palindromo")
else:
    print("No soy un palindromo")


