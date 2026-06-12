# Exercício:
# Considerando que uma pessoa comprou 3 produtos diferentes,
# peça a ela: Nome do produto, quantidade, valor parcial.
# Ao finalizar, peça a ela o valor total.
import os
os.system("cls")

produto1 = input("Produto 1:")
qtd1 = int(input("Quantidade 1:"))
v_unitario1 = float(input("Unitario 1:"))
tot1 = v_unitario1 * qtd1

produto2 = input("Produto 2:")
qtd2 = int(input("Quantidade 2:"))
v_unitario2 = float(input("Unitario 2:"))
tot2 = v_unitario2 * qtd2

produto3 = input("Produto 3:")
qtd3 = int(input("Quantidade 3:"))
v_unitario3 = float(input("Unitario 3:"))
tot3 = v_unitario3 * qtd3

produto1 = "abc"
produto2 = "sdfgsdafsa"
produto3 = "werwe qwe rqew r eqw"
qtd1 = 100
qtd2 = 23
qtd3 = 4
v_unitario1 = 23.587
v_unitario2 = 323.5873434
v_unitario3 = 4423.5
v_total = tot1 + tot2 + tot3

print()
print("PRODUTO             QTD VALOR UNITARIO TOTAL")
print(f"{produto1} {qtd1} {v_unitario1} ")
print(f"{produto2} {qtd2} {v_unitario2} ")
print(f"{produto3} {qtd3} {v_unitario3} ")

print()

print("PRODUTO                QTD   VALOR UNITARIO TOTAL      VALOR TOTAL ")
print(f"|{produto1:20s}| {qtd1:03d} | R${v_unitario1:12.2f} |               |")
print(f"|{produto2:20s}| {qtd2:03d} | R${v_unitario2:12.2f} | R${v_total:12.2f}|")
print(f"|{produto3:20s}| {qtd3:03d} | R${v_unitario3:12.2f} |               |")











'''
produto = "Caderno"
valor = 45.97687
qtd = 34
print(f"Produto:|{produto:20s}|")
print(f"Produto:|{qtd:5d}|")
print(f"Produto:|{qtd:05d}|")
print(f"Produto:|{valor:.2f}|")
print(f"Produto:|{valor:10.2f}|")
print(f"Produto:|{valor:010.2f}|")
'''