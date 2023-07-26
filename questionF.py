n= input ("Number of items: ")
arr = input ("Enter Items: ")
for i in range (0 , len(arr)):
    for j in range (i+1 , len(arr)):
        for x in range(j+1 , len(arr)):
            if (arr[i] == arr[j] ==arr[x]):
                print(arr[x]);