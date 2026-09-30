#Davi Ribeiro Calado e Eduardo Marassatti Sassone
import os
os.system("cls")

aluno_notas = {
    'Nome': '',
    'Nota1': '',
    'Nota2': '',
    'Nota3': '',
    'media': '',
    'situacao': '',
}
while True:
    print(30 * "_")
    nome = str(input("Nome: "))
    if nome == "":
        print("Digite algo valido!")
        continue
    nota1 = float(input("Nota1: "))
    if nota1 < 0.0 or nota1 > 10.0 or nota1 == "":
        print("Digite uma nota válida!")
        continue
    nota2 = float(input("Nota2: "))
    if nota2 < 0.0 or nota2 > 10.0 or nota2 == "":
        print("Digite uma nota válida!")
        continue
    nota3 = float(input("Nota3: "))
    if nota3 < 0.0 or nota3 > 10.0 or nota3 == "":
        print("Digite uma nota válida!")
        continue
    print(30 * "_")

    aluno_notas['Nome'] = nome
    aluno_notas['Nota1'] = nota1
    aluno_notas['Nota2'] = nota2
    aluno_notas['Nota3'] = nota3

    if nota1 < nota2 and nota1 < nota3:
        media = (nota3 + nota2) / 2
        aluno_notas['media'] = media

    elif nota2 < nota1 and nota2 < nota3:
        media = (nota3 + nota1) / 2
        aluno_notas['media'] = media

    elif nota3 < nota1 and nota3 < nota2:
        media = (nota1 + nota2) / 2
        aluno_notas['media'] = media

    if media >= 7:
        situacao = ("Aprovado")
        aluno_notas['situacao'] = situacao

    elif media < 7 and media >= 4:
        situacao = ("Exame")
        aluno_notas['situacao'] = situacao

    elif media < 4:
        situacao = ("Reprovado")
        aluno_notas['situacao'] = situacao

    print(30 * "_")
    print("Status:")
    print(f"Nome: {nome}")
    print(f"Media: {media}")
    print(f"Situação: {situacao}")
    print(30 * "_")
    break



