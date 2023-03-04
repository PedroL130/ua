u=10
x= str(u)
x=x.join("%")
y= "frf"
y=y.join("fg")
print(x)
print(y)
for i in registaCompra:
    precof = loadDataBase[i][2]*(loadDataBase[i][3]+1)*registaCompra[i]

    y=str(int(loadDataBase[i][3]*100))
    #i_1="p"+str(int(i.replace("p",""))-1)
    #if loadDataBase[i_1][1] != loadDataBase[i][1]:
        #print(loadDataBase[i][1])
    print(registaCompra[i], loadDataBase[i][0], (y + "%"), precof)
    total_bruto +=loadDataBase[i][2]*registaCompra[i]
    total_iva += loadDataBase[i][3] * registaCompra[i]
    total_liquido += precof