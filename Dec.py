contacs={ "batoul":9687844,
          "mather": 93898585,
          "sana":887655}
new=dict(contacs)
print (contacs)
print (new)
print("my num:" , new["batoul"])

if "tass" in new :
    print ("tass num is :" , new["ass"])
else:
    print ("tass contacr is not availabl" )

num=new.get("batoul" , 56)
print ("call" , str(num))
new["tah"]= 857865768 # 
print (new)
new["tah"]= 99999999
print (new)
new.pop("tah") #remove item
print (new)
removedStayedItem=new.pop("batoul")
print (new) #removedStayedItem
print (" my contacs:")
for key in new :
    print (key)
print (" my contacs:")
for key in new :
    print (key , new[key])
for item in new.items():
    print (item[0], item[1])
    