import os
os.system("cls")
i = 0
elem = 0
remov = 0
while True:
 print('''                    MENU
      0 - SAIR
      1 - Criar / Iniciar uma lista
      2 - Inserir um elemento na lista
      3 - Inserir elementos até digitar ponto(.)
      4 - Remover elemento pelo índice
      5 - Remover elemento pelo conteúdo
    '''  )
 opcao = int(input("\nDigite sua opção: "))

 match opcao:   
    case 0:
     print("Saiu")
     break

    case 1:
     if i == 0:
      i = 1
      print("Criando lista...")
      lista = []
     else:
      print(lista)
      
      

    case 2:
     if i == 1:
      elem = input("Digite um elemento: ")
      lista.append (elem)
     else:
      print("crie uma lista primeiro")
      continue
  

    case 3:
     if i == 1:
      while elem != ".":
       elem = input("Digite um elemento e digite '.' para sair: ")
       lista.append (elem)
       if elem == ".":
        lista.remove (".")
     else:
       print("crie uma lista primeiro")
       continue
      

    case 4:
     if i == 1:
      remov = int(input("Escolha um indice para remover: "))
      lista.pop (remov)
     else:
       print("crie uma lista primeiro")
       continue

    case 5:
     if i == 1:
      remov = input("Escolha um conteudo para remover: ")
      lista.remove (remov)
     else:
       print("crie uma lista primeiro")
       continue

    case _:
     print("Erro! Digite uma opção válida...")