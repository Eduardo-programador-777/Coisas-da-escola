import os
os.system ("cls")
'''
Questão 1.
def maior3n(n1: float, n2: float, n3: float) -> float:
    if n1 > n2:
        return n1
    elif n1 > n3:
        return n1
    elif n2 > n3:
        return n2
    elif n3 > n1:
        return n3
    elif n3 > n2:
        return n3
    else:
        return n2

x = maior3n(4, 7, 5)
print(x)
'''
'''
Questão 2.
def soma1n(nu1: float, nu2: float, nu3: float, nu4: float, nu5: float) -> float:
    return (nu1 + nu2 + nu3+ nu4 + nu5)
y = maior4n(4, 7, 5, 3, 1)
print(y)
'''
'''
Questão 3.
def intermediario3n(n1: float, n2: float, n3: float) -> float:
    if n1 > n2 and n1 < n3:
        return n1
    elif n2 > n1 and n2 < n3:
        return n2
    elif n3 > n1 and n3 < n2:
        return n3
    else: 
        return n3
x = intermediario3n(4, 2, 9)
print(x)
'''
