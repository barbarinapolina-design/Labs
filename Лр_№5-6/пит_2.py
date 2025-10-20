import random
a = [random.randint(0, 50) for _ in range(20)]
print("Массив:", a)

b= 1
max = 1
for i in range(1, 20):
    if a[i] <= a[i - 1]:
        b += 1
    else:
        b = 1
    if b > max:
        max = b
print("Самая длинная невозрастающая последовательность = ", max)
