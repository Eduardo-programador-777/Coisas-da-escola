arquivo = "Arq.txt"

while True:
    print("\n0 - Sair")
    print("1 - Gravar linha no arquivo")
    print("2 - Contar quantas palavras com 5 letras há no arquivo")

    opcao = input("Escolha: ")

    if opcao == "0":
        with open(arquivo, "w") as arq:
            ...  # nao faz nada
        print("Arquivo limpo. Programa encerrado.")
        break

    elif opcao == "1":
        texto = input("Digite o conteúdo: ")

        with open(arquivo, "a") as arq:
            arq.write(texto + "\n")

        print("Linha gravada com sucesso!")

    elif opcao == "2":
        contador = 0
    
        try:
            with open(arquivo, "r") as arq:

                for linha in arq:
                    
                    palavras = linha.split()
                    
                    for palavra in palavras:
                        if len(palavra) == 5:
                            contador += 1

            print(f"Quantidade de palavras com 5 letras: {contador}")

        except FileNotFoundError:
            print("O arquivo não existe.")

    else:
        print("Opção inválida!")