string = input("Enter the string: ")
abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789" 
abc2 = "a05R9dcuESsZhVWMDwNAH2mf746eqPtvy83UOTBnrILbxGgXFzKjQJYiCkp1lo"
new = ""
for x in range(0, len(string)):
    for y in range(0, len(abc2)):
        if (string[x] == abc2[y]):
            new += abc[y]
        #else:
            #new += string[x]
print(new)
