import os
os.system("cls")

vetor = [34, 56, 23, 12, 34, 66, 44, 22]

print(vetor)

somavetor = 0

for i in range(0, len(vetor), 1):
    somavetor += vetor[i]
    print(f"v[{i}] = {vetor[i]}")
    
print("Soma dos vetores: ", somavetor)

mediavetor = somavetor / 8

print("Media dos vetores: ", mediavetor)

for i in range(0, len(vetor), 1):