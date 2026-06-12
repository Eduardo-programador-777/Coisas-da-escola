import os
os.system("cls")

# modos de abertura: w, r, a, (x), (+), with
# x - gravação de arquivo
# + - permite operações de leitura e gravacao
"""
with open("dados.txt", "w+", encoding="utf-8") as arq:
    arq.write("Linha gravada 1\n")
    arq.write("Linha gravada 2\n")
    arq.write("Linha gravada 3\n")
    arq.write("Linha gravada 4\n")
    arq.seek(0) # movimenta o cursor no arquivo texto
    #print(arq.read())
    print(arq.readline()) #captura do cursor até o final da linha
    arq.seek(0)
    linhas = arq.readlines() # cria uma lista e joga cada linha em um elemento

    print(linhas)
    print(linhas[2], len(linhas[2]))
    # "Linha gravada 3"
    x = linhas[2].split()
    # x = ["Linha", "gravada", "3"]
    print(x)
    # ["Linha", "gravada", "3"]
    texto = "".join(x)
    # "Linhagravada3"
    print(texto)
    arq.write(texto)


with open("cidades.txt", "w+", encoding="utf-8") as arq:
    cidades = ["São paulo\n", "rio de janeiro\n", "Recife\n"]
    arq.writelines(cidades)
"""

def grava_linhas_arquivo(na: str, l: list) -> None:
    with open(na, "w+", encoding="utf-8") as arq:
        arq.writelines(l)
    print(f"Arquivo '{na}' gravado com sucesso!")

# principal
nome_arquivo = "abc.txt"
cidades = ["São paulo\n", "goias\n", "rio de janeiro\n", "Recife\n"]
grava_linhas_arquivo(nome_arquivo, cidades)