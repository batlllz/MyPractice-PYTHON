sum=0
MyList=[3,5,1,7,8]
for element in MyList:
     sum=sum+element
print(sum)

#without using list index
########################

sum=0
MyList=[3,5,1,7,8]
for i in range(len(MyList)):
     sum=sum+MyList[i]
print(sum)

#using list index