def contaSottostringa(a,b):
    contaTrovato = 0
    i = 0
    
    for i in range(0, len(a)): #for i=0 to len(a)-1
        j = 0
        while i+j<len(a) and j<len(b) and a[i+j] == b[j]:
            #controlla che ci sto dentro a and b
            j += 1
        
        if j == len(b): 
            contaTrovato += 1 
    
    return contaTrovato        

##main
array = "cdcababacababcdbabbabaab"
daCercare = "aba"
print( contaSottostringa(array, daCercare) ) #4




