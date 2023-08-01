def readD():
    print("enter date:")
    day=int(input ("enter Day:"))
    month=int(input("enter month:"))
    year=int(input ("enter year:"))
    return (month,day,year)

date =readD()
print (date)

(month,day,year)=readD()
print (month,day,year)

