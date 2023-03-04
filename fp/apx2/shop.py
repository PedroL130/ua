# Pode correr o programa sem argumentos:
#   python3 shop
# ou passando outros ficheiros de produtos como argumento:
#   python3 shop produtos1.txt ...

def loadDataBase(fname, produtos):
    """Lê dados do ficheiro fname e atualiza/acrescenta a informação num
    dicionário de produtos com o formato {código: (nome, secção, preço, iva), ...}.
    """
    with open(fname, "r", encoding="utf-8") as file:
        for line in file:
            words = line.strip().split(";")
            code = words[0]
            words.pop(0)
            if words[-2] != "PRECO-BASE":
                words[-2] = float(words[-2])
            if words[-1] != "TAXA":
                words[-1] = float(words[-1].replace("%", "")) / 100
            t = tuple(words)
            if code not in produtos:
                produtos[code] = t
    return produtos

def registaCompra(produtos):
    quantidade = {} # dicionario para os produtos comprados
    while True:
        reg = [0, 0, 0]  #criei uma lista para os produtos registados
        code = input("Code? ")
        line1 = code.split() #separar o codigo da quantidade de produtos
        if code == "":
            break
        if line1[0] in produtos: #line[0]== codigo
            reg[0] = produtos[line1[0]][0]# reg[0] fica com o nome do produto
            finalprice = produtos[line1[0]][-2] * (produtos[line1[0]][-1] + 1) #multiplicar o preco bruto por (1,iva) do produto
            if len(line1) == 2 and line1[1].isdigit(): # verifica se introduziu 2 valores e o 2º é uma quantidade
                reg[1] = int(line1[1])# reg[1] fica com o valor da quantidade
                reg[2] = finalprice * reg[1]# reg[2] fica com o valor final do produto multiplicado pela quantidade
            elif len(line1) == 1:# nao introduziu quantidade entao quantidade=1
                reg[1] = 1
                reg[2] = finalprice
            if line1[0] in quantidade:# somador de quantidades
                quantidade[line1[0]] = quantidade[line1[0]] + reg[1]
            else:
                quantidade[line1[0]] = reg[1]
            print("{} {:>2d} {:5.2f} ".format(reg[0],reg[1],reg[2]))
            #print(reg[0],reg[1],"{:.2f} ".format(reg[2]))
    return quantidade

def fatura(produtos, compras):
    """Imprime a fatura de uma dada compra."""
    #num_compra=0
    total_bruto = 0
    total_iva = 0
    total_liquido = 0
    while True :
        num_compra = input("Numero compra? ")
        # verifica se é um digito, se nao for repete o ciclo
        if not num_compra.isdigit() :
            pass
        # verifica se o nº da compra é valido, se nao for repete o ciclo
        elif int(num_compra) > len(compras) or int(num_compra) < 1:
            pass
        # se as condicoes acima n se verificarem significa que o valor intrudozido é valido, entao quebra o ciclo
        else:
            break

    num_compra=int(num_compra)
    # criar uma lista com as keys do dicionario compras(dicionario criado anteriormente com os produtos comprados)
    #da compra que o utilizador
    pr = list(compras[num_compra-1].keys())
    #print(pr)
    #print(produtos[pr[0]])
    #print(produtos[pr[0]][2])
    #print(compras)
    #print(compras[num_compra-1][pr[0]])
    for t in range(0, len(pr)):
        precof = produtos[pr[t]][2] * (produtos[pr[t]][3] + 1) * compras[num_compra - 1][pr[t]]
        iva_percentagem = str(int(produtos[pr[t]][3] * 100))
        iva_final = produtos[pr[t]][2] * produtos[pr[t]][3] * compras[num_compra - 1][pr[t]]
        if t != 0:
            # verifica a seccao é igual
            if produtos[pr[t]][1] == produtos[pr[t - 1]][1]:
                # print(loadDataBase[pr[t]][1])
                # da print da quantidade
                print("{:>4} {:<18} ({:>2}%) {:6.2f}".format(compras[num_compra - 1][pr[t]], produtos[pr[t]][0],
                                                              iva_percentagem, precof))
            else:
                print("{:2}".format(produtos[pr[t]][1]))
                print("{:>4} {:<18} ({:>2}%) {:6.2f}".format(compras[num_compra - 1][pr[t]], produtos[pr[t]][0],
                                                              iva_percentagem, precof))
        else:
            print("{:2}".format(produtos[pr[t]][1]))  # "{:<6} {:<12} {:>18}".format()
            print("{:>4} {:<18} ({:>2}%) {:6.2f}".format(compras[num_compra - 1][pr[t]], produtos[pr[t]][0],
                                                          iva_percentagem, precof))
            # print("{:<6} {:<12} {:>.2}".format(compras[num_compra-1][pr[t]], produtos[pr[t]][0], ("(" + iva + "%" + ")"),"{:.2f} ".format(precof)))
        total_bruto += produtos[pr[t]][2] * compras[num_compra - 1][pr[t]]
        total_iva += iva_final
        total_liquido += precof
    print("{:>31} {:.2f} ".format("Total bruto:  ", total_bruto))
    print("{:>31} {:.2f}".format("Total iva:  ", total_iva))
    print("{:>31} {:.2f}".format("Total liquido:  ", total_liquido))



def main(args):
    # produtos guarda a informação da base de dados numa forma conveniente.
    produtos = {}

    compras=[]

    # Carregar base de dados principal
    loadDataBase("produtos.txt", produtos)
    # Juntar bases de dados opcionais (Não altere)
    for arg in args:
        loadDataBase(arg, produtos)
    
    
    # Use este código para mostrar o menu e ler a opção repetidamente
    MENU = "(C)ompra (F)atura (S)air ? "
    repetir = True
    while repetir:
        # Utilizador introduz a opção com uma letra minúscula ou maiúscula
        op = input(MENU).upper()
        # Processar opção
        if op == "C":
            # Es00ta opção regista os produtos de uma compra
            compra = registaCompra(produtos)
            compras.append(compra)
        elif op == "F":
            faturaf= fatura(produtos,compras)
        elif op== "S":
            break
            # Aqui pode acrescentar a compra a uma estrutura de dados adequada...
        # Acrescente outras opções aqui...

    print("Obrigado!")


# Não altere este código / Do not change this code
import sys
if __name__ == "__main__":
    main(sys.argv[1:])

