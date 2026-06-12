import os
os.system("cls")

# fatiamento -> pegar parte de uma lista
#           0   1   2   3   4   5   6   7   8    9 
#         -10  -9  -8  -7  -6  -5  -4  -3  -2   -1
numeros = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
print(numeros[5])
print(numeros[-2])
parte_numeros = numeros[3: 7]
print(numeros)
print(parte_numeros)
parte_numeros = numeros[-5: -2]
print(numeros)
print(parte_numeros)
print(numeros[4: 8], numeros)
print(numeros[1: 8])
print(numeros[1: 8: 2])
print(numeros[-7: -1: 3])
print(numeros[0:9])
#           0   1   2   3   4   5   6   7   8    9 
#         -10  -9  -8  -7  -6  -5  -4  -3  -2   -1
numeros = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
print(numeros[0:])
print(numeros[-3:])
print(numeros[::2])
print(numeros[::-1])







