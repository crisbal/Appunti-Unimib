A = [1,2,3]

def funz(i,f):

    if f-i==1:
        return A[f]*A[f-1]

    m= (f+i)//2
    a = funz(i,m)
    b = funz(m,f)

    return a+b


def funz2(i,f):
    if i==f:
        if i==(len(A)-1):
            return 0
        else:
            return A[i]*A[i+1]

    m= (f+i)//2
    a = funz2(i,m)
    b = funz2(m+1,f)

    return a+b


print(funz(0,len(A)-1))

