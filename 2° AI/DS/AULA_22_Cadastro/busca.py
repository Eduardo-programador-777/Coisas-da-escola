import json
import os
os.system("cls")
arquivo = "pessoas.json"

if os.path.exists(arquivo):
    # abre o arquivo para leitura

    with open(arquivo, 'r', encoding="utf-8") as f:
        # coonverte o json em uma lista de dicionarios
        pessoas = json.load(f) # se existir ele gera uma lista com dados

    cpf = input("CPF: ")

    encontrado = None

    # percorrer os registros
    for pessoa in pessoas:
        if pessoa['cpf'] == cpf:
            encontrado = pessoa
            break

    # verifica se encontrou a pessoa
    if encontrado is not None:
        print(f"""
        CPF: {encontrado['cpf']}
        Nome: {encontrado['nome']}
        Idade: {encontrado['idade']}
        Salário: {encontrado['salario']}
        """)
    else:
        print("Pessoa não encontrada!")
else:
    print("Arquivo não encontrado!")
