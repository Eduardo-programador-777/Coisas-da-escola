import os
os.system("cls")

#                         4   5   6
def verificar_menor_valor(n1, n2, n3):
    menor = n1
    if n2 < menor:
        menor = n2

    if n3 < menor:
        menor = n3
    
    return menor # 4

#                  4   5   6
def calcular_media(n1, n2, n3):
    #        (4  +  5 +  6 - 4) / 2
    _media = (n1 + n2 + n3 - verificar_menor_valor(n1, n2, n3)) / 2
    return _media

# uso
nota1 = float(input("Nota 1: ")) # 4
nota2 = float(input("Nota 2: ")) # 5
nota3 = float(input("Nota 3: ")) # 6

media = calcular_media(nota1, nota2, nota3)

print("Media: ", media)

if media >= 6:
    print("Aprovado!")
else:
    print("Reprovado!")
