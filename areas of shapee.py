from math import pi


def square(length):
    area=length*length
    return area


def circle(radis):
    CArea=(pi*radis**2)
    return CArea

def rectanglr(lengh, width):
     RArea=(lengh*width)
     return RArea


def cylinder(radis,hight ):
    CArea=(2*pi*radis*hight)+(2*pi*radis**2)
    return CArea

    
def triangle (length , hight):
    TArea=0.5*length*length
    return TArea

n=int(input("chose number from 1-5 :"))

if n == 1:
   l=int(input("enter length :"))
   print(square(l))
    
elif n == 2:
    r=int(input("enter radis :"))
    print(circle(r))
    
elif n == 3:
    l=int(input("enter radis lengh:"))
    w=int(input("enter radis width:"))
    print(rectanglr(l , w))
    
elif n == 4:
     h=int(input("enter hight:"))
     r=int(input("enter radis:"))
     print(cylinder(h ,r))

elif n == 5:
    h=int(input("enter hight:"))
    r=int(input("enter length:"))
    print(triangle(h ,r))