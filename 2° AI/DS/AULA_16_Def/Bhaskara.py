import os
os.system("cls")
while True:
    a = int(input("digite o valor de a: "))
    if a==0:
        print("isso não é uma equação de segundo grau")
        continue
    b = int(input("digite o valor de b: "))
    c = int(input("digite o valor de c: "))

    delta = (b**2)-4*a*c

    if delta < 0:
        print("delta deu negativo")
        continue

    x1 = (-b + delta**0.5)/2*a
    x2 = (-b - delta**0.5)/2*a
    if x1 == x2:
        print(f"Delta = {delta}, X1 e X2 = {x1}")
    else:
        print(f"Delta = {delta}, X1 = {x1}, X2 = {x2}")
    break
