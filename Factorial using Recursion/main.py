def fact(x):
    return 1 if x<2 else x*fact(x-1)

print(fact(int(input())))
