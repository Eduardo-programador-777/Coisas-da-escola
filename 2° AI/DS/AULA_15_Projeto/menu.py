#Crie um menu em python,com a opção "Sair" , "Cadastras funcionario" e "Exibir arquivo"
#A opção um do menu devera gravar as informaçoes: nome, idade, profissão e salario
#Ao gravar no arquivo as informações devem ficar separadas por "," (sem espaço)


import os
os.system('cls')
a = 0
total_palavras = 0
total_caracteres = 0

while True:
    print(""" ----------Funcionários----------
      0 - Sair
      1 - Cadastras Funcionário
      2 - Exibir Arquivo
      3 - Exibe Registro
      4 - Consultar por Nome
      5 - Contar palavras do arq
      6 - Contar caracteres do arq
      7 - Gravar em outro arq s/ carac. especial     
--------------------------------
          """)
    escolha = int(input("Digite sua opção: "))

    match escolha:
        case 0:
            print("Obrigado por usar o código!")
            break

        case 1:
            arq = open ("Func.txt", "a", encoding = "utf-8")
            print("Cadastre seu funcionário: ")
            nome = input("Qual o nome: ")
            idade = int(input("Digite a idade: "))
            profi = input("Digite a profissão: ")
            salario = float(input("Digite o salário: "))
            
            arq.write(f"{nome},{idade},{profi},{salario}")
            arq.write("\n")
            arq.close()
            
            
        
        case 2:
            arq = open("Func.txt", "r", encoding="utf-8")
            print(arq.read())
            arq.close()

        case 3:
            with open("Func.txt", "r", encoding="utf-8") as arquivo:
                for linha in arquivo:
                    lista = linha.split(",")
                    if len(lista) == 4:
                     print(f"Nome: {lista[0]}")
                     print(f"Idade: {lista[1]}")
                     print(f"Profissão: {lista[2]}")
                     print(f"Salário: {lista[3]}")
                     print("-------------------------------")

        case 4:
            proc_nom = input("Digite o nome que quer procuar: ")

            with open("Func.txt", "r", encoding="utf-8") as arquivo:
                encontrou = False
                for linha in arquivo:
                 lista = linha.split(",")
                if lista[0] == proc_nom:
                     print(f"Nome: {lista[0]}")
                     print(f"Idade: {lista[1]}")
                     print(f"Profissão: {lista[2]}")
                     print(f"Salário: {lista[3]}")
                    
                encontrou = True
                if encontrou == False:
                    print("Nenhum usuário encontrado")
                    continue

        case 5:
            total_palavras = 0
            with open("Func.txt", "r", encoding="utf-8") as arq:
                for linha in arq:
                    total_palavras += len(linha.split(","))
            print(f"O total de palavras eh: {total_palavras}")            

        case 6:
            with open("Func.txt", "r", encoding="utf-8") as arq:
                conteudo = arq.read()
                total_caracteres = len(conteudo)
                print(f"O total de caracteres eh: {total_caracteres}") 

        case 7:
            
            with open ("Func.txt", "r", encoding="utf-8") as arq:
                conteudo = arq.read()
            carac_sp = [",", ".", "!", "?", "@", "#", "$", "%", "(", ")", "-", "_", "+", "="]

            for char in carac_sp:
                conteudo = conteudo.replace (char, "")
            
            with open ("Func2.txt", "w", encoding = "utf-8") as arq2:
                arq2.write(conteudo)

            print ("Arquivo limpo das pestes inferiores!")  
            print(arq2)  


        case _:
            print("Erro! Digite uma opção valida!")
            continue

        
