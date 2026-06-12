import os
os.system("cls")

# 01
"""
i = 1

num = int(input("Digite um nùmero: "))
num2 = int(input("Digite a quantidade de multiplos: "))
num2 = num2 + 1
for cont in range(num, num2):
    print (f"{num * i}")
    i = i+1
"""

# 02
"""
n = 0
while True:
    x = int(input('Digite valores para somar e 0 para somar tudo: '))
    if x == 0:
        break
    else:
        n += x
        continue
print(f'resultado: {n}')
"""
# 03
media = 0
menor = 0

nota1 = float(input("Digite a primeira nota: "))
nota2 = float(input("Digite a segunda nota: "))
nota3 = float(input("Digite a terceira nota: "))

if nota1 > 10:
    print ("erro!!")
if nota2 > 10:
    print ("erro!!")
if nota3 > 10:
    print ("erro!!")

menor = nota1

if nota2 < menor:
    menor = nota2

    if nota3 < menor:
        menor = nota3

        

soma = nota1 + nota2 + nota3
media = (soma - menor)/2


print (f"""

Nota 1 = {nota1}
Nota 2 = {nota2}
Nota 3 = {nota3}

""")
print (f"Media: {media}")