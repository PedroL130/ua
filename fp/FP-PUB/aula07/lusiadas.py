import sys



def contarletras (filename):
    letras={}
    with open("C:\lusiadas\pg3333.txt", "r") as lusiadas:
        for line in lusiadas:
            for c in line:
                if c.isalpha():
                    c = c.lower()
                    if c in letras:
                        letras[c]+=1
                    else:
                        letras [c]=1
    return letras

print(contarletras(""))