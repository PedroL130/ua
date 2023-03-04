import hashlib

h = hashlib.md5()
h.update("A long sentence".encode("utf-8")) # trailing space removed!
h.update("broken in two halves".encode("utf-8"))
print(h.hexdigest())

import sys
f = "ex1.py"     
with open(f,"r",encoding="UTF-8") as file:
    
    p =  hashlib.sha1(file.read().encode('utf-8')).hexdigest()


print(p)


for f in sys.argv[1:]:
    print(f'{f}: {sha1(f)}')