import json
import os

arquivo = "Pessoas.json"
pessoas = []

if os.path.exists(arquivo):
    with open(arquivo, "r", encoding="utf-8") as f:
        pessoas = json.load(f)

while True:
    print("""
-----MENU-----
0 - SAIR
1 - Cadastrar
2 - Listar
3 - Buscar
4 - Editar
5 - Excluir
-------------
""")
    opcao = input("Escolha: ")
    print()

    if opcao == "0":
        print("Programa encerrado!")
        break

    elif opcao == "1":
        id_pessoa = input("ID: ")

        if id_pessoa == "":
            print("O ID não pode ficar vazio!")
        else:
            existe = False
            for pessoa in pessoas:
                if pessoa["id"] == id_pessoa:
                    existe = True
                    break

            if existe:
                print("ID já cadastrado!")
            else:
                nome = input("Nome: ")
                idade = int(input("Idade: "))
                salario = float(input("Salário: "))

                pessoa = {
                    "id": id_pessoa,
                    "nome": nome,
                    "idade": idade,
                    "salario": salario
                }

                pessoas.append(pessoa)

                with open(arquivo, "w", encoding="utf-8") as f:
                    json.dump(pessoas, f, indent=4, ensure_ascii=False)

                print("Cadastro realizado!")

    elif opcao == "2":
        if len(pessoas) == 0:
            print("Nenhuma pessoa cadastrada!")
        else:
            print(f"{'ID':10} | {'NOME':20} | {'IDADE':7} | {'SALÁRIO':10}")
            print("-" * 55)
            for pessoa in pessoas:
                print(f"{pessoa['id']:10} | {pessoa['nome']:20} | {pessoa['idade']:7d} | {pessoa['salario']:10.2f}")

    elif opcao == "3":
        id_pessoa = input("ID para buscar: ")
        print()
        encontrado = None

        for pessoa in pessoas:
            if pessoa["id"] == id_pessoa:
                encontrado = pessoa
                break

        if encontrado is not None:
            print("Registro encontrado:")
            print("-" * 20)
            print("ID:", encontrado["id"])
            print("Nome:", encontrado["nome"])
            print("Idade:", encontrado["idade"])
            print("Salário:", encontrado["salario"])
            print("-" * 20)
        else:
            print("Pessoa não encontrada!")

    elif opcao == "4":
        id_pessoa = input("ID da pessoa para editar: ")
        print()
        encontrado = None

        for pessoa in pessoas:
            if pessoa["id"] == id_pessoa:
                encontrado = pessoa
                break

        if encontrado is not None:
            print("Registro encontrado:")
            print("ID:", encontrado["id"])
            print("Nome:", encontrado["nome"])
            print("Idade:", encontrado["idade"])
            print("Salário:", encontrado["salario"])
            print("Digite os novos dados. O ID não será alterado.")

            nome = input("Novo nome: ")
            idade = input("Nova idade: ")
            salario = input("Novo salário: ")

            if nome != "":
                encontrado["nome"] = nome
            if idade != "":
                encontrado["idade"] = int(idade)
            if salario != "":
                encontrado["salario"] = float(salario)

            with open(arquivo, "w", encoding="utf-8") as f:
                json.dump(pessoas, f, indent=4, ensure_ascii=False)

            print("Pessoa editada!")
        else:
            print("Pessoa não encontrada!")

    elif opcao == "5":
        id_pessoa = input("ID da pessoa para excluir: ")
        print()
        encontrado = None

        for pessoa in pessoas:
            if pessoa["id"] == id_pessoa:
                encontrado = pessoa
                break

        if encontrado is not None:
            print("Registro que será excluído:")
            print("ID:", encontrado["id"])
            print("Nome:", encontrado["nome"])
            print("Idade:", encontrado["idade"])
            print("Salário:", encontrado["salario"])

            confirmar = input("Confirma a exclusão? (s/n): ")

            if confirmar == "s" or confirmar == "S":
                pessoas.remove(encontrado)
                with open(arquivo, "w", encoding="utf-8") as f:
                    json.dump(pessoas, f, indent=4, ensure_ascii=False)
                print("Pessoa excluída!")
            else:
                print("Exclusão cancelada!")
        else:
            print("Pessoa não encontrada!")

    else:
        print("Opção inválida!")
