import os
os.system("cls")

#Exercicio 1.
def cont_carac(frase):
    return len(frase)

#Exercicio 2.
def contar_vogais(frase):
    vogais = "aeiouAEIOUáéíóúÁÉÍÓÚãõÃÕâêîôûÂÊÎÔÛàèìòùÀÈÌÒÙ"
    contador = 0
    for letra in frase:
        if letra in vogais:
            contador += 1
    return contador

#Exercicio 3.
def qtd_frase (frase):
    palavra = frase.split()
    return len(palavra)

#Exercicio 4.
def trocar_digitos (frase):
    nova = ""
    for c in frase:
        if c >= '0' and c <= '9':
            nova += "?"
        else:
            nova += c
    return nova

#Exercicio 5.
def revert (frase):
    return frase[::-1]

#Exercicio 6.
def pegar_range(frase):
    while True:
        inicio = int(input("Digite o início: "))
        fim = int(input("Digite o fim: "))

        if inicio < 0 or fim > len(frase) or inicio >= fim:
            print("Range inválido! Tente novamente.")
        else:
            print("Resultado:", frase[inicio:fim])
            break

#Exercicio 7.
def palavras_curta(frase):
    lista = []
    palavras = frase.split()

    for p in palavras:
        if len(p) <= 4:
            lista.append(p)

    return lista



#Rodar

frase = input("Digite uma frase: ")

print (f"Quantidade de caracteres é: ", cont_carac(frase))
print (f"Quantidade de vogais é: ", contar_vogais(frase))
print (f"Quantidade de palavras é: ", qtd_frase(frase))
print (f"Troca de Digitos: ", trocar_digitos(frase))
print (f"Frase inversa: ", revert(frase))
pegar_range(frase)

print("Palavras com até 4 letras:", palavras_curta(frase))
