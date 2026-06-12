import os
os.system("cls")

# 1. Pesquise a tabela das aliquotas do inss 2026 na internet, e faça um programa que dado o salário, calculo o valor pago de inss.

salario = float(input("Digite o salário: "))
if salario < 0:
    print("Erro: Digite um salário Válido!")
    exit()

print("Sálario válido")
dependentes = float(input("Digite o número de dependentes: "))

if salario <= 1621.00:
    INSS = (salario *  0.075)
elif salario <= 2902.84:
    INSS = (121.574 + (salario - 1621.00) * 0.09)
elif salario <= 4354.27:
    INSS = (1621.00 * 0.075) + ((2902.84 - 1621) * 0.09) + ((salario - 2902.84) * 0.12)
elif salario <= 8475.55:
    INSS = (1621.00 * 0.075) + ((2902.84 - 1621) * 0.09) + ((4354.27 - 2902.84) * 0.12) + ((salario - 4354.270) * 0.14)
elif salario >= 8475.55:
    INSS = 988.09
# 2. Pesquise a tabela das aliquotas do Imposto de renda 2026 na internet, e faça um programa que dado o salário, calculo o valor pago de IR.
    

BC = (salario - INSS) - (dependentes * 189.59)
if BC < 2428.80:
    IR = 0
    print("Isento")
elif BC <= 2826.65:  
    IR = (BC * 0.075) - 182.16
elif BC <= 3751.05:  
    IR = (BC * 0.15) - 394.16
elif BC <= 4664.68:  
    IR = (BC * 0.225) - 675.49
elif BC > 4664.68:  
    IR = (BC * 0.275) - 908.73        

SL = salario - INSS - IR
# 3. Dado um salário, calcule o desconto de INSS e IR, exibindo o salario bruto, INSS, IR, e salário líquido. Caso seja digitado um salário negativo, exibir "Digite um salário Válido!"

print("Sálario Bruto:", salario)
print("INSS:", INSS)
print("IR", IR)
print("Sálario Liquido:", SL)