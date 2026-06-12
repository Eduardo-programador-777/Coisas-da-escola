import os
os.system("cls")
'''
# ARQUIVOS TEXTO
# Modo de abertura | Descrição
# --------------------------------
# "w" - write  | Cria (ou recria) um arquivo para exibição
# "r" - read   | Lê um arquivo existente

# Sintaxe para abertura de arquivos - open()
# [objeto] = open(nome_arquivo, modo_abertura, ...)

# Gravação no arquivo
arq = open("arq01.txt", "w", encoding="utf-8")
arq.write("teste!") # escreve no arquivo
arq.write("\nnova linha") # escreve no arquivo
arq.close()

# Leitura do arquivo
arq = open("arq01.txt", "r", encoding="utf-8")
print(arq.read()) # lê todo arquivo
arq.close()

# Inicializar nome do arquivo
file_name = None
'''
while True:
    print("""
0- Sair
1- Nome do arquivo (acrescente via codigo .txt)
2- Gravar arquivos (grave algo que o usuario digitou)
3- Ler arquivos (se existir)
""")
    resp = int(input("Digite a opção desejada: "))
    if resp == 0:
        print("Obrigado por usar o programa!")
    if resp == 1:
        nome_arquivo = input("Digite o nome do arquivo (sem extensão): ") + ".txt"
    if resp == 2:
        try:
            arq = open(nome_arquivo, "w", encoding="utf-8")
            arq.write(input('Digite o conteudo que deseja colocar no arquivo: '))
            arq.close()
        except FileNotFoundError:
            print('ERRO! Arquivo não existe')
        except:
            print('ERRO!! CRIE UM ARQUIVO')
    if resp == 3:
        try:
            print(nome_arquivo)
            arq = open(nome_arquivo, "r", encoding="utf-8")
            print(arq.read())
        except FileNotFoundError as arquivo_não_existente:
            print(arquivo_não_existente)
            print('crie o arquivo!!')
        except:
            print('ERRO!')
        else:
            print(nome_arquivo)
            print(arq.read())
            arq.close()
        finally:
            print('Obrigado por usar')

