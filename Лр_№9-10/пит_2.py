import random
a = [[0] * 8 for _ in range(6)]
a2 = [0] * 6
print('Исходная матрица 6x8:')
for i in range(6):
    for j in range(8):
        a[i][j] = random.randint(-10, 9)
        print(f'{a[i][j]:4}', end='')
    print()

for i in range(6):
    a2[i] = 0
    for j in range(8):
        if abs(a[i][j]) > 4:
            a2[i] = a[i][j]
            break
print('Результирующий массив:')
for i in range(6):
    print(f'{a2[i]:4}', end='')