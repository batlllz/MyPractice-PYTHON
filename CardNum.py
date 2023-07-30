num = (input(" card num :"))
lingth=len(num)
if lingth ==8 and num[0:4] =="xxxx" and num[4] ==" "  and num[5:8].isdigit :
         print ("your card num" , num , " is valid")
else :
         print ("your card num" , num , " is not valid")
