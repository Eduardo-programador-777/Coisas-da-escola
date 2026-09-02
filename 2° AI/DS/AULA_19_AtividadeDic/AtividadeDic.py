import os
os.system("cls")

dicionario = {}

while True:
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
    opcao = int(input("    Escolha: "))

    match opcao:

        case 0:
            print(">>>>> Processando saída")
            break
        case 1:
            dicionario = {}
            print(">>>>> Dicionário zerado!")
            os.system("pause")
        case 2:
            opcaokey = str(input("\nNome da key: "))
            tipo = (input("""
1 - int
2 - float
3 - str
4 - bool

Selecione: """))
            match tipo:
                case "1" | "int":
                    conteudo1 = input("conteudo: ")
                    if conteudo1 == "":
                        conteudo1 = "0"
                    try: conteudo = int(conteudo1)
                    except ValueError:
                        print("dig valid number")
                        continue
                    conteudo = int(conteudo)
                    dicionario[opcaokey] = conteudo
                    print(f"'{opcaokey}: {conteudo}' criado com sucesso!")

                case "2" | "float":
                    conteudo = input("conteudo: ")
                    if conteudo == "":
                        novoconteudo = ""
                        dicionario[opcaokey] = novoconteudo
                    else:
                        conteudo = str(conteudo)
                        dicionario[opcaokey] = conteudo
                        print(f"'{opcaokey}: {conteudo}' criado com sucesso!")
                        





            
            




    
