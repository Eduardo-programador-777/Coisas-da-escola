import os


def pausar():
    os.system("pause")


def exibir_dicionario(dicionario):
    if dicionario:
        print("\n------ Conteúdo do dicionário")
        for k, v in dicionario.items():
            print(f"{k}{'.' * (12 - len(k))}: {v}")
        print("----------------------------")
    else:
        print("\n------ Conteúdo do dicionário")
        print("              VAZIO!")
        print("----------------------------")


def zerar_dicionario(dicionario):
    dicionario.clear()
    print(">>>>> Dicionário zerado!")
    pausar()


def adicionar_key(dicionario):
    opcaokey = input("\nNome da key: ")

    if opcaokey in dicionario:
        print(">>>>> Chave já existe!")
        pausar()
        return

    tipo = input("""
1 - int
2 - float
3 - str
4 - bool

Selecione: """)

    match tipo.lower():

        case "1" | "int":
            conteudo = input("conteudo em INT: ")

            if conteudo == "" or conteudo == " ":
                conteudo = 0

            try:
                conteudo = int(conteudo)
            except ValueError:
                print("Digite um número válido")
                pausar()
                return

            dicionario[opcaokey] = conteudo
            print(f"'{opcaokey}: {conteudo}' criado com sucesso!")
            pausar()

        case "2" | "float":
            conteudo = input("conteudo em FLOAT: ")

            if conteudo == "":
                conteudo = 0.0

            try:
                conteudo = float(conteudo)
            except ValueError:
                print("Digite um número válido")
                pausar()
                return

            dicionario[opcaokey] = conteudo
            print(f"'{opcaokey}: {conteudo}' criado com sucesso!")
            pausar()

        case "3" | "str":
            conteudo = input("conteudo em STR: ")

            if conteudo == "" or conteudo == " ":
                conteudo = " "

            try:
                float(conteudo)
                print("Digite um texto, não um número.")
                print("Caso queira converter um número para texto,")
                print("digite entre aspas. Ex: '123'")
                pausar()
                return
            except ValueError:
                conteudo = str(conteudo)

            dicionario[opcaokey] = conteudo
            print(f"'{opcaokey}: {conteudo}' criado com sucesso!")
            pausar()

        case "4" | "bool":
            conteudo = input("conteudo em BOOL: ")

            if conteudo == "" or conteudo == "0" or conteudo == " ":
                conteudo = False
            else:
                conteudo = True

            dicionario[opcaokey] = conteudo
            print(f"'{opcaokey}: {conteudo}' criado com sucesso!")
            pausar()

        case _:
            print(">>>>> Tipo inválido!")
            pausar()


def escolher_chave(dicionario):
    print("\nKeys:")

    contador = 1

    for k, v in dicionario.items():
        print(f"{contador} - {k}: {v}")
        contador += 1

    try:
        num_chave = int(input("\nNúmero da chave: "))
    except ValueError:
        print(">>>>> Entrada inválida! Digite um número.")
        pausar()
        return None

    if 1 <= num_chave <= len(dicionario):
        contador = 1

        for k in dicionario:
            if contador == num_chave:
                return k
            contador += 1

    print(f"\n>>>>> '{num_chave}' é um número de chave inválido!")
    pausar()
    return None


def editar_value(dicionario):
    if not dicionario:
        print("\n>>>>> O dicionário está vazio!")
        pausar()
        return

    key_escolhida = escolher_chave(dicionario)

    if key_escolhida is None:
        return

    valor_atual = dicionario[key_escolhida]

    novo_input = input("\nNovo valor: ")

    try:
        if type(valor_atual) == bool:

            if novo_input == "" or novo_input == "0" or novo_input == " ":
                novo_valor = False
            else:
                novo_valor = True

        elif type(valor_atual) == int:
            novo_valor = int(novo_input)

        elif type(valor_atual) == float:
            novo_valor = float(novo_input)

        else:
            novo_valor = str(novo_input)

        dicionario[key_escolhida] = novo_valor

        exibir_dicionario(dicionario)

    except ValueError:
        print("\n>>>>> Erro ao converter o valor para o tipo correspondente!")

    pausar()


def remover_key(dicionario):
    if not dicionario:
        print("\n>>>>> O dicionário está vazio!")
        pausar()
        return

    key_escolhida = escolher_chave(dicionario)

    if key_escolhida is None:
        return

    del dicionario[key_escolhida]

    print("\nChave removida com sucesso!")
    exibir_dicionario(dicionario)

    pausar()


def menu():
    print("""
 M E N U
 --------
0 - Sair
1 - Zerar o dicionário
2 - Adicionar a key
3 - Editar uma value
4 - Remover uma key 
5 - Exibe o dicionário
""")


def main():
    dicionario = {}

    while True:
        os.system("cls")

        menu()

        opcao = input("    Escolha: ")

        match opcao:

            case "0":
                print(">>>>> Processando saída")
                break

            case "1":
                zerar_dicionario(dicionario)

            case "2":
                adicionar_key(dicionario)

            case "3":
                editar_value(dicionario)

            case "4":
                remover_key(dicionario)

            case "5":
                exibir_dicionario(dicionario)
                pausar()

            case _:
                print(">>>>> Opção inválida! Digite um número entre 0 e 5.")
                pausar()


main()