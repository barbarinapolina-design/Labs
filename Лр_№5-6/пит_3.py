import random
a = [random.randint(-30, 70) for _ in range(20)]
print("Исходный массив:", a)
print()

pi = -1
for i in range(20):
    if a[i] > 0:
        p=a[i]
        pi = i
        break
print("Первый положительный элемент - ", p)
if pi != -1:
    a.pop(pi)
    print("Удалили первый положительный элемент:", a)
print()

min = a[0]
mini = 0
for i in range(19):
    if a[i] < min:
        min = a[i]
        mini = i
print("Самый маленький элемент - ", min)
a.pop(mini)
print("Удалили самый маленький элемент", a)