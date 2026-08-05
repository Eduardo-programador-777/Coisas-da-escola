import os
import funcoes
os.system("cls")

# uso
while True:
    nota1 = float(input("Nota 1: ")) # 4
    if funcoes.verificar_nota_valida(nota1):
        break
    else:
        print(f"A nota {nota1} é invalida!")


while True:
    nota2 = float(input("Nota 2: ")) # 4
    if funcoes.verificar_nota_valida(nota2):
        break
    else:
        print(f"A nota {nota2} é invalida!")

while True:
    nota3 = float(input("Nota 3: ")) # 4
    if funcoes.verificar_nota_valida(nota3):
        break
    else:
        print(f"A nota {nota3} é invalida!")

media = funcoes.calcular_media(nota1, nota2, nota3)

print("Media: ", media)

if media >= 6:
    print("Aprovado!")
else:
    print("Reprovado!")
