lst=[1,5,90,3,5,8,1,334]
for i in range(1, len(lst)):
    x = lst[i]
    j = i - 1
    while j >= 0 and lst[j] > x:
        lst[j + 1] = lst[j]
        j -= 1
    lst[j + 1] = x
print(lst)