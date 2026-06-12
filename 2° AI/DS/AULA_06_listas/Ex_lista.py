import os
os.system("cls")
lista = []
print('Digite os valores da lista: ')
for i in range (1,6,1):
    x = int(input('Digite os valores da lista'))
    lista.append(x)
print(f'Lista original {lista}')
listac = lista.copy()
listac.sort()
print(f'Lista crescente: {listac}')
listac.sort(reverse= True)
print(f'Lista Descrente: {listac}')
listai = lista.copy()
