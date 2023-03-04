# Pode correr o programa sem argumentos:
#   python3 shop
# ou passando outros ficheiros de produtos como argumento:
#   python3 shop produtos1.txt ...

def loadDataBase(fname, produtos):
    """Lê dados do ficheiro fname e atualiza/acrescenta a informação num
    dicionário de produtos com o formato {código: (nome, secção, preço, iva), ...}.
    """
    f = open(fname, "r")
    lines = f.readlines()[1:] 
    #p1;Ketchup;Mercearia Salgado;1.59;23%
    
    for line in lines:
        split = line.split(";")
        iva = split[4].replace("%","")
        iva = int(iva) / 100
        produtos[split[0]] = (split[1],split[2],float(split[3]),iva)

     


def registaCompra(produtos):
    """Lê códigos de produtos (ou códigos e quantidades),
    mostra nome, quantidade e preço final de cada um,
    e devolve dicionário com {codigo: quantidade, ...}
    """
    code = "l"
    countunid = dict()
    while code != "":
        u_input = input("Code? ")
        u_input = u_input.strip().split(" ")
        code = u_input[0]
        if len(u_input) > 1:
            unidades = int(u_input[1])
        else:
            unidades = 1

        if code in produtos.keys():
            precofin = produtos[code][2]
            precofin = (precofin + (precofin * float(produtos[code][3]))) * unidades
            print("%s %d %.2f" %(produtos[code][0], unidades, precofin))
            if code in countunid.keys():
                countunid[code] += unidades
            else:
                countunid[code] = unidades
    
    return countunid
                
                
            
    
        



def fatura(produtos, compra):
    """Imprime a fatura de uma dada compra.""" #compra = {p3: 1} 
    tt_iva = 0
    tt_bruto = 0
    tt_liquido = 0

    sec_dict= dict()
    
    
    for key in compra.keys():
        unidadesprodutos = compra[key]
        nome,seccao,preco,iva= produtos[key]
        tt_iva += iva * preco * unidadesprodutos
        tt_bruto += preco * unidadesprodutos
        precofinal=(preco + (iva * preco)) * unidadesprodutos 
        tt_liquido += precofinal 
        
        if seccao not in sec_dict.keys():
            sec_dict[seccao]=[]
        
        sec_dict[seccao].append((unidadesprodutos,nome,iva*100,precofinal))
    
    for keysd,products in sec_dict.items():
        print(keysd) 
        for product in products:
            unidades,nome,iva,precofinal= product
            print("\t%d %s                 (%d%%)       %.2f" % (int(unidades), nome, iva, precofinal))

    print("                                 Total Bruto:      %.2f" % tt_bruto)
    print("                                 Total IVA:      %.2f" % tt_iva)
    print("                                 Total Liquido:      %.2f" % tt_liquido)



def main(args):
    # produtos guarda a informação da base de dados numa forma conveniente.
    produtos = {'p1': ('Ketchup.', 'Mercearia Salgado', 1.59, 0.23)}
    # Carregar base de dados principal
    loadDataBase("produtos.txt", produtos)
    # Juntar bases de dados opcionais (Não altere)
    for arg in args:
        loadDataBase(arg, produtos)
    
    
    # Use este código para mostrar o menu e ler a opção repetidamente
    MENU = "(C)ompra (F)atura (S)air ? "
    repetir = True
    numcompras=[]
    while repetir:
        # Utilizador introduz a opção com uma letra minúscula ou maiúscula
        op = input(MENU).upper()
        # Processar opção
        if op == "C":
            # Esta opção regista os produtos de uma compra

            compra = registaCompra(produtos)
            numcompras.append(compra)
            # Aqui pode acrescentar a compra a uma estrutura de dados adequada...
        # Acrescente outras opções aqui...
        if op == "F":
            n = int(input("Número de compra? "))
            compra= fatura(produtos,numcompras[n-1])

        if op == "S":
            print("Obrigado!")
            exit()

    


# Não altere este código / Do not change this code
import sys
if __name__ == "__main__":
    main(sys.argv[1:])

