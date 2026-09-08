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
    opcao = (input("    Escolha: "))

    match opcao:

        case "0":
            print(">>>>> Processando saída")
            break
        case "1":
            dicionario = {}
            print(">>>>> Dicionário zerado!")
            os.system("pause")
        case "2":
            opcaokey = str(input("\nNome da key: "))
            if opcaokey in dicionario:
                print('>>>>> Chave já existe! ')
                continue     
            tipo = (input("""
1 - int
2 - float
3 - str
4 - bool

Selecione: """))
            match tipo.lower():
                case "1" | "int":
                    conteudo = input("conteudo em INT: ")
                    if conteudo == "" or conteudo == " ":
                        conteudo = 0
                    try: 
                        conteudo = int(conteudo)
                    except ValueError:
                        print("digite um número válido")
                        continue
                    conteudo = int(conteudo)
                    dicionario[opcaokey] = conteudo
                    print(f"'{opcaokey}: {conteudo}' criado com sucesso!")
                    os.system("pause")

                case "2" | "float":
                    conteudo = input("conteudo em FLOAT: ")
                    if conteudo == "":
                        conteudo = 0.0
                    try:
                        conteudo = float(conteudo)
                    except ValueError:
                        print("digite um número válido")
                        continue
                    conteudo = float(conteudo)
                    dicionario[opcaokey] = conteudo
                    print(f"'{opcaokey}: {conteudo}' criado com sucesso!")
                    os.system("pause")

                case "3" | "str":
                    conteudo = input("conteudo em STR: ")
                    if conteudo == "" or conteudo == " ":
                        conteudo = " "
                    try:
                        conteudo = float(conteudo)
                        print("digite um texto, não um número, caso queira que o número seja convertido para texto, digite o número entre aspas ex: '123'")
                        continue  
                    except ValueError:
                        conteudo = str(conteudo)
                        dicionario[opcaokey] = conteudo
                        print(f"'{opcaokey}: {conteudo}' criado com sucesso!")
                        os.system("pause")

                case "4" | "bool":
                    conteudo = input("conteudo em BOOL: ")
                    if conteudo == "" or conteudo == "0" or conteudo == " ":
                        conteudo = False
                    else:
                        conteudo = True
                    dicionario[opcaokey] = conteudo
                    print(f"'{opcaokey}: {conteudo}' criado com sucesso!")
                    os.system("pause")

        case "3":
            if not dicionario:
                print("\n>>>>> O dicionário está vazio!")
                os.system("pause")
                continue

            print("\nKeys:")
            contador = 1
            for k, v in dicionario.items():
                print(f"{contador} - {k}: {v}")
                contador += 1

            try:
                num_chave = int(input("\nNúmero da chave: "))
            except ValueError:
                print(">>>>> Entrada inválida! Digite um número.")
                os.system("pause")
                continue

            if 1 <= num_chave <= len(dicionario):
                contador = 1
                for k, v in dicionario.items():
                    if contador == num_chave:
                        key_escolhida = k
                        valor_atual = v
                        break
                    contador += 1

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

                    print("\n------ Conteúdo do dicionário")
                    for k, v in dicionario.items():
                        print(f"{k}{'.' * (12 - len(k))}: {v}")
                    print("----------------------------")

                except ValueError:
                    print("\n>>>>> Erro ao converter o valor para o tipo correspondente!")

            else:
                print(f"\n>>>>> '{num_chave}' é um número de chave inválido!")

            os.system("pause")

        case "4":
            if not dicionario:
                print("\n>>>>> O dicionário está vazio!")
                os.system("pause")
                continue
            
            print("\nKeys:")
            contador = 1
            for k, v in dicionario.items():
                    print(f"{contador} - {k}: {v}")
                    contador += 1
            
            try:
                num_chave = int(input("\nDeseja excluir qual chave?: "))
            except ValueError:
                print(">>>>> Entrada inválida! Digite um número.")
                os.system("pause")
                continue
            
            if 1 <= num_chave <= len(dicionario):
                contador = 1
                for k, v in dicionario.items():
                    if contador == num_chave:
                        key_escolhida = k
                        valor_atual = v
                        break
                    contador += 1
            if contador == num_chave:
                del dicionario[key_escolhida]
                print("\n------ Conteúdo do dicionário")
                for k, v in dicionario.items():
                    print(f"{k}{'.' * (12 - len(k))}: {v}")
                print("----------------------------")
            else:
                print(f"\n>>>>> '{num_chave}' é um número de chave inválido!")

            os.system("pause")

        case "5":
                if dicionario:
                    print("\n------ Conteúdo do dicionário")
                    for k, v in dicionario.items():
                        print(f"{k}{'.' * (12 - len(k))}: {v}")
                    print("----------------------------")
                else:   
                    print("\n------ Conteúdo do dicionário")
                    print("              VAZIO!")
                    print("----------------------------")
                os.system("pause")
        case _:
            print(">>>>> Opção inválida! Digite um número entre 0 e 5.")
            os.system("pause")              

                



            
            

                          


                    
                        





            
            




    
