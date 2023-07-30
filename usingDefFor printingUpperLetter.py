n=input("enter your text here :")
def count(text ):
    counter=0
    for char in n: 
     if char.isupper():
        counter+=1
    return counter

print(count(n))