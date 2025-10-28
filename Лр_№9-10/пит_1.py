import random
def p1(a):
    b = 1
    for i in range(20):
        b *= a[i]
    return b

def p2(a):
    b = 1
    print('Чётные элементы: ', end='')
    for i in range(20):
        if a[i] % 2 == 0:
            print(a[i], end=' ')
            b *= a[i]
    print()
    return b

a = [0] * 20
print('Массив: ', end='')
for i in range(20):
    a[i] = random.randint(-52, 65)
    print(a[i], end=' ')
print()
c = p1(a)
print('Произведение элементов:', c)
c = p2(a)
print('Произведение четных элементов:', c)