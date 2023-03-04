def loadDataBase(fname, produtos):
    """Lê dados do ficheiro fname e atualiza/acrescenta a informação num
    dicionário de produtos com o formato {código: (nome, secção, preço, iva), ...}.
    """
    with open(fname, "r", encoding="utf-8") as file_prod:
        for line in file_prod:
            l = line.strip().split(";")   #Transforma a linha numa lista
            if l[0] != 'CODIGO':   #Nao me interessa adicionar a linha que contém as primeiras palavras no dicionário
                l[4] = l[4].replace('\n','')   #Isto é pra tirar "\n" e "%" da percentagem
                l[4] = l[4].replace('%', '')
                l[4] = float(l[4])/100       #Passar os números ao valor que corresponde a percentagem
                produtos[l[0]] = ((l[1], l[2], float(l[3]), l[4]))
    return produtos

def registaCompra(produtos):
    """Lê códigos de produtos (ou códigos e quantidades),
    mostra nome, quantidade e preço final de cada um,
    e devolve dicionário com {codigo: quantidade, ...}
    """
    dict = {}
    code = input("Code? ")
    while code != "":
        if code in produtos:  # Busca no dicionário o nome, 1 unidade e o peso bruto + peso bruto vezes a TAXA
            print("{}   {}  {:.2f}".format(produtos[code][0], 1,
                                           produtos[code][2] + produtos[code][2] * produtos[code][3]))
            dict[code] = dict.get(code, 0) + 1
            #print(dict)  # Para verificar só
        else:
            pass
        code = input("Code? ")
    return dict

def fatura(produtos, compras):
    """Imprime a fatura de uma dada compra."""
    nrCompra = 0
    print(compras)
    while nrCompra > len(compras) or nrCompra < 1:
        nrCompra = int(input("Numero compra? "))

    bruto = 0
    liquido = 0
 
    compra = compras[nrCompra-1]       #Seleciona a compra a faturar
    produtos_comprados = {key:produtos[key] for key in compra} #Seleciona os produtos do dicionario cuja chave se encontra na compra
    print(compra)
    print(produtos_comprados)
    for key, value in sorted(produtos_comprados.items(), key=lambda e: e[1][1]): #Ordena o dicionario alfabeticamente com base na secção dos produtos
        produtos_comprados[key] = value

    # print(produtos_comprados)
    # print('\n')
    ultimaSeccao = ''   #Variavel que guarda a ultima seccao printada
    for i in produtos_comprados:
        iva = int(produtos_comprados[i][3]*100)
        preco_total = float((produtos_comprados[i][2] + produtos_comprados[i][2] * produtos_comprados[i][3])*compra[i])
        bruto += (produtos_comprados[i][2]*compra[i])
        liquido += preco_total

        seccao = produtos_comprados[i][1]
        if ultimaSeccao != seccao:        #Só dá print quando a secção altual é diferente da última uma vez que o dicionário está ordenado alfabeticamente
            print(seccao)
            ultimaSeccao = seccao           #Atualiza a ultima secção que deu print 
        print("  {} {:<17s} {:>8s}     {:.2f}".format(compra[i], produtos_comprados[i][0], '(' + str(iva)+'%)', preco_total))
    total_iva = liquido - bruto
    print("          {:>20}     {:.2f}".format("Total Bruto:", bruto))
    print("          {:>20}     {:.2f}".format("Total IVA:", total_iva))
    print("          {:>20}     {:.2f}".format("Total Liquido:", liquido))



def main(args):
    # produtos guarda a informação da base de dados numa forma conveniente.
    produtos = {}
    
    compras =  [] #Lista que guarda cada compra para o caso de o utilizador realizar mais que uma compra
  
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
            # Esta opção regista os produtos de uma compra
            compra = registaCompra(produtos)
            # Aqui pode acrescentar a compra a uma estrutura de dados adequada...
            compras.append(compra)  #Acrescenta a compra na lista
        if op == "F":
            fatural = fatura(produtos, compras)
        if op == "S": break
    print("Obrigado!")


# Não altere este código / Do not change this code
import sys
if __name__ == "__main__":
    main(sys.argv[1:])
