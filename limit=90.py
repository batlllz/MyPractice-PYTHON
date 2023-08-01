new_list =[10,20,30,90]
limit=90
pos=0
found=False
while pos <len(new_list) and not found :
    if new_list[pos]==limit:
        found=True
    else:
         pos+=1
if found :
    print(pos)
else:
    print ("not found")












"""
for i in range(1,10):
    new_list.append(i**2)
print (new_list)
"""