# Pode correr o programa sem argumentos:
#   python3 shop
# ou passando outros ficheiros de produtos como argumento:
#   python3 shop produtos1.txt ...

from sys import argv
from time import sleep

def loadDataBase(fname, produtos):
    """Lê dados do ficheiro fname e atualiza/acrescenta a informação num
    dicionário de produtos com o formato {código: (nome, secção, preço, iva), ...}.
    """
    def acrecentar(codigo, nome, seccao, preco, iva):
        try:
            arq = open('produtos.txt', 'a')
            arq.write (f'{codigo};{nome};{seccao};{preco};{iva}\n')
        except:
            print("Algo correu mal")

    def ler():

        try:
            arq = open('produtos.txt', 'r')
            for linha in arq:
                dado = linha.split(';')
                dado[4] = dado[4].replace('\n', '')
                print('-'*80)
                print(f'codigo: {dado[0]:<20} nome: {dado[1]:<20} seccao: {dado[2]:<20} preco: {dado[3]:<20} iva: {dado[4]:<20}')
                sleep(0.5)

        except :
            print("Algo correu mal")

    def caixa(codigo, quant):
        try:
            arq = open('produtos.txt','r')
            arq2 = open('produtos2.txt','a+') 
            for linha in arq:
                dado = linha.split(';')
                dado[2] = dado[2].replace('\n', '')

                if dado[0]== codigo:
                    converte = float(dado[3]) + float(dado[3]*dado[4])
                    preco = quant * converte
                    arq2.write(f'{dado[0]};{dado[1]};{quant};{preco}\n')

        except:
            print("Algo correu mal")

def interface():
    def mensagem(txt):
        qnt = len(txt) + 4
        print('~'*qnt)
        print(txt.center(qnt))
        print('~'*qnt)

    def final():
        count = 0
        try:
            arq2 = open('produtos2.txt', 'r')
            txt = 'RESUMO DA COMPRA'
            print('~'*115)
            print(txt.center(115))
            print('~'*115)
            for linha in arq2:
                dado = linha.split(';')
                dado[3] = dado[3].replace('\n', '')
                converte2 = float(dado[3])
                count += converte2
                print('-'*115)
                print(f'Código: {dado[0]:<20} Produto: {dado[1]:<20} Quantidade: {dado[2]:<20} Total: {dado[3]:<20}')
                sleep(0.5)
            print('-'*115)
            print(f'Total da Compra: {count}')
            dinheiro =float(input("Digite quanto dinheiro recebeu: "))
            conta = dinheiro - count
            if conta == 0:
                print("Não é necessário troco")
            else:
                print(f'Troco: {conta}')
        except:
            print("Houve um erro ao abrir o arquivo")
        finally:
            arq2 = open('produtos2.txt', 'w')
            arq2.write('')

       




def registaCompra(codigo, quant):
    """Lê códigos de produtos (ou códigos e quantidades),
    mostra nome, quantidade e preço final de cada um,
    e devolve dicionário com {codigo: quantidade, ...}
    """

    while True:
        codigo = float(input("Qual o código do produto: "))
        quant = float(input("Digite a quantidade: "))
        registaCompra(codigo, quant) 
        continuar = input('Continuar: [S/N] ').upper().strip()[0]
        while continuar not in 'SN':
            continuar = input('Continuar: [S/N] ').upper().strip()[0]
        if continuar == 'N':
            interface()
            sleep(1)
            break






def fatura(produtos, compra):
    """Imprime a fatura de uma dada compra."""

    
    

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
    while repetir:
        # Utilizador introduz a opção com uma letra minúscula ou maiúscula
        op = input(MENU).upper()
        # Processar opção
        if op == "C":
            # Esta opção regista os produtos de uma compra
            compra = registaCompra(produtos)
            # Aqui pode acrescentar a compra a uma estrutura de dados adequada...
        # Acrescente outras opções aqui...
        elif op == "F":
            sairfatura = fatura(produtos, compra)
       
        else:
            sleep(0.5)
            print('Sair Do Sistema')
            sleep(1)
            break

        while op not in MENU:
            op = input(MENU).upper()
            continue

        else:
            return op

    print("Obrigado!")


# Não altere este código / Do not change this code
import sys
if __name__ == "__main__":
    main(sys.argv[1:])

