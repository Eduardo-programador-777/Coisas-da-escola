import os
os.system("cls")

# Subalgoritmos

# Exibe o menu
def exibir_menu() -> None:
    print("""
    M E N U
    -------
    0 - Sair
    1 - Zerar o dicionário
    2 - Adicionar uma key
    3 - Editar um value
    4 - Remover uma key
    5 - Exibe o dicionário""")

# Verifica se a chave existe no dicionário
def existe_chave(c: str, d: dict) -> bool:
    return c in d

# Verifica se selecionou ou digitou o tipo
def existe_tipo(tipo: str) -> bool:
    return tipo.lower() in ('1', 'int', '2', 'float', '3', 'str', '4', 'bool')

# Atribui value do tipo correto à chave, retornando o value tipado
def atribue_value(t: str) -> int | float | str | bool:  
    match t.lower():
        case '1' | 'int':
            v = 0 if valor == '' else int(valor)
        case '2' | 'float':
            v = 0.0 if valor == '' else float(valor)
        case '3' | 'str':
            v = "" if valor == '' else valor
        case '4' | 'bool':
            v = False if valor == '' else bool(valor)
    return v

# Apresente as keys existentes no formato de menu
def exibir_keys(d: dict) -> None:
    print("\nKeys:")
    for num, (k, v) in enumerate(d.items(), start=1):
        print(f"{num} - {k}: {v}")

# Verifica se o índice da chave é válido
def confere_chave_indice(d: dict, ce: str) -> bool:
    return int(chave_escolhida) <= len(dicionario)


# Efetua a atrubuição do valor na chave de acordo com o tipo
def edita_value(d: dict, ce: str, nv) -> None:
    chave = list(d.keys()) [int(ce) - 1]
    match d[chave]:
        case bool():
            d[chave] = bool(nv)
        case int():
            d[chave] = int(nv)
        case float():
            d[chave] = float(nv)
        case str():
            d[chave] = str(nv)

# Exibe o conteudo do dicionario
def exibe_dicionario(d: dict) -> None:
    print("\n----- Conteúdo do dicionário")
    for k, v in d.items():
        pontos = 12 - len(k)
        print(f"{k.capitalize()}{pontos * '.'}: {v}")
    if len(d) == 0: print("VAZIO!".center(28))
    print(28 * '-')

# remove a chave sem se procupar se o índice é válido
def remove_chave(d: dict, ce: str) -> None:
    chave = list(d.keys()) [int(ce) - 1]
    d.pop(chave)

# "Zerar o dicionario
def zerar_dicionario(d: dict, msg: str) -> None:
    d = {}
    print(msg)

# Principal
dicionario = {'nome': 'Edson', 'idade': 40}

while True:
    os.system("cls")

    # Exibir o menu
    exibir_menu()

    # Selecionar uma opção
    opcao = input("\n\tEscolha: ")

    # Verificar a opcao escolhida
    match opcao:
        case '0': # "0 - Sair"

            break # finalizar a apicação

        case '1': # "1 - Zerar o dicionário"

            zerar_dicionario(dicionario, "\n>>>>> Dicionário zerado!" )

        case '2': # "2 - Adicionar uma key"Adicionar uma nova Key"

            # Solicitar a chave
            chave = input("\nNome da key: ")
            chave = chave.lower()

            # verificar se a chave existe
            if existe_chave(chave, dicionario):

                # Se sim, informar a duplicitade
                print(f"\n>>>>> A key '{chave}' já existe!")
               
            
            else: # se não existir

                # Solicitar o tipo
                tipo = input("\n1 - int\n2 - float\n3 - str\n4 - bool\n\nSelecione: ")

                # Verificar se o tipo é válido
                if existe_tipo(tipo):

                    # Se sim, ler o valor como uma string
                    valor = input("\nConteudo: ")

                    # Converter o tipo e atribui à chave correspondente
                    dicionario[chave] = atribue_value(tipo)  

                    # Exibir a chave adicionada  
                    print(f"\n'{chave.capitalize()}: {dicionario[chave]}' criado com sucesso!")

                else: # Se não existir o tipo, advertir

                    print(f"O tipo '{tipo}' é inválido!!")
                    
        case '3': # "3 - Editar um value"

            # exibir o dicionário para selecionar uma chave
            exibir_keys(dicionario)

            # Solicitar a chave a ser editada
            chave_escolhida = input("\nNúmero da chave: ")

            # verificar se a chave é válida
            if confere_chave_indice(dicionario, chave_escolhida):

                # Pedir um novo valor para atribuir a chave
                novo_valor = input("\nNovo valor: ")

                # Editar o value
                edita_value(dicionario, chave_escolhida, novo_valor)

                # Exibir o dicionário
                exibe_dicionario(dicionario)

            else: # Se o numero da chave for inválido, advertir

                print(f"\n>>>>> '{chave_escolhida}' é um número de chave inválido!")

        case '4': # "Remover uma chave"

            # exibir o dicionário para selecionar uma chave
            exibir_keys(dicionario)

            # solicitar a chave a ser excluída 
            chave_escolhida = input("\nDeseja excluir qual chave? ")

            # Verificar se a chave existe
            if confere_chave_indice(dicionario, chave_escolhida):

                # Remover a chave
                remove_chave(dicionario, chave_escolhida)

                # Exibir o dicionário
                exibe_dicionario(dicionario)

            else: # se a chave não existir, advertir

                print(f"\n>>>>> '{chave_escolhida}' é um número de chave inválido!")

        case '5':
            exibe_dicionario(dicionario)
        case _: # Se digitou uma opção inválida do menu

            print(f"\n>>>>> '{opcao}' é uma opção inválida neste menu!")

    # Trava a tela
    input("\nPressione algo para continuar...\n")