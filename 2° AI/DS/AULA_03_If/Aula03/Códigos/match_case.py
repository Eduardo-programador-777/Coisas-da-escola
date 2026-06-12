import os
os.system("cls")

dia_semana = 7
match dia_semana:
    case 1:
        print("Domingo")
    case 2:
        print("segunda")
    case 3:
        print("terca")
    case 4:
        print("quarta")
    case 5:
        print("quinta")
    case 6:
        print("sexta")
    case 7:
        print("sabado")
    case _:
        print("Numero invalido!")

dia_semana = "segunda"
match dia_semana:
    case "segunda":
        print("2")
    case "terca":
        print("3")
    case "quarta":
        print("4")
    case "quinta":
        print("5")
    case _:
        print("Numero invalido!")


dia_semana = "segunda"
match dia_semana:
    case "sabado" | "domingo":
        print("final de semana")
    case "segunda" | "terca" | "quarta":
        print("dia util")
    case _:
        print("dia invalido")

"""
Exercício:
faça uma calculadora com as operacoes: +, -, *, /, % e //
considere não poder dividir por zero.
"""\