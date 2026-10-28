
import json
import os

arquivo = "Pessoas.json"
pessoas = []


# gerar id automaticamente
def gerar_id(dados: list) -> int:
    codigos = []

    for pessoa in dados:
        try:
            codigo = int(pessoa.get("id", 0))
            codigos.append(codigo)
        except (ValueError, TypeError):
            continue

    if not codigos:
        return 1

    return max(codigos) + 1


# carregar pessoas do arquivo
def carregar_pessoas():
    global pessoas

    if os.path.exists(arquivo):
        try:
            with open(arquivo, "r", encoding="utf-8") as f:
                conteudo = json.load(f)

            if isinstance(conteudo, list):
                pessoas = conteudo
            else:
                pessoas = []
                print("Formato do arquivo inválido!")

        except (json.JSONDecodeError, OSError):
            pessoas = []
            print("Não foi possível carregar os dados.")


# salvar pessoas no arquivo
def salvar_pessoas():
    try:
        with open(arquivo, "w", encoding="utf-8") as f:
            json.dump(pessoas, f, indent=4, ensure_ascii=False)
    except OSError:
        print("Não foi possível salvar os dados!")


# cadastrar pessoa
def cadastrar():
    id_pessoa = gerar_id(pessoas)

    nome = input("Nome: ").strip()

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

    print(f"Cadastro realizado! ID da pessoa: {id_pessoa}")


# listar pessoas
def listar():
    if len(pessoas) == 0:
        print("Nenhuma pessoa cadastrada!")
        return

    print(f"{'ID':10} | {'NOME':20} | {'IDADE':7} | {'SALÁRIO':10}")
    print("-" * 55)

    for pessoa in pessoas:
        print(
            f"{str(pessoa['id']):10} | "
            f"{pessoa['nome']:20} | "
            f"{pessoa['idade']:7d} | "
            f"{pessoa['salario']:10.2f}"
        )


# buscar pessoa pelo id
def buscar_por_id(id_pessoa):
    for pessoa in pessoas:
        if str(pessoa["id"]) == str(id_pessoa):
            return pessoa

    return None


# buscar pessoa
def buscar():
    id_pessoa = input("ID para buscar: ").strip()
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


# editar pessoa
def editar():
    id_pessoa = input("ID da pessoa para editar: ").strip()
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

    nome = input("Novo nome: ").strip()
    idade = input("Nova idade: ").strip()
    salario = input("Novo salário: ").strip()

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


# excluir pessoa
def excluir():
    id_pessoa = input("ID da pessoa para excluir: ").strip()
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

    confirmar = input("Confirma a exclusão? (s/n): ").strip().lower()

    if confirmar == "s":
        pessoas.remove(encontrado)
        salvar_pessoas()
        print("Pessoa excluída!")
    else:
        print("Exclusão cancelada!")


# iniciar programa
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

        opcao = input("Escolha: ").strip()
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
