import os
os.system("cls")
import base_cod as B

nome_arquivo = "Arquivo.txt"

while True:

    B.mostrar_menu()

    escolha = input("Escolha uma opção: ")

    match escolha:

        case "1":
            B.gravar_dados(nome_arquivo)

        case "2":
            B.listar_dados(nome_arquivo)

        case "3":
            B.mostrar_submenu()

            escolha2 = input("Escolha como quer procurar: ")

            match escolha2:

                case "a" | "A":
                    nome_procurado = input("Quem quer procurar: ")

                    if not B.buscar_nome(nome_arquivo, nome_procurado):
                        print(f"O nome '{nome_procurado}' não existe no arquivo")

                case "b" | "B":
                    B.mostrar_subsubmenu()

                    escolha3 = input("Escolha como quer procurar: ")

                    match escolha3:

                        case "a" | "A":
                            idade = int(input("Qual a idade: "))
                            B.buscar_idade(nome_arquivo, idade)

                        case "b" | "B":
                            idade = int(input("Qual a idade: "))
                            B.buscar_idade_maior(nome_arquivo, idade)

                        case "c" | "C":
                            idade = int(input("Qual a idade: "))
                            B.buscar_idade_menor(nome_arquivo, idade)

                        case "d" | "D":
                            ini_ida = int(input("Qual a idade inicial: "))
                            fim_ida = int(input("Qual a idade final: "))
                            B.buscar_idade_entre(nome_arquivo, ini_ida, fim_ida)

                case "c" | "C":
                    B.mostrar_subsubmenu()

                    escolha3 = input("Escolha como quer procurar: ")

                    match escolha3:

                        case "a" | "A":
                            altura = float(input("Qual a altura: "))
                            B.buscar_altura(nome_arquivo, altura)

                        case "b" | "B":
                            altura = float(input("Qual a altura: "))
                            B.buscar_altura_maior(nome_arquivo, altura)

                        case "c" | "C":
                            altura = float(input("Qual a altura: "))
                            B.buscar_altura_menor(nome_arquivo, altura)

                        case "d" | "D":
                            ini_alt = float(input("Qual a altura inicial: "))
                            fim_alt = float(input("Qual a altura final: "))
                            B.buscar_altura_entre(nome_arquivo, ini_alt, fim_alt)