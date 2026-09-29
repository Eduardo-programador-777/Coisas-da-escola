def mostrar_menu() -> None:
    print("""
| ..... M E N U ..... |
| 1 - Gravar linhas   |
| 2 - Listar arquivo  |
| 3 - Pesquisar por   |
| ................... |
""")


def mostrar_submenu() -> None:
    print("""
a. Nome
b. Idade
c. Altura
""")


def mostrar_subsubmenu() -> None:
    print("""
a. Simples
b. maior ou igual
c. Menor ou igual
d. Entre
""")


def gravar_dados(na: str) -> None:
    with open(na, "a", encoding="utf-8") as arquivo:
        print("Digite o nome ou ENTER em nome para finalizar...")

        while True:
            print(25 * "*")
            nome = input("Nome: ")

            if nome == '':
                break
            else:
                idade = int(input("Idade: "))
                altura = float(input("Altura: "))
                arquivo.write(f"{nome},{idade},{altura}\n")


def listar_dados(na: str) -> None:
    with open(na, "r", encoding="utf-8") as arquivo:
        for linha in arquivo:
            lista = linha.strip().split(",")

            print(25 * "*")
            print(f"Nome.........: {lista[0]}")
            print(f"Idade........: {lista[1]}")
            print(f"Altura.......: {lista[2]}")
            print(25 * "*")


def exibir_registro(l: list) -> None:
    print("Registro:" + 25 * ".")
    print(f"Nome.........: {l[0]}")
    print(f"Idade........: {l[1]}")
    print(f"Altura.......: {l[2]}")
    print(25 * "*")


def buscar_nome(na: str, n: str) -> bool:
    with open(na, "r", encoding="utf-8") as arquivo:
        encontrou = False

        for linha in arquivo:
            lista = linha.strip().split(",")

            if lista[0] == n:
                exibir_registro(lista)
                encontrou = True

        return encontrou


def buscar_idade(na: str, id: int) -> bool:
    with open(na, "r", encoding="utf-8") as arquivo:
        encontrou = False

        for linha in arquivo:
            lista = linha.strip().split(",")

            if int(lista[1]) == id:
                exibir_registro(lista)
                encontrou = True

        return encontrou


def buscar_idade_maior(na: str, id: int) -> bool:
    with open(na, "r", encoding="utf-8") as arquivo:
        encontrou = False

        for linha in arquivo:
            lista = linha.strip().split(",")

            if int(lista[1]) >= id:
                exibir_registro(lista)
                encontrou = True

        return encontrou


def buscar_idade_menor(na: str, id: int) -> bool:
    with open(na, "r", encoding="utf-8") as arquivo:
        encontrou = False

        for linha in arquivo:
            lista = linha.strip().split(",")

            if int(lista[1]) <= id:
                exibir_registro(lista)
                encontrou = True

        return encontrou


def buscar_idade_entre(na: str, ini: int, fim: int) -> bool:
    with open(na, "r", encoding="utf-8") as arquivo:
        encontrou = False

        for linha in arquivo:
            lista = linha.strip().split(",")

            if int(lista[1]) >= ini and int(lista[1]) <= fim:
                exibir_registro(lista)
                encontrou = True

        return encontrou


def buscar_altura(na: str, alt: float) -> bool:
    with open(na, "r", encoding="utf-8") as arquivo:
        encontrou = False

        for linha in arquivo:
            lista = linha.strip().split(",")

            if float(lista[2]) == alt:
                exibir_registro(lista)
                encontrou = True

        return encontrou


def buscar_altura_maior(na: str, alt: float) -> bool:
    with open(na, "r", encoding="utf-8") as arquivo:
        encontrou = False

        for linha in arquivo:
            lista = linha.strip().split(",")

            if float(lista[2]) >= alt:
                exibir_registro(lista)
                encontrou = True

        return encontrou


def buscar_altura_menor(na: str, alt: float) -> bool:
    with open(na, "r", encoding="utf-8") as arquivo:
        encontrou = False

        for linha in arquivo:
            lista = linha.strip().split(",")

            if float(lista[2]) <= alt:
                exibir_registro(lista)
                encontrou = True

        return encontrou


def buscar_altura_entre(na: str, ini: float, fim: float) -> bool:
    with open(na, "r", encoding="utf-8") as arquivo:
        encontrou = False

        for linha in arquivo:
            lista = linha.strip().split(",")

            if float(lista[2]) >= ini and float(lista[2]) <= fim:
                exibir_registro(lista)
                encontrou = True

        return encontrou
