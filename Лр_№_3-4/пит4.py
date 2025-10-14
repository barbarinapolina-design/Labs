a=int(input())
b=int(input())
d=0
bt=0
for i in range(a):
    c=str(input())
    t=float(input())
    if t<=b:
        d+=1
    if (bt==0) or (t<bt):
        bt=t
        bc=c
print("Количество выполнивших норматив: ",d)
if bt > 0:
    print("Лучший результат: ", {bt:.2}," минут")
    print("Фамилия спортсмена с лучшим результатом: ", bc)
else:
    print("Нет даннхы о спортсменах")