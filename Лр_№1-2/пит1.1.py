import math
print("Введите значения катета и гипотенузы")
a=int(input())
b=int(input())
c=math.sqrt(b*b-a*a)
d=a/b
e=c/b
f=a/c
g=c/a
print('sin=',d,' cos=',e,' tg=',f,' ctg=',g)