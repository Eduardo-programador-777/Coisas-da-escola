'''
create database petshop;

use petshop;

create table petshop (
    id int Primary key identity,
    tipo_pet varchar(50),
    nome_pet varchar(50),
    idade int,
);
'''

import pyodbc # pip install pyodbc
import pandas as pd # pip install pandas
import os
os.system("cls")


def listar_pets() -> None:
    lista_dados = []
    inst_consulta.execute("select * from petshop")
    data = inst_consulta.fetchall() # Carrega todos os registros no objeto data

    """ data
    1   cachorro  bob john      4     
    2        cao     Maria      4     
    3       gato      bela      6     
    4      peixe      nemo      1 

    dt =  2          1     Maria      4 
    ["1   cachorro  bob john      4  ", "2          1     Maria      4 " ]
    """


    # Insere os valores da tabela na lista
    for dt in data:
        lista_dados.append(dt) 

    #Odena a lista
    lista_dados = sorted(lista_dados)

    #gera um dataFrame com os dados da lista utilizando pandas
    dados_df = pd.DataFrame.from_records(lista_dados, columns = ['Id', 'Tipo', 'Nome', 'Idade'], index = 'Id')

    #verifica de não há registros de dados no dataFrame
    if dados_df.empty:
        print("-Não há pets cadastrados-")
    else:
        print(dados_df)
    input("pressione algo para continuar. . .")


#Programa principal
try:
    #Configurar as informações de conexãi
    server = 'localhost'
    database = 'petshop'
    username = 'sa'
    password = '*123456HAS*'
     
    #  Estabelecer Conexão
    conn = pyodbc.connect('DRIVER={SQL Server};SERVER='+server+';DATABASE='+database+';UID='+username+';PWD='+password)
    inst_cadastro = conn.cursor() # objeto que aceita a instrução sql
    inst_consulta = conn.cursor()
    inst_exclusao = conn.cursor()
    inst_exclusao_porId = conn.cursor()
    inst_alteracao = conn.cursor()


except Exception as e:
    print("Erro: ", e)
    conexao = False # flag -> se é possível ou não executar o sistema
else:
    conexao = True 
    print("Conexão efetuada com sucesso!")


while conexao:
    os.system("cls")
    print("MENU")
    print("0 - SAIR")
    print("1 - CADASTRAR PETS")
    print("2 - LISTAR PETS")
    print("3 - EDITAR PET")
    print("**4 - EXCLUIR PET") # FAzer
    print("**5 - EXCLUIR TODOS OS PETS") # fazer


    escolha = int(input("Escolha: "))
    os.system("cls")
    match escolha:
        case 0:
            conexao = False
        case 1: 
            try:
                #Coletando os dados do usuário
                tipo = str(input("Insira o tipo de Pet: "))
                nome = str(input("Insira o nome do PET: "))
                idade = int(input("Insira a idade do seu Pet: "))

                # Montando a instruçaõ SQL em uma string
                cadastro = f"""
                INSERT INTO petshop (tipo_pet, nome_pet, idade)
                VALUES('{tipo}', '{nome}', {idade})
                """
                inst_cadastro.execute(cadastro) #Executa a instrução no banco de dados 
                conn.commit()
            except ValueError:
                print("Digite uma idade numérica!")
            except:
                print("Erro em alguma transação na tabela")
            else:
                print("Dados gravados com sucesso!")
        
        case 2:

            listar_pets()

        case 3:
            lista_dados = []
            inst_consulta.execute("select * from petshop")
            data = inst_consulta.fetchall()
            
            for dt in data:
                lista_dados.append(dt)

            lista_dados = sorted(lista_dados)

            print(lista_dados)
            dados_df = pd.DataFrame.from_records(lista_dados, columns={'Id', 'Tipo', 'Nome', 'Idade'}, index='Id')

            if dados_df.empty:
                print("Nao ha pets cadastrados")
            else:
                print(dados_df)

                    """ data
                    1   cachorro  bob john      4     
                    2        cao     Maria      4     
                    3       gato      bela      6     
                    4      peixe      nemo      1 
                    """

                try:
                    id_pet = int(input('Digite o id do pet a ser alterado: ')) 
                    # verificar se o id existe antes de prosseguir
                    # select com where (0 - 1)
                    tipo=input('Tipo do pet:')
                    nome=input('Nome do pet:')
                    idade=int(input('Idade do pet:'))

                    inst_alteracao.execute(f"update petshop set tipo_pet='{tipo}', nome_pet='{nome}', idade={idade} where id={id_pet}")
                    conn.commit()
                except ValueError:
                    print('Digite uma idade valida')
                except Exception as e:
                    print('ta errado isso ai'+e)
                else:
                    input("alteração efetuada")
        
            
