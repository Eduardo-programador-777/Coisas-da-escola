import os
os.system("cls")
#        0123456789012345678901234567 
frase = "Veremos agora os métodos de manipulação de strings." #lista de caracteres

# métodos para strings
# find(substring, inicio, fim) -> retorna o indice onde foi encontrada a substring
print(frase.find("agora")) # 8
print(frase.find("z")) # -1 se nao encontra
print(frase.find("o")) # 5 -> encontra o primeiro
print(frase.find("o", 10, 20)) # 5 -> encontra o primeiro

# join(lista_de_string) -> Transforma uma lista de string em uma string
#          0       1       2
nome = ["Edson", "de", "Oliveira"]
print(nome[1])
print(nome)
print(" ".join(nome))
print("-".join(nome))
print(".".join(nome))
print("Abacate".join(nome))

# split(string) -> contrário do join()
nome = "Edson de Oliveira"
print(nome.split())
print(nome.split('e'))
print(nome.split('de'))

# replace(procura)
nome = "Edson de Oliveira"
print(nome.replace('e', 'E'))
print(nome.replace('e', 'E', 1))
print(nome.replace(' ', 'agora o baguio ficou louco'))

# strip() -> elimina os espaços do inicio e fim
nome = "   Edson   "
print(f"|{nome}| |{nome.strip()}|")

# operador de identidade: in
num = 39
if num in [1, 2, 3, 4, 5, 6]:
    print(num, "existe na lista")
else:
    print(num, "não existe na lista") 

nome = "Edson de Oliveira"   
if "xx" in nome:
    print("existe na lista")
else:
    print("não existe na lista") 


# Exercicios:
# 1. peça para o usuário digitar uma frase etrnasforme todas as vogais 
# minusculas me maiúsculas
# 2. dada uma frase, mostre quantos caracteres e quantas palavras existem
# nesta frase
# 3. dada uma frase conte quantos digitos e quantas letras existem nesta frase
# 4. dada uma frase e um conteúdo, informe se este conteúdo existe na frase.
# 5. dada uma frase com letras alternadas entre maiusculas e minúsculas, inverta
# as letras.
# Exemplo:
# "Edson de Oliveira"
# "eDSON DE oLIVEIRA"





