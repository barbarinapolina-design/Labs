import random
a = [random.randint(-52, 65) for _ in range(20)]
print("Массив:", a)

max = a[0]
maxi = 0
for i in range(20):
    if a[i] > max:
        max = a[i]
        maxi = i
print("Самый большой: ", max, "на позиции ", maxi + 1)

min = 1000
mini = -1
for i in range(20):
    if a[i] > 0 and a[i] < min:
        min = a[i]
        mini = i
if min != 1000:
    print("Самый маленький положительный: ", min, "на позиции ", mini + 1)
else:
    print("Положительных нет")

last5 = -1
for i in range(20):
    if a[i] % 5 == 0:
        last5 = i
if last5 != -1:
    print("Последний кратный 5 на позиции: ", last5 + 1)
else:
    print("Кратных 5 нет")

