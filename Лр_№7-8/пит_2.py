a=str(input())
s='abc'
if s in a:
    a=a.replace(s, 'www')
else: a+='zzz'
print(a)