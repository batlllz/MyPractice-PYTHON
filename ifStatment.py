w = float (input (" inter ur weight in KG : "))
h = float (input (" inter ur hight in CM : "))
BMI = (w/(h*100)**2)
if ( BMI < 18.5):
    print ("underweight" )
elif ( 18.5 <= BMI <=25.0):
    print ("Normal" )
elif ( 25.0 <= BMI <=30.0):
    print ("overwight" )
elif ( 30.0<= BMI ):
    print ("obese" )


