import os
os.system("cls")

# ------ ARQUIVOS TEXTO
# Modos de abertura
# 'w' | write - gravação

"""
Conceitos:
- open() - Abre um arquivo em todos os modos
Sintaxe:
<objeto> = open(<arquivo_magnético>, <forma_abertura>)
- write() - grava uma linha em um arquivo
"""

# Gravando dados em um arquivo
def gravar_arquivo(na: str) -> None:
    with open(na, "a", encoding="utf-8") as arquivo:
        print("Digite o nome ou ENTER em nome para finalizar...")
        while True:
            print(30 * '-')
            nome = input("Nome: ")
            if nome == '':
                break
            else:
                idade = int(input("Idade: "))
                altura = float(input("Altura:"))
                arquivo.write(f"{nome},{idade},{altura}\n")

def listar_arquivo(na: str) -> None:
    with open(na, "r", encoding="utf-8") as arquivo:
        for linha in arquivo:
            # "Edson,45,1.9"
            lista = linha.split(',')
            #             0       1     2
            # lista = ["Edson", "45", "1.9"]
            print(30 * '-')
            print(f"Nome.........: {lista[0]}")
            print(f"Idade........: {lista[1]}")
            print(f"Altura.......: {lista[2]}")

# Exercício:
'''
Faça um menu com as duas opções acima:
1 - Gravar linhas
2 - Listar arquivo
3 - Pesquisar 
    a. Nome
    b. Idade
        a. Simples
            Idade -> Pesquisar
        b. maior ou igual
            Idade -> Pesquisar
        c. Menor ou igual
            Idade -> Pesquisar
        d. Entre
            inicio: _
            fim: _
            -> pesquisar as idades neste intervalo

    c. Altura
        a. Simples
            Altura -> Pesquisar
        b. maior ou igual
            Altura -> Pesquisar
        c. Menor ou igual
            Altura -> Pesquisar
        d. Entre
            inicio: _
            fim: _
            -> pesquisar as alturas neste intervalo

Escolha: _3

Nome: Edson

<se existir, exibir o registro>

<se não existir, informar>

'''

def exibir_linha(l: list) -> None:
    print("Registro:" + 30 * '-' )
    print(f"Nome.........: {l[0]}")
    print(f"Idade........: {l[1]}")
    print(f"Altura.......: {l[2]}")
    print(30 * '-')

def pesquisar_nome(na: str, n: str) -> None:
    with open(na, "r", encoding="utf-8") as arquivo:
        encontrou = False
        for linha in arquivo:
            lista = linha.split(',')
            if lista[0] == n:
                exibir_linha(lista)
                encontrou = True
        return encontrou

# programa principal
os.system("cls")
nome_arquivo = "arquivo.txt"
nome_procurado = "Joaninha"
if not pesquisar_nome(nome_arquivo, nome_procurado):
    print(f"O nome '{nome_procurado}' não existe no arquivo")
    




