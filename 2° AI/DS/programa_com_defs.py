import json
import os

arquivo = "Pessoas.json"
pessoas = []

def carregar_pessoas():
    global pessoas
    if os.path.exists(arquivo):
        with open(arquivo, "r", encoding="utf-8") as f:
            pessoas = json.load(f)

def salvar_pessoas():
    with open(arquivo, "w", encoding="utf-8") as f:
        json.dump(pessoas, f, indent=4, ensure_ascii=False)

def cadastrar():
    id_pessoa = input("ID: ")

    if id_pessoa == "":
        print("O ID não pode ficar vazio!")
        return

    for pessoa in pessoas:
        if pessoa["id"] == id_pessoa:
            print("ID já cadastrado!")
            return

    nome = input("Nome: ")

    if nome == "" or any(caractere.isdigit() for caractere in nome):
        print("Nome inválido! Não pode conter números ou ficar vazio.")
        return

    try:
        idade = int(input("Idade: "))
        if idade < 0:
            print("Idade inválida!")
            return
    except ValueError:
        print("Idade inválida!")
        return

    try:
        salario = float(input("Salário: ").replace(",", "."))
        if salario < 0:
            print("Salário inválido!")
            return
    except ValueError:
        print("Salário inválido!")
        return

    pessoa = {
        "id": id_pessoa,
        "nome": nome,
        "idade": idade,
        "salario": salario
    }

    pessoas.append(pessoa)
    salvar_pessoas()
    print("Cadastro realizado!")

def listar():
    if len(pessoas) == 0:
        print("Nenhuma pessoa cadastrada!")
        return

    print(f"{'ID':10} | {'NOME':20} | {'IDADE':7} | {'SALÁRIO':10}")
    print("-" * 55)

    for pessoa in pessoas:
        print(f"{pessoa['id']:10} | {pessoa['nome']:20} | {pessoa['idade']:7d} | {pessoa['salario']:10.2f}")

def buscar_por_id(id_pessoa):
    for pessoa in pessoas:
        if pessoa["id"] == id_pessoa:
            return pessoa
    return None

def buscar():
    id_pessoa = input("ID para buscar: ")
    print()
    encontrado = buscar_por_id(id_pessoa)

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

def editar():
    id_pessoa = input("ID da pessoa para editar: ")
    print()
    encontrado = buscar_por_id(id_pessoa)

    if encontrado is None:
        print("Pessoa não encontrada!")
        return

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
        if any(caractere.isdigit() for caractere in nome):
            print("Nome inválido! Não pode conter números.")
            return
        encontrado["nome"] = nome

    if idade != "":
        try:
            nova_idade = int(idade)
            if nova_idade < 0:
                print("Idade inválida!")
                return
            encontrado["idade"] = nova_idade
        except ValueError:
            print("Idade inválida!")
            return

    if salario != "":
        try:
            novo_salario = float(salario.replace(",", "."))
            if novo_salario < 0:
                print("Salário inválido!")
                return
            encontrado["salario"] = novo_salario
        except ValueError:
            print("Salário inválido!")
            return

    salvar_pessoas()
    print("Pessoa editada!")

def excluir():
    id_pessoa = input("ID da pessoa para excluir: ")
    print()
    encontrado = buscar_por_id(id_pessoa)

    if encontrado is None:
        print("Pessoa não encontrada!")
        return

    print("Registro que será excluído:")
    print("ID:", encontrado["id"])
    print("Nome:", encontrado["nome"])
    print("Idade:", encontrado["idade"])
    print("Salário:", encontrado["salario"])

    confirmar = input("Confirma a exclusão? (s/n): ")

    if confirmar == "s" or confirmar == "S":
        pessoas.remove(encontrado)
        salvar_pessoas()
        print("Pessoa excluída!")
    else:
        print("Exclusão cancelada!")

def iniciar():
    carregar_pessoas()

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
            cadastrar()
        elif opcao == "2":
            listar()
        elif opcao == "3":
            buscar()
        elif opcao == "4":
            editar()
        elif opcao == "5":
            excluir()
        else:
            print("Opção inválida!")

iniciar()