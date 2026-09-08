import os
os.system("cls")
import FunçõesAtividade as Programa
dicionario = {}

while True:
        os.system("cls")

        Programa.menu()

        opcao = input("    Escolha: ")

        match opcao:

            case "0":
                print(">>>>> Processando saída")
                break

            case "1":
                Programa.zerar_dicionario(dicionario)

            case "2":
                Programa.adicionar_key(dicionario)

            case "3":
                Programa.editar_value(dicionario)

            case "4":
                Programa.remover_key(dicionario)

            case "5":
                Programa.exibir_dicionario(dicionario)
                Programa.pausar()

            case _:
                print(">>>>> Opção inválida! Digite um número entre 0 e 5.")
                Programa.pausar()
                

