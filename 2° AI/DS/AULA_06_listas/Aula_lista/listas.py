import os
os.system("cls")

# + -> junta as lista na ordem em que foram colocadas
lista1 = [1, 2, 3]
lista2 = [4, 5, 6]
lista3 = lista1 + lista2
lista2 = lista1 + lista2
print(lista1)
print(lista2)
print(lista3)

# extend() -> adiciona uma lista no final da outra
os.system("cls")
lista1 = [1, 2, 3]
lista2 = [4, 5, 6]
lista2.extend(lista1)
print(lista1)
print(lista2)

os.system("cls")
x = 6
y = 5
x = y
print("x = ",x,"y = ", y) # ? x=..... y:.....
l1 = [1, 3, 5]
l2 = [4, 5, 6]
l1 = l2
print("l1 = ", l1," l2 = ", l2) # ? l1=..... l2:.....
l1.append(7)
l2.append(8)
print("l1 = ", l1," l2 = ", l2) # ? l1=..... l2:.....

# copy() -> faz uma cópia de uma lista(objeto)
lista1 = [1, 2, 3]
lista2 = lista1.copy()
print(lista1, lista2)
lista1.append(7)
lista2.append(8)
print(lista1, lista2)

# sort() -> ordena uma lista numerica
os.system("cls")
lista = [45, 34, 98, 23, 12, -5]
print(lista)
lista.sort()
print(lista)
lista.sort(reverse = True)
print(lista)

lista5 = ["Abc", "Rfjete", "gdgg"]
lista5.sort()
print(lista5)

lista6 = ["01", "2", "111","1101"]
print(lista6)
lista6.sort()
print(lista6)

# reverse() -> inverte a ordem dos elementos
os.system("cls")
lista = [45, False, 98.7, "Edson", 12, -5]
print(lista)
lista.reverse()
print(lista)

'''
Pedir para o usuário preencher uma lista e mostrar os 
seguintes resultados:
lista original.........: [34, 23, -11, 45, 12]
Lista crescente........: [-11, 12, 23, 34, 45]
Lista decrescente......: [45, 35, 23, 12, -11]
Lista inversa..........: [12, 45, -11, 23, 34]

'''