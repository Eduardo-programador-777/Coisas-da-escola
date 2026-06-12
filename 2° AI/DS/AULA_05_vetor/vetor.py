import os
os.system("cls")
#         0   1   2   3   4   5 <--- índices
vetor = [34, 56, 23, 12, 34, 66, 44, 22]

print(vetor)

for i in range(0, len(vetor), 1):
    print(f"v[{i}] = {vetor[i]}")

vetor[0] = int(input("Valor: "))

print(vetor)

# Exercicios:
# 1. Calcular a soma dos elementos do vetor
# 2. Calcular a media dos elementos
# 3. Exibir somente os elementos pares
# 4. Exibir os elementos cujos indices sejam impares 