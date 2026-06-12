import os
os.system("cls")

while True:
    print("""
 0 - Sair         
 1 - Cadastrar Funcionário          
 2 - Exibir Arquivo
 3 - Exibir Registros
 4 - Consultar por nome         """)
    opcao = int(input("Escolha uma opção: "))
    match opcao:
      case 0:
          break
      case 1:
        nomeU = str(input("Digite seu nome: "))
        idadeU = int(input("Digite sua idade: "))
        profissaoU = str(input("Digite sua profissão: "))
        salarioU = float(input("Digite seu salário: "))
        dados = "Cadastro" + ".txt"
        arq = open(dados, "a", encoding="utf-8")
        arq.write(f"{nomeU},{idadeU},{profissaoU},{salarioU}\n")
        arq.close()
      case 2:
          print(dados)
      case 3:
          dados = "Cadastro" + ".txt"
          with open("Cadastro.txt", "r", encoding="utf-8") as dados:
             for lista in dados:
                 lista = lista.split(",")
                 print(f"Nome = {lista[0]}")
                 print(f"Idade = {lista[1]}")
                 print(f"Profissão = {lista[2]}")
                 print(f"Salário = {lista[3]}")
      case 4:
          nome_lista = str(input("Digite o nome que quer encontrar: "))
          with open("Cadastro.txt", "r", encoding="utf-8") as dados:
            for lista in dados:
               lista = lista.split(",")
               if lista[0] == nome_lista:
                 print(f"Nome = {lista[0]}")
                 print(f"Idade = {lista[1]}")
                 print(f"Profissão = {lista[2]}")
                 print(f"Salário = {lista[3]}")
               break
            else:
               print("Não existe!")
               break
                  
        



