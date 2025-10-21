a=str(input())
p=0
for i in range(len(a)):
    if a[i] in 'a' or a[i] in 'b' or a[i] in 'c':
        p+=1
    else: break
if p==len(a): print('Строка содержит только символы "a", "b","c"')
else: print('Строка НЕ содержит только символы "a", "b","c"')