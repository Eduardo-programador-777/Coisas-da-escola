import os
os.system('cls')

'''
1.
lista1 = [0] * 10
lista2= [0] * 10
tam = 0

i = 0
while i < 10:
    x = int(input("Digite os valores para somar: "))
    lista1[i] = x
    i = i + 1

for i in range(len(lista1)):
    rep = 0
    for j in range(tam):
        if lista1[i] == lista2[j]:
            rep = 1
    if rep == 0:
        lista2[tam] = lista1[i]  
        tam = tam + 1
for i in range(tam):
    for j in range(tam - 1):
        if lista2[j] > lista2[j + 1]:
            aux = lista2[j]
            lista2[j] = lista2[j + 1]
            lista2[j + 1] = aux
resultado = []
for i in range(tam):
    resultado = resultado + [lista2[i]] 
print(resultado)
'''

