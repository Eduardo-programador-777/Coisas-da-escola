#Davi Ribeiro Calado e Eduardo Marassatti Sassone 2ºA.I
import os
os.system('cls')

arquivo = "Projeto.txt"
while True:
    print ('''
    --------------------------------------
    0 - Sair
    1 - Gravar linha
    2 - Gravar linhas
    3 - Exibir o conteudo do arquivo
    4 - Exibir uma linha dada pelo usuario
    5 - Contar palavras
    6 - Contar caracteres
    7 - Contar palavras com N letras
    8 - Contar palavras dadas pelo usuário
    ---------------------------------------''')

    escolha = int(input("Escolha: "))
    if escolha < 0 or escolha > 8:
        print("Opção inválida! Escolha uma opção entre 0 e 8.")

    else:

        match escolha: 
            case 0:
                with open(arquivo, "w") as arq:
                    ...  # nao faz nada
                print("Arquivo limpo. Programa encerrado.")
        
                break

            case 1:
                linha = input("Digite o conteúdo: ")
                if linha == "":
                    print("Você deve digitar algum conteúdo.")
                else:
                    with open(arquivo, "a") as arq:
                        arq.write(linha + "\n")

                print("Linha gravada com sucesso!")
            
            case 2:
                linhas = []
                print ("Digite suas linha e dê Enter em uma linha vazia para encerrar!!")

            
                while True:
                    
                    linha2 = input("Digite uma linha: ")
                    linhas.append(linha2 +"\n")
                    if linha2 == "":
                        break
                    with open(arquivo, "w") as arq:
                        arq.writelines(linhas)

                    print ("Linha adicionada!")

            case 3:
                arq = open(arquivo, "r")
                if conteudo.strip() == "":
                        print("O arquivo está vazio!")
                else:
                    print(arq.read())
                arq.close()
                
            case 4:
                with open (arquivo, "r", encoding="utf-8") as arq:
                    conteudo2 = arq.read()
                    if conteudo2.strip() == "":
                            print("O arquivo está vazio!")
                    else:
                        lista = conteudo2.split("\n")
                        exibir_linha = int(input("Digite a linha que quer ver: ")) - 1
                        if exibir_linha < 0 or exibir_linha >= len(lista):
                                print("Essa linha não existe!")
                        else:
                            print(f"Nessa linha esta escrito: {lista[exibir_linha]}")
                        arq.close()
            case 5:
                total_palavras = 0
                with open("Projeto.txt", "r", encoding="utf-8") as arq:
                    for linha in arq:
                        total_palavras += len(linha.split(","))
                print(f"O total de palavras eh: {total_palavras}")            

            case 6:
                with open("Projeto.txt", "r", encoding="utf-8") as arq:
                    conteudo = arq.read()
                    if conteudo.strip() == "":
                            print("O arquivo está vazio!")
                    else:
                        total_caracteres = len(conteudo)
                        print(f"O total de caracteres eh: {total_caracteres}")

            case 7:
                nletra = int(input("Digite o número de letras, e conte as palavras com essa quantidade: "))
                if nletra <= 0:
                        print("Digite um número maior que zero!")
                else:
                    with open("Projeto.txt", "r", encoding="utf-8") as arq:
                        ler = arq.read()
                        palavras = ler.split()
                        vezes = 0
                    for palavra in palavras:
                        if len(palavra) == nletra:
                            vezes = vezes + 1
                    print(f"O arquivo contém {vezes} palavras com {nletra} caracteres.")
            
            case 8:
                nletra = str(input("Digite a palavra que quer ver quantas vezes se repete: "))
                if nletra.strip() == "":
                        print("Digite uma palavra válida!")
                else:
                    with open("Projeto.txt", "r", encoding="utf-8") as arq:
                        ler = arq.read()
                        palavras = ler.split()
                        vezes = 0
                        for palavra in palavras:
                            if palavra == nletra:
                                vezes = vezes + 1
                                print(f"O arquivo contém {vezes} vez(es) a palavra: {nletra}.")                                          