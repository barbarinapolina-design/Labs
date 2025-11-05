N=int(input())
P=1
if N==0:
    P=0
while N!=0:
    a=N % 10
    P*=a
    N=N // 10
print("Произведение цифр: ",P)
