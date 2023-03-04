loadDataBase = dict()
with open("produtos.txt", "r") as fname:
    for line in fname:
        words = line.strip().split(";")
        code = words[0]
        words.pop(0)
        if words[-2] != "PRECO-BASE":
            words[-2] = float(words[-2])
        if words[-1] != "TAXA":
            words[-1] = float(words[-1].replace("%",""))/100
        t=tuple(words)
        if code not in loadDataBase:
            loadDataBase[code] =t

#print(prod["p3"][-1])

registaCompra={}
while True:
    t=tuple
    reg=[0,0,0]
    code = input("Code?")
    line1 = code.split()
    if code == "":
        break
    if line1[0] in loadDataBase:
        reg[0]=loadDataBase[line1[0]][0]
        finalprice = loadDataBase[line1[0]][-2] * (loadDataBase[line1[0]][-1] + 1)
        if len(line1)==2 and line1[1].isdigit():
            reg[1] = float(line1[1])
            reg[2] = finalprice * float(line1[1])
        elif len(line1)==1:
            reg[1]= 1
            reg[2] = finalprice
        if line1[0] in registaCompra:
            registaCompra[line1[0]] = registaCompra[line1[0]] + reg[1]
        else:
            registaCompra[line1[0]] = reg[1]
        print(reg)


compras=[]
compras.append()
total_bruto=0
total_iva=0
total_liquido=0
pr= list(registaCompra.keys())
for t in range(0,len(pr)):
    precof = loadDataBase[pr[t]][2] * (loadDataBase[pr[t]][3] + 1) * registaCompra[pr[t]]
    y = str(int(loadDataBase[pr[t]][3] * 100))
    if t != 0:
        if loadDataBase[pr[t]][1] == loadDataBase[pr[t - 1]][1]:
            # print(loadDataBase[pr[t]][1])
            print(registaCompra[pr[t]], loadDataBase[pr[t]][0], ("(" + y + "%" + ")"), precof)
        else:
            print(loadDataBase[pr[t]][1])
            print(registaCompra[pr[t]], loadDataBase[pr[t]][0], ("(" + y + "%" + ")"), precof)
    else:
        print(loadDataBase[pr[t]][1])
        print(registaCompra[pr[t]], loadDataBase[pr[t]][0], ("(" + y + "%" + ")"), precof)
    total_bruto += loadDataBase[pr[t]][2] * registaCompra[pr[t]]
    total_iva += loadDataBase[pr[t]][3] * registaCompra[pr[t]]
    total_liquido += precof

print("Total liquido:",total_liquido)
print("Total iva:",total_iva)
print("Total bruto:",total_bruto)
