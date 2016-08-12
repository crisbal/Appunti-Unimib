A = [True, True, True, True]

def countTrue(i,f):
    if i == f:
        return 0

    if f-i == 1:
        if A[f] and A[i]:
            return 1
        else:
            return 0

    m = (i+f)//2
    R1 = countTrue(i,m)
    R2 = countTrue(m,f)
    return R1+R2

print(countTrue(0,len(A)-1))