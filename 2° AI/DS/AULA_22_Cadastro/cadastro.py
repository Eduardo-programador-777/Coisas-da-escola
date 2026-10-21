import os
import json

# --------- CADASTRAR PESSOAS

# nome do arquivo
arquivo = "pessoas.json"

# lista que armazenará os registros

pessoas = [] # se não existir cria uma lista vazia

if os.path.exists(arquivo):
    # abre o arquivo para leitura

    with open(arquivo, 'r', encoding="utf-8") as f:
        # coonverte o json em uma lista de dicionarios
        pessoas = json.load(f) # se existir ele gera uma lista com dados

# solicitar os dados ao usuário
cpf = input("Cpf: ")
nome = input("Nome: ")
idade = int(input("Idade: "))
salario = float(input("Salario: "))

# Verificar se o cpf já existe ou não
existe = False

for pessoa in pessoas:
    if pessoa["cpf"] == cpf:
        existe == True
        break

if existe:
    print("Cpf já está cadastrado! ")
else:
    # Criar um dicionario com dados
    pessoa = {
        'cpf': cpf,
        'nome': nome,
        'idade': idade,
        'salario': salario
    }

    # adiciona o dicionario à lista
    pessoas.append(pessoa)

    with open(arquivo, 'w', encoding="utf-8") as f:
        # grava a lista no formato json
        json.dump(pessoas, f, indent = 4, ensure_ascii = False)

print("Pessoa cadastrada!")


'''
[
    {
        'cpf': cpf,
        'nome': nome,
        'idade': idade,
        'salario': salario
    },
]
'''




