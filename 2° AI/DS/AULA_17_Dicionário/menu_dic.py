import os
os.system("cls")

def inicializar_dicionario():
    dicionario = {}

    quantidade = int(input("Digite a quantidade de elementos: "))

    for i in range(quantidade):
        key = input(f"Digite a key {i + 1}: ")
        value = input(f"Digite o value {i + 1}: ")
        dicionario[key] = value

    return dicionario


def modificar_value(dicionario):
    if not dicionario:
        print("O dicionario esta vazio.")
        return

    key = input("Digite a key do value que deseja modificar: ")

    if key in dicionario:
        novo_value = input("Digite o novo value: ")
        dicionario[key] = novo_value
        print("Value modificado com sucesso.")
    else:
        print("Key nao encontrada.")


def modificar_key(dicionario):
    if not dicionario:
        print("O dicionario esta vazio.")
        return

    key = input("Digite a key que deseja modificar: ")

    if key in dicionario:
        nova_key = input("Digite a nova key: ")

        if nova_key in dicionario and nova_key != key:
            print("A nova key ja existe.")
        else:
            dicionario[nova_key] = dicionario.pop(key)
            print("Key modificada com sucesso.")
    else:
        print("Key nao encontrada.")


def remover_value(dicionario):
    if not dicionario:
        print("O dicionario esta vazio.")
        return

    key = input("Digite a key do value que deseja remover: ")

    if key in dicionario:
        del dicionario[key]
        print("Value removido com sucesso.")
    else:
        print("Key nao encontrada.")


def remover_key(dicionario):
    if not dicionario:
        print("O dicionario esta vazio.")
        return

    key = input("Digite a key que deseja remover: ")

    if key in dicionario:
        del dicionario[key]
        print("Key removida com sucesso.")
    else:
        print("Key nao encontrada.")


def listar_keys(dicionario):
    if not dicionario:
        print("O dicionario esta vazio.")
        return

    print("Keys:")

    for key in dicionario:
        print(key)


def listar_values(dicionario):
    if not dicionario:
        print("O dicionario esta vazio.")
        return

    print("Values:")

    for value in dicionario.values():
        print(value)


def exibir_dicionario(dicionario):
    print("Dicionario:")
    print(dicionario)


def menu():
    dicionario = {}

    while True:
        print()
        print("0 - Sair")
        print("1 - Inicializar o dicionario")
        print("2 - Modificar um value")
        print("3 - Modificar uma key")
        print("4 - Remover um value")
        print("5 - Remover uma key")
        print("6 - Listar as keys")
        print("7 - Listar os values")
        print("8 - Exibir o dicionario")

        try:
            opcao = int(input("\nEscolha: "))
        except ValueError:
            print("Digite uma opcao valida.")
            continue

        if opcao == 0:
            print("Programa encerrado.")
            break

        elif opcao == 1:
            try:
                dicionario = inicializar_dicionario()
                print("Dicionario inicializado com sucesso.")
            except ValueError:
                print("Digite uma quantidade valida.")

        elif opcao == 2:
            modificar_value(dicionario)

        elif opcao == 3:
            modificar_key(dicionario)

        elif opcao == 4:
            remover_value(dicionario)

        elif opcao == 5:
            remover_key(dicionario)

        elif opcao == 6:
            listar_keys(dicionario)

        elif opcao == 7:
            listar_values(dicionario)

        elif opcao == 8:
            exibir_dicionario(dicionario)

        else:
            print("Opcao invalida.")


menu()