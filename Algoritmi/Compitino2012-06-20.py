p1 = [20,11,24,36,43,12,11,43,20,33,42,34]

p2 = [21,1,15,10,89,24,31,63,64,65,78,5]

p3 = []

i = 0
while len(p2) != 0:
    if i%2 == 0:
        n = p1.pop()
    else:
        n = p2.pop()

    if n%2 != 0:
        p3.append(n)

    i+=1

print(p3)

#Caso migliore
#Non ci sono mai elementi dispari.
#Faccio comunque tutte le pop
#Spendo comunque r(n)

#Caso peggiore
#Ci sono solo elementi dispari.
#E' comunque O(n)