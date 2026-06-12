import os
os.system("cls")
NP = (input("Digite o nome do produto: "))
Q = int(input("Digite a quantidade do produto: "))
P = float(input("Digite o preço do produto: "))

NP1 = (input("Digite o nome do 2 produto: "))
Q1 = int(input("Digite a quantidade do 2 produto: "))
P1 = float(input("Digite o preço do 2 produto: "))

NP2 = (input("Digite o nome do 3 produto: "))
Q2 = int(input("Digite a quantidade do 3 produto: "))
P2 = float(input("Digite o preço do 3 produto: "))

resp = (Q * P)
print("Seu ou seus: ", resp)
resp1 = (Q1 * P1)
print("Seu ou seus: ", resp1)
resp2 = (Q2 * P2)
print("Seu ou seus: ", resp2)
resp3 = (Q * P) + (Q1 * P1) + (Q2 * P1)
print("Sua compra deu: ", resp3)
