import os
os.system("cls")
# CRIAÇÃO DOS SUBALGORITMOS
# Def cria tanto função quanto procedimento
# ----- Procedimentos
def saudacao() -> None:
    print("Bom dia Edson!")

def saudacao2(usuario: str) -> None:
    print(f"Bom dia {usuario}!")

def saudacao3(usuario: str, hora: int) -> None:
    if hora < 12:
        msg = "Bom dia"
    elif hora < 18:
        msg = "Boa tarde"
    else:
        msg = "Boa noite"
    print(f"{msg} {usuario}!")
# ----- Funções
def maior2n(n1: float, n2: float) -> float:
    if n1 > n2:
        return n1
    else:
        return n2

def media3n(n1: float, n2: float, n3: float) -> float:
    return (n1 + n2 + n3) / 3

# PROGRAMA PRINCIPAL
saudacao()
saudacao2("Marion")
saudacao3("José", 14)
print(maior2n(6,3))
m = media3n(6,5,4)
print(m)

"""
Exercícios:
Faça um subalgoritmo que:
1. Retorne o maior entre 3 numeros
x = maior3n(4, 7, 5) # x valerá 7

2. Retorne a somatoria de 5 numeros
x = maior3n(4, 7, 5, 3, 1) # x valerá 20

3. Retorne o numero intermediário entre 3 passados
x = intermediario(4, 2, 9) # x valerá 4

4. Exiba 3 numeros passados em ordem crescente
ordem_crescente(6,2,3) # exibirá 2 3 6

5. Exiba 3 numeros passados em ordem decrescente
ordem_decrescente(6,2,3) # exibirá 6 3 2

6. Passados 3 numeros e a ordenação (C-Crescente ou D-Decrescente),exiba os numeros na ordem escolhida
ordenacao(5,9,7,'d') # exibirá 9 7 5
"""