import os
os.system("cls")

def ler_nota(nota):
    while True:
        nota = float(input("Nota 1: ")) # 4
        if verificar_nota_valida(nota):
            break
        else:
            print(f"A nota {nota} é invalida!")
    return nota

def verificar_nota_valida(nota: float) -> bool:
    return nota >= 0 and nota <= 10

#                         4   5   6
def verificar_menor_valor(n1: float, n2: float, n3: float) -> float:
    menor = n1
    if n2 < menor:
        menor = n2

    if n3 < menor:
        menor = n3
    
    return menor # 4

#                  4   5   6
def calcular_media(n1: float, n2: float, n3: float) -> float:
    #        (4  +  5 +  6 - 4) / 2
    _media = (n1 + n2 + n3 - verificar_menor_valor(n1, n2, n3)) / 2
    return _media

# uso
while True:
    nota1 = float(input("Nota 1: ")) # 4
    if verificar_nota_valida(nota1):
        break
    else:
        print(f"A nota {nota1} é invalida!")


while True:
    nota2 = float(input("Nota 2: ")) # 4
    if verificar_nota_valida(nota2):
        break
    else:
        print(f"A nota {nota2} é invalida!")

while True:
    nota3 = float(input("Nota 3: ")) # 4
    if verificar_nota_valida(nota3):
        break
    else:
        print(f"A nota {nota3} é invalida!")

media = calcular_media(nota1, nota2, nota3)

print("Media: ", media)

if media >= 6:
    print("Aprovado!")
else:
    print("Reprovado!")
