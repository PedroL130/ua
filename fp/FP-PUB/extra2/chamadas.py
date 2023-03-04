def readfile(file1, file2, chamadas):
    with open(file1, "r", encoding="utf-8") as f1:
        for line in f1:
            list1 = line.strip().split()
            chamadas.append(list(list1))
            # print()
    with open(file2, "r", encoding="utf-8") as f2:
        for line in f2:
            list2 = line.strip().split()
            chamadas.append(list(list2))
            # print(list)


def listar(chamadas, lista):
    for i in chamadas:
        if i[0] not in lista:
            lista.append(i[0])
    return lista


# print(readfile("chamadas1.txt","chamadas2.txt"))

def validar_numero(tel):
    digit = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    x = 0
    if tel[0] == "+":  # and tel[1:] in digit and len(tel) > 3 :
        for i in range(1, len(tel)):
            if tel[i] not in digit or len(tel) < 4:
                x += 1
    else:
        for i in range(0, len(tel)):
            if tel[i] not in digit or len(tel) < 3:
                x += 1
    return x


def fatura(cliente, lista, chamadas, list_fatura):
    if cliente in lista:
        for i in chamadas:
            if i[0] == cliente:
                list_fatura.append(list(i[1:]))
    return list_fatura


def cobrar(list_fatura, cliente):
    for i in range(len(list_fatura)):
        index = list_fatura[i]
        if index[0][0] == "+":
            price = (float(index[1]) / 60) * 0.80
            if price not in list_fatura[i]:
                list_fatura[i].append(price)
        elif index[0][0] == 2:
            price = (float(index[1]) / 60) * 0.02
            if price not in list_fatura[i]:
                list_fatura[i].append(price)
        elif index[0][:3] == cliente[:3]:
            price = (float(index[1]) / 60) * 0.04
            if price not in list_fatura[i]:
                list_fatura[i].append(price)
        else:
            price = (float(index[1]) / 60) * 0.1
            if price not in list_fatura[i]:
                list_fatura[i].append(price)


    return list_fatura


def menu():
    chamadas = []
    readfile("chamadas1.txt", "chamadas2.txt", chamadas)
    lista = []
    listar(chamadas, lista)
    list_fatura = []

    while True:

        print("1) Registar chamada")
        print("2) Ler ficheiro")
        print("3) Listar clientes")
        print("4) Fatura")
        print("5) Terminar")
        x = input("Opção?")
        if x == "1":
            while True:
                tel_org = input("Telefone origem?")
                v = validar_numero(tel_org)
                if v == 0:
                    tel_des = input("Telefone destino?")
                    v = validar_numero(tel_des)
                    if v == 0:
                        temp = input("Duração (s)?")
                        pass

                else:
                    tel_des = input("Telefone destino?")
                    v = validar_numero(tel_des)
                    if v == 0:
                        pass
            else:
                pass
        elif x == "2":
            chamadas = []
            print(readfile("chamadas1.txt", "chamadas2.txt", chamadas))
            print(chamadas)
        elif x == "3":

            lista = sorted(lista, key=int)
            for i in lista:
                print(i)
            print(lista)
        elif x == "4":
            cliente = input("cliente?")
            print("fatura do cliente", cliente)

            fatura(cliente, lista, chamadas, list_fatura)
            cobrar(list_fatura, cliente)

            for i in list_fatura:
                print("{:10} {:6} {:<.2}".format(i[0],i[1],i[2]))



print(menu())
