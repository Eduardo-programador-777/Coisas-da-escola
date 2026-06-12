import os
os.system("cls")
i = 0
letra = 0
digito = 0
lis = [0, "0"]
tantan = input("escreva uma frase: ")
tantan = tantan.replace("a", "A")
tantan = tantan.replace("e", "E")
tantan = tantan.replace("i", "I")
tantan = tantan.replace("o", "O")
tantan = tantan.replace("u", "U")
print(tantan)

# 1
tantan = input("escreva uma frase: ")
resp1 = len(tantan)

print(resp1)

# 2
tantan = tantan.split()
print(len(tantan))

# 3
tantan = input("escreva uma frase: ")
print(len(tantan))


        
i = 0
for i in range (1, len(tantan), 1):
    lis[i] = tantan[i]

print(lis)



type(tantan)














# 4
tantan = input("escreva uma frase: ")
tantan2 = input("digite uma parte da frase que foi pedida anteriormente: ")
print(tantan.find(tantan2))