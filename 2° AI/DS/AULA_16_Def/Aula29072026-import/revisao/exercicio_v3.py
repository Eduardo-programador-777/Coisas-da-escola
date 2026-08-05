import os
os.system("cls")

def calcular_media(n1, n2, n3):
    menor = n1
    if n2 < menor:
        menor = n2

    if n3 < menor:
        menor = n3

    _media = (n1 + n2 + n3 - menor) / 2

    return _media

# uso
nota1 = float(input("Nota 1: "))
nota2 = float(input("Nota 2: "))
nota3 = float(input("Nota 3: "))

media = calcular_media(nota1, nota2, nota3)

print("Media: ", media)

if media >= 6:
    print("Aprovado!")
else:
    print("Reprovado!")
