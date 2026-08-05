import os
os.system("cls")

def calcular_media():
    menor = nota1
    if nota2 < menor:
        menor = nota2

    if nota3 < menor:
        menor = nota3

    _media = (nota1 + nota2 + nota3 - menor) / 2

    return _media


nota1 = float(input("Nota 1: "))
nota2 = float(input("Nota 2: "))
nota3 = float(input("Nota 3: "))

media = calcular_media()

print("Media: ", media)

if media >= 6:
    print("Aprovado!")
else:
    print("Reprovado!")
