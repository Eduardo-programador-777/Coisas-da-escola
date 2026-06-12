#Eduardo Marassatti Sassone e Gabriel Ferreira 2 A.I
import os
os.system("cls")

lista1 = [34, 78, 56, 34, 12]

numero = int(input("Digite um número: "))

if numero in lista1:
    print(f"a. Existe! Lista[{lista1.index(numero)}] = {numero}")
    print("b. Numero de ocorrencias: ", lista1.count(numero))
    
media = sum(lista1) / 5
print("c. Media: ", media)

mediana = (12 + 78) / 2
print("d. Mediana: ", mediana)






