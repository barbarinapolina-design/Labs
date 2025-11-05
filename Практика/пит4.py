N = int(input())
k=0
for _ in range(N):
    x=1
    c=0
    y=int(input('Введите число: '))
    while x <= y:
        if y % x==0:
            c = c + 1
        x = x + 1
    if c==2:
        k += 1
print('Количество простых чисел: ',k)