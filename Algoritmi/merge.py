a = [9,3,12,6,11]

def QuickSort(i,f,j):
    if(i<f):
        print(("\t"*j) + " " + str(a[i:f+1]))
        m = part(i,f)
        QuickSort(i,m,j+1)
        QuickSort(m+1,f,j+1)
        print("----")

def part(i,f):
    p = a[i]
    sx=i-1
    dx=f+1
    while sx<dx:
        sx+=1
        while a[sx]<p:
            sx+=1

        dx-=1
        while a[dx]>p:
            dx-=1


        if sx<dx:
            #print(sx)
            #print(dx)
            #print("_____")
            t = a[sx]
            a[sx] = a[dx]
            a[dx] = t

    return dx

QuickSort(0,len(a)-1,0)
print(a)