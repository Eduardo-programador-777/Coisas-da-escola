def exibir_menu() -> None:
    print("\n0 - Sair")
    print("1 - Gravar linha no arquivo")
    print("2 - Contar quantas palavras com 5 letras há no arquivo")


def gravar_linha(nome_arquivo: str, texto: str) -> None:
    with open(nome_arquivo, "a") as arq:
        arq.write(texto + "\n")


def contar_palavras_5_letras(nome_arquivo: str) -> int:
    contador = 0

    try:
        with open(nome_arquivo, "r") as arq:
            for linha in arq:
                palavras = linha.split()

                for palavra in palavras:
                    if len(palavra) == 5:
                        contador += 1

        return contador

    except FileNotFoundError:
        return -1


def limpar_arquivo(nome_arquivo: str) -> None:
    with open(nome_arquivo, "w") as arq:
        pass


# Programa principal
arquivo = "Arq.txt"

while True:
    exibir_menu()
    opcao = input("Escolha: ")

    if opcao == "0":
        limpar_arquivo(arquivo)
        print("Arquivo limpo. Programa encerrado.")
        break

    elif opcao == "1":
        texto = input("Digite o conteúdo: ")
        gravar_linha(arquivo, texto)
        print("Linha gravada com sucesso!")

    elif opcao == "2":
        quantidade = contar_palavras_5_letras(arquivo)

        if quantidade == -1:
            print("O arquivo não existe.")
        else:
            print(f"Quantidade de palavras com 5 letras: {quantidade}")

    else:
        print("Opção inválida!")