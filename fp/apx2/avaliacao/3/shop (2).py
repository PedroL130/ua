# Pode correr o programa sem argumentos:
#   python3 shop
# ou passando outros ficheiros de produtos como argumento:
#   python3 shop produtos1.txt ...
def loadDataBase(fname, produtos):
    """Lê dados do ficheiro fname e atualiza/acrescenta a informação num
    dicionário de produtos com o formato {código: (nome, secção, preço, iva), ...}.
    """
    
    DataBase=open(fname,"r",encoding="utf-8")
    #Ignorar 1ª linha
    DataBase.readline()
    #
    for linha in DataBase:
        #Transformar a linha do arquivo, sem o \n, numa lista
        lista_linha=linha.replace("\n","").split(";")
        #Passar o iva para um numero tipo float
        lista_linha[-1]=float(lista_linha[-1].replace("%",""))/100 
        lista_linha[-2]=float(lista_linha[-2]) 
        #O dicionario produtos de chave código tem o valor [nome, secção, preço, iva] 
        produtos[lista_linha[0]]=lista_linha[1:]
    DataBase.close()


   

def registaCompra(produtos):
    """Lê códigos de produtos (ou códigos e quantidades),
    mostra nome, quantidade e preço final de cada um,
    e devolve dicionário com {codigo: quantidade, ...}
    """
    lista_de_compras={}
    
    while True:
        #Transformar a resposta do usuário numa lista
        resposta=input("Code? ").split()
        quantidade=1
        #Se o usuário não tiver escrito nada a lista estará vazia e irá sair do while
        if len(resposta)==0:
            break
        codigo=resposta[0]
        #Se a lista estiver com mais de um elemento 
        if len(resposta)>1:
            try:
                #A quantidade será o inteiro do segundo elemento
                quantidade=int(resposta[1])
                if(quantidade<1):
                    quantidade=1    
            except:
                #Caso o segundo elemento não possa ser transformar num numero inteiro
                quantidade=1
        if codigo in produtos:
            #Se não existe uma chave codigo em lista_de_compras  
            if(lista_de_compras.get(codigo)==None):
                lista_de_compras[codigo]=0
            lista_de_compras[codigo]+=quantidade
            #O preco liquido será (1+iva)*(preço base do produto)*quantidade
            preco_liquido=(1+produtos[codigo][-1])*produtos[codigo][-2]*quantidade
            
            print(produtos[codigo][0],quantidade,f"{preco_liquido:.2f}")
    return lista_de_compras

def fatura(produtos, compra):
    """Imprime a fatura de uma dada compra."""
    #dic_seccao é a comprehensions de um dicionario de chaves secção 
    dic_seccao={produtos[codigo_compra_seccao][1]:
    #E os valores seram uma lista comprehensions dos codigos dos produtos que tenha seccção igual á chave
    [codigo_compra for codigo_compra in compra if produtos[codigo_compra_seccao][1]==produtos[codigo_compra][1]]  
    for codigo_compra_seccao in compra}

    Total_bruto=Total_iva=Total_liquido=0
    for seccao,lista_codigos_por_seccao in dic_seccao.items():
        print(seccao)
        
        for codigo in lista_codigos_por_seccao:
            qtd=compra[codigo]
            produto=produtos[codigo]
            #preco_bruto é a quantidade de um produto * preço base do produto
            preco_bruto=qtd*produto[-2]
            #preco_iva é a quantidade de um produto * preço base do produto * o iva do produto
            preco_iva=qtd*produto[-2]*produto[-1]
            preco_liquido=preco_bruto+preco_iva
            Total_bruto+=preco_bruto
            Total_iva+=preco_iva
            Total_liquido+=preco_liquido
            print("{:>4} {:<30}({:>2}%){:>11.2f}".format(qtd,produto[0],int(produto[-1]*100),preco_liquido))
        

    print("{:>40}{:>11.2f}".format("Total Bruto:",Total_bruto))
    print("{:>40}{:>11.2f}".format("Total IVA:",Total_iva))
    print("{:>40}{:>11.2f}".format("Total Liquido:",Total_liquido))
    
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
    lista_de_compras=[]
    while repetir:
        # Utilizador introduz a opção com uma letra minúscula ou maiúscula
        op = input(MENU).upper()
        # Processar opção
        if op == "C":
            # Esta opção regista os produtos de uma compra
            compra = registaCompra(produtos)
            # Aqui acrescenta a compra a lista_de_compras
            lista_de_compras.append(compra)
        elif op=="F":
            numero_da_fatura = int(input("Numero compra? "))-1
            if(numero_da_fatura<len(lista_de_compras)):
                #Mostra a fratura da compra da lista_de_compras usando o numero_da_fatura como index
                fatura(produtos,lista_de_compras[numero_da_fatura])
        elif op=="S":
            repetir=False

    print("Obrigado!")


# Não altere este código / Do not change this code
import sys
if __name__ == "__main__":
    main(sys.argv[1:])

