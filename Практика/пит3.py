N=int(input())
x=1
s=0
while x<=N // 2:
    if N % x==0:
        s= s + x
    x = x + 1
if s==N: print('Да')
else: print('Нет')