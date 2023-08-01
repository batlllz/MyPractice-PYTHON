scores=[11,22,33,44,55]

def av(n):
    total=0
    for i in range(len(n)):
        total=total+n[i]
        av= total / len(n)
        return av
print (av(scores))

#average of scores
        
        
    