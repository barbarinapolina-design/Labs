print("Введите трёхзначное число")
a=int(input())
b=a % 10
c=a // 100
d=(a % 100) // 10
print(b,d,c)