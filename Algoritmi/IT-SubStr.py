def subStr(stringa,query):
    c = 0
    for i in range(0,len(stringa)):
        j = 0

        while (i+j)<len(stringa) and j < len(query) and stringa[i+j]==query[j]:
            j += 1
        
        if j == len(query):
            c+=1
    

    return c

print(subStr("CIAOAO","AO"))