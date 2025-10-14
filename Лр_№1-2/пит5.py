print("Введите вес гантелей")
a=int(input())
b=int(input())
c=int(input())
if (a>b) and (a>c):
    if (b<c): print("Разница весов", a-b)
    else: print("Разница весов", a-c)
else:
    if (b>c): print("Разница весов", b-a)
    else: print("Разница весов", c-a)