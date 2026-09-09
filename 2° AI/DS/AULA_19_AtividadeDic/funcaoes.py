import os
os.system("cls")
# =================== SUBALGORITMOS
def cadastra_nova_chave(d: dict, nc: str, c:str) -> None:
    d[nc] = c

def existe_key(d: dict, nc: str) -> bool:
    return nc in d
        
def exibir_dict(d: dict) -> None:
    for k, v in d.items():
        print(f"{k}\t:{v}")

# =================== PRINCIPAL

pessoa = {
    'nome': 'Edson',
    'idade': 52
}
exibir_dict(pessoa)
nova_chave = input("Nova chave: ")
conteudo = input("Conteudo: ")
if existe_key(pessoa, nova_chave):
    print("Já exite!")
else: 
    cadastra_nova_chave(pessoa, nova_chave, conteudo)
    exibir_dict(pessoa)

