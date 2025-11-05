N=int(input())
x=1
k=0
while x<=N:
    if N % x==0:
        k = k + 1
    x = x + 1
print('Количество делителей: ',k)
