#Davi Calado e Eduardo Marassatti 2ºA.I
import os
os.system("cls")

nome_arquivo = ("Att") + ".txt"

arq = open(nome_arquivo, "w", encoding="utf-8")

while True:
    print("""
0 - Sair
1 - Gravar linha no arquivo
2 - Contar palavras com 5 characteres                     
""")
    opcao = int(input("Escolha uma das opções: "))
    match opcao:
        case 0:
            break
        case 1:
            conteudo = str(input('Digite o conteudo que deseja colocar no arquivo: '))
            arq.write(f"{conteudo}\n")
        case 2:
           with open("Att.txt", "r", encoding="utf-8") as arq:
                ler = arq.read()
                palavras = ler.split()
                vezes = 0
                for palavra in palavras:
                    if len(palavra) == 5:
                        vezes = vezes + 1
                print(f"O arquivo contém {vezes} palavras com 5 caracteres.")



            
        