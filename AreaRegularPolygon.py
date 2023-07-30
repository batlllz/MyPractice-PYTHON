from math import tan , pi
n=int(input("enter number of sides :"))
s=float(input("enter the sides :"))
def count(num , side):
    Area =num *(side**2)/(4*tan(pi/num))
    return Area

print(count(n ,s))
 