def exibir_dicionario(a: dict) -> None:
    print(f"Nome......: {a['nome']}")
    print(f"Idade.....: {a['idade']}")
    print(f"Curso.....: {a['curso']}")

def preenche_dicionario(a: dict) -> None:
    a['nome'] = input("Nome: ")
    a['idade'] = int(input("Idade: "))
    a['curso'] = input("Curso:")
# Fazer um procedimento que peca ao usuário para preencher o dicionario.


# principal
import os
os.system("cls")

aluno = {
    # key : value,
    'nome': 'Edson',
    'idade': 51,
    'curso': 'DS'
}
os.system("cls")
# Modificando o value no dicionario
aluno['idade'] = 30
print(aluno['idade'])

# Adicionando novas key
print(aluno)
aluno['nota'] = 10
print(aluno)

os.system("cls")
aluno = {
    # key : value,
    'nome': 'Edson',
    'idade': 51,
    'curso': 'DS'
}
print(aluno) # conteudo do dicionario
print(aluno.keys()) # cria um dicionario com as keys
for k in aluno.keys():
    print(k)


print(aluno.values()) # cria um dicionario com os valores
for v in aluno.values():
    print(v)

print(aluno.items())

for k, v in aluno.items():
    print(f"{k} -> {v}")

# update() Atualiza o dicionario com outro
print(aluno)
aluno.update({"nome": "Fernanda"})
print(aluno)
aluno.update({"CEP": "01012-999"})
print(aluno)

# clear: apaga o conteudo do dicionario
print(aluno)

aluno.clear()
print(aluno)



'''# Removendo uma key
os.system("cls")
print(aluno)
aluno.pop("curso")
print(aluno)
del aluno["idade"]
print(aluno)
'''
"""
dicionario = dict() # Cria um dicionário vazio
dicionario = {} # Cria um dicionário vazio
print(dicionario)


# preenche_dicionario(aluno)
exibir_dicionario(aluno)


print(aluno.get('nota'))

if aluno.get('nome') == None:
   print("Não existe")
else:
   print("existe")
   """