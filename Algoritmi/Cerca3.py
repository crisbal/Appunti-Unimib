def cerca3(a,i,f):
    if f-i < 2: 
        return 0

    if f-i == 2:
        if a[i] == a[i+1] == a[f]:
            return 1
        else:
            return 0

    m = (f+i)//2

    c=0

    if a[m-1] == a[m] == a[m+1]:
        c +=1

    if a[m] == a[m+1] == a[m+2]:
        c += 1

    return c + cerca3(a,i,m) + cerca3(a,m+1,f)
    

a = "aa"
print(cerca3(a,0,len(a)-1))