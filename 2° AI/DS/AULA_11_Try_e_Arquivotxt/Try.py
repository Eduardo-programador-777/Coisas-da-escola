import os
os.system("cls")

try: #rotina a ser executada
    n = int(input("Numero: "))
except: #Se houver algum erro
    print("Ocorreu um erro!")

try:
    n1 = int(input("Numero 1: "))
    n2 = int(input("Numero 2: "))
    resp = n1/n2
except ValueError as errovalor:
    print(errovalor)
except ZeroDivisionError:
    print("Não ha divisão por zero")
except: #encontra os demais erros
    print("Erro: chama a NASA")
else:
    print(resp)
finally:
    print("Obrigado por usar o nosso sistema")