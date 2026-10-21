import json
import os
os.system("cls")
arquivo = "pessoas.json"

if os.path.exists(arquivo):
    # abre o arquivo para leitura

    with open(arquivo, 'r', encoding="utf-8") as f:
        # coonverte o json em uma lista de dicionarios
        pessoas = json.load(f) # se existir ele gera uma lista com dados

    # verificar se existem registros
    if len(pessoas) == 0:
        print("Nenhuma pessoa cadastrada")
    else:
        print("------ listagem das pessoas ------")

        # percorre todos os registros
        print(f"{'CPF':14} | {'NOME':20} | {'IDADE':7} | {'SALARIO':8}")
        print(60 * "-")
        for pessoa in pessoas:
            print(f"{pessoa['cpf']:14} | {pessoa['nome']:20} | {pessoa['idade']:7d} | {pessoa['salario']:8.2f}")

else:
    print("Arquivo não encontrado!")