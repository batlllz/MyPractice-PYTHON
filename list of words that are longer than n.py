n=int(input())
d=str(input(""))
new_list = []
text = d.split(" ")
for x in text:
    if len(x) > n:
        new_list.append(x)
print(new_list)