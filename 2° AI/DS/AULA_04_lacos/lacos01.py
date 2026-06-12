import os
os.system("cls")
# Pré-condicional: while
# usando o else e break
"""
x = 1
while x <= 10:
    if x == 5:
        break # força a saida do laco (interrompe)
    else:
        print(f"{x} ", end = "")
    x = x + 1
else: # [OPCIONAL] Executa se ao finalizar o laco ele não for interrompido
    print("A")
print("B")
"""

# usando o "do while" continue
# o programa abaixo obriga  usuário a digitar um numero positivo
"""
while True:
    num = int(input("Digite um numero positivo: ")) # -8
    if num < 0:
        print("Erro, digite um numero positivo!")
        continue
    else:
        break 
else:
    print("A") # nunca será executado

print(num)
"""

# contador: for
        #   range(valor inicial, valor final - 1, incremento)
for cont in range(-6, 15, 1):
    print(cont, end = " ")