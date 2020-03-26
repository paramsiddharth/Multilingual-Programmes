a = {}
for x in input().lower():
    if x in a.keys():
        a[x] += 1
    else:
        a[x] = 1
for i in range(97,123):
    if chr(i) in a.keys():
        print(chr(i),'->',a[chr(i)])
    else:
        print(chr(i),'-> 0')
