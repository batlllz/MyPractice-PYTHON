n=input("enter your text here :")
counter=0
n=n.lower()
for i in n:
    if(i in "ioaeu"):
        counter+=1
print(counter)