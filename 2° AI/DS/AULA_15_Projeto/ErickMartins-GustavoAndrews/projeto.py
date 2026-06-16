
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

    match escolha: 
        case 0:
            with open(arquivo, "w") as arq:
                ...  # nao faz nada
            print("Arquivo limpo. Programa encerrado.")
        
            break

        case 1:
            linha = input("Digite o conteúdo: ")

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
            print(arq.read())
            arq.close()
            
        case 4:
            with open (arquivo, "r", encoding="utf-8") as arq:
                lista = arquivo.split("\n")
                print (lista)
            





            
            

        