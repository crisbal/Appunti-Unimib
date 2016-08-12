def sommaProdotti(a, i, f):
    if i==f:
        return 0

    if f-i == 1: 
        return a[i]*a[f]

    m = (i+f)//2

    return sommaProdotti(a, i, m) + sommaProdotti(a, m, f)


#main
a = [1,2,3,4,5]
ris = sommaProdotti(a, 0, len(a)-1)
print(ris)
