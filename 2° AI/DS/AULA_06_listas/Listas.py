import os
os.system("cls")
'''lista1 = [1, 2, 3]
lista2 = [4, 5, 6]
lista2.extend(lista1)
print(lista1)
print(lista2)'''

x = 6
y = 5
x = y
print("x = ", x, "y = ", y)
l1 = [1, 2, 3]
l2 = [4, 5, 6]
l1 = l2
print("l1 = ", l1, "l2 = ", l2)
l1.append(7)
l2.append(8)
print("l1 = ", l1, "l2 = ", l2)

lista1 = [1, 2, 3]
lista2 = lista1.copy()
print(lista1, lista2)
lista1.append(7)
lista2.append(8)
print(lista1, lista2)

os.system("cls")
lista = [45, 68, 54, 67, 23, 1, 4]
print(lista)
lista.sort(reverse = False)
print(lista)
lista.sort(reverse = True)
print(lista)

lista4 = ["Abc", "Defg", "Hijk"]
lista4.sort()
print(lista4)

lista5 = ["101", "2", "1101", "01", "111"]
lista5.sort()
print(lista5)

lista6 = [23, 45, 67, 12, "Edson", 89, 0, 34]
print(lista6)
lista6.reverse()