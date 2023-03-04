from tkinter import filedialog

def main():
    # 1) Pedir nome do ficheiro (experimente cada alternativa):
    name = input("File? ")                                  #A
    #name = filedialog.askopenfilename(title="Choose File") #B
    
    # 2) Calcular soma dos números no ficheiro:
    total = 0
    with open(name) as reader:
        for i in reader:
            print(i)
            total += float(i)

    total = fileSum(name)
    
    # 3) Mostrar a soma:
    print("Sum:", total)
name = input("File? ")


def fileSum(filename):
    soma =0
    # Complete a função para ler números do ficheiro e devolver a sua soma.
    with open(filename) as reader:
        for i in reader:
            print(i)
            soma += float(i)
    return soma

print(fileSum(name))

if __name__ == "__main__":
    main()

