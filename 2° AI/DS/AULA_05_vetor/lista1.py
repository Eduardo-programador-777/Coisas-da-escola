import os
os.system("cls")

lista = list()

# append() -> insere um elemento no final da lista
lista.append("2AI")
lista.append(10)
lista.append(25.4)
lista.append("Prova 8,(")

print(lista)

# insert(posição, elemento) -> insere um elemento na lista em dada posição
lista.insert(7,"Primeiro")
print(lista)

# pop([posicao]) -> remove um elemento da lista
elem = lista.pop()
print(lista, elem)

# remove(elemnto) -> remove o elemento pelo conteudo
lista.remove("2AI")
print(lista)

# index(elemento) - Retorna o indice do elemento
indice = lista.index(25.4)
print(indice)

# count(elemento) -> conta quanto elementos especificos existem
os.system("cls")
lista = [45, 12, "Edson", True, 12]
qtd = lista.count(125)
print(qtd)

# len(objeto) -> conta quantos elemento há no objeto
qtd = len(lista)
print(qtd)


'''
len(lista) # função
lista.count(5) # método
'''

# sum(objeto) - somaos elementos de uma lista N U M É R I C A
lista = [45, 12, 12, 34.5]
print(sum(lista))
