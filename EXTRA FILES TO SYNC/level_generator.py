import math


def encodeLevel(x):
    for k in x:
        s = k
        count = 0
        temp = ""
        for i in s:
            #print(s)
            if i == temp:
                count+=1
            else:
                print(temp)
                print(count)
                count = 0
        i = temp

    print("5")

x = ""
level_ar = []

while x != "end":
    level_ar.append(x)
    x = input("-> ")



for i in level_ar:
    encodeLevel(i)

print(level_ar)
