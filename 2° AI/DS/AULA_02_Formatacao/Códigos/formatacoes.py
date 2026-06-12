import os
os.system("cls")

nome = "Edson de Oliveira"
idade = 51
altura = 1.71

# print() -> depois de exibir ele muda de linha

# ======= FORMATAÇÕES DE STRINGS
# Forma 1 - Convencional
print(nome, idade, altura)
print("Nome: ", nome, "Idade: ", idade, "Altura", altura)
print("Nome: ", nome, "\nIdade: ", idade, "\nAltura", altura)

# Forma 2 - Usando + (concatenação de strings)
mae = "Ester"
print(nome + " " + mae)
print("Nome: " + nome + "Idade: " + str(idade) + "Altura: " + str(altura))

# Forma 3 - Usando a função format()
print("Nome: {0} {1}Idade: {1} Altura: {2}".format(nome, idade, altura))
print("Nome: {n} {a}\nIdade: {i} \nAltura: {a}".format(n=nome, i=idade, a=altura))

# Forma 4 - Usando o f print()
os.system("cls")
print("Nome: {nome} \nIdade: {idade} \nAltura: {altura}")
print(f"Nome: {nome} \nIdade: {idade} \nAltura: {altura}")

# Forma 5 - Usando triple quotes ''' ou """ (mais de uma linha)
"""
comentários
de multiplas
linhas
"""
os.system("cls")
print(f"Nome: {nome}", end = ".")
print(f"Idade: {idade}", end = ".")
print(f"Altura: {altura}", end = ".")

print(f"""
Nome: {nome}
Idade: {idade}
Altura: {altura}
""")

# Forma 6 - Utilizando o %
print("Nome: %s \nIdade: %d \nAltura: %f" % (nome, idade, altura))

# Exercício:
# Considerando que uma pessoa comprou 3 produtos diferentes,
# peça a ela: Nome do produto, quantidade, valor parcial.
# Ao finalizar, peça a ela o valor total.