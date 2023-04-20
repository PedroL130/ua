//package sam.aula05;
import java.util.ArrayList;
import java.util.List;
import java.lang.management.ThreadInfo;

class Imovel {

    private String local;
    private int rooms, price, id;
    private boolean available = true;
    private DateYMD inicioLeilao, fimLeilao;

    public Imovel(int id, int rooms, String local, int price) {
        this.id = id;
        this.rooms = rooms;
        this.local = local;
        this.price = price;
    }

    public String getLocal() {
        return local;
    }

    public int getRooms() {
        return rooms;
    }

    public int getPrice() {
        return price;
    }

    

    public DateYMD getInicioLeilao() {
        return inicioLeilao;
    }

    public DateYMD getFimLeilao() {
        return fimLeilao;
    }

    public int getId() {
        return id;
    }

    public boolean getAvailable(){
        return available;
    }

    

    public boolean available(int id) {
        return available = false;
    }

    public void setAuction(DateYMD inicio, DateYMD fim) {
        this.inicioLeilao = inicio;
        this.fimLeilao = fim;
    }

    public boolean isAuction() {
        return inicioLeilao != null && fimLeilao != null;
    }

    public String toString() {
        return String.format("Imóvel %d; quartos: %d; localidade: %s; preço: %d; disponível: %s%s", id,rooms, local, price, available ? "sim" : "não", this.isAuction() ? String.format("; leilão: %s : %s", inicioLeilao, fimLeilao) : "");
    }

}

class RealEstate{
    private List <Imovel> imoveis;
    

    public RealEstate(){
        this.imoveis = new ArrayList<>();
    }

    public void newProperty(String local, int rooms, int price) {
        int id = 1000 + imoveis.size() + 1;
        Imovel imovel = new Imovel(id, rooms, local, price);
        imoveis.add(imovel);
    }

    public void sell(int id){
        for (Imovel imovel : imoveis){
            if (imovel.getId() == id){
                imovel.available(id);
            }
        }
    }

    public void setAuction(int id, DateYMD inicioleilao,int time){
        for (Imovel imovel : imoveis){
            if (imovel!=null && imovel.getId()==id){
                if (imovel.available(id)){
                    DateYMD fim = new DateYMD(inicioleilao.getDay(), inicioleilao.getMonth(), inicioleilao.getYear());
                    fim.addDays(time);
                    imovel.setAuction(inicioleilao, fim);
                }else{
                    System.out.printf("Imóvel %d não está disponível.\n", id);
                }
            }
        }
    }

    public String toString() {
        StringBuilder result = new StringBuilder().append("Propriedades:\n");
        for (Imovel imovel : imoveis){
            if (imovel != null){
                result.append(imovel).append("\n");
            }
        }
        return result.toString();
    }
}

public class Ex3 {
    public static void main(String[] args) {
        RealEstate imobiliaria = new RealEstate();
        imobiliaria.newProperty("Glória", 2, 30000);
        imobiliaria.newProperty("Vera Cruz", 1, 25000);
        imobiliaria.newProperty("Santa Joana", 3, 32000);
        imobiliaria.newProperty("Aradas", 2, 24000);
        imobiliaria.newProperty("São Bernardo", 2, 20000);

        imobiliaria.sell(1001);
        imobiliaria.setAuction(1002, new DateYMD(21, 3, 2023), 4);
        imobiliaria.setAuction(1003, new DateYMD(1, 4, 2023), 3);
        imobiliaria.setAuction(1001, new DateYMD(1, 4, 2023), 4);
        imobiliaria.setAuction(1010, new DateYMD(1, 4, 2023), 4);

        System.out.println(imobiliaria);

    }
}
Pedro Lopes
#3419
💪a treinar

Rúben Gomes — 08/03/2023 12:05
mas ele de certeza q n quer saber
olly. — 08/03/2023 12:05
a nós não é o regente
mas deve ser safe na mesma
Rúben Gomes — 08/03/2023 12:05
yaya exato
olly. — 08/03/2023 12:06
eles sabem que copiamos naquilo e copiamos ahahah
Rúben Gomes — 08/03/2023 12:06
pois lmao
luís_d — 10/03/2023 21:21
Quantos kahoots é que já fizeram?
Rended — 10/03/2023 21:28
até agora foi só 1 socrative
claudspeeds — 14/03/2023 18:28
aquilo número do final é o quê
Imagem
Ex3
Rended — 14/03/2023 18:40
thats a good question my friend
nós achamos que possa ser a duração em dias do leilao
Francisco — 16/03/2023 00:11
Foi o q eu considerei, ya
Kinda tarde, mas caguei :)
JuanS12 — 16/03/2023 13:41
Quantas faltas se pode dar a poo? @1º Ano
MP3910 — 16/03/2023 13:42
4 acho
JOAO — 16/03/2023 13:42
Prático 4 acho, teorico n existem faltas
Ns se são 3 ou 4 mas pronto
JuanS12 — 16/03/2023 13:42
Ok se uma pessoa faltar a 3 100% sure q n reprova certo?
JOAO — 16/03/2023 13:43
N te consigo dzr c certeza, mas penso q n reprovas yha
Rended — 16/03/2023 13:43
A fp reprovavas à terceira se não me engano, aqui não sei
MP3910 — 16/03/2023 13:44
Yah
olly. — 16/03/2023 13:45
a melhor forma de saber é perguntando a um stor ☠️
Luis Sousa — 16/03/2023 16:29
sao 20%
normalmente 3 faltas significam q se fica chumbado
Torres — 17/03/2023 22:01
ya á terceira vais de vela
RafaelClaro — 18/03/2023 14:41
alguem consegue mostrar como e que e suposto ficar o exerc 5.3 
Pankas — 18/03/2023 14:43
No guiao mostram como é suposto ficar
RafaelClaro — 22/03/2023 12:15
Quando é que é o próximo “mini teste teórico” alguém sabe?
Rended — 22/03/2023 12:27
acho que os profs não avisam disso
luís_d — 22/03/2023 19:57
O meu stor de poo avisou e disse que era para a semana
capitao_iglooo — 23/03/2023 15:06
alguem fez a 5.2 do guiao 5?
Rended — 23/03/2023 15:13
https://github.com/TiagoRG/uaveiro-leci/blob/master/1ano/2semestre/poo/src/aula05/Calendar.java
GitHub
uaveiro-leci/Calendar.java at master · TiagoRG/uaveiro-leci
Material do curso de LECI. Contribute to TiagoRG/uaveiro-leci development by creating an account on GitHub.
uaveiro-leci/Calendar.java at master · TiagoRG/uaveiro-leci
olly. — Ontem às 11:35
de nada malta
Imagem
Mariano — Ontem às 11:35
Rei
J0KAj — Ontem às 11:36
👑
olly. — Ontem às 11:37
já mando os códigos
public interface ILibrary {
    public void addItem(LibraryItem item);
    public void removeItem(LibraryItem item);
    public LibraryItem searchForItem(String title);
    public boolean borrowItem(int itemId);
    public boolean returnItem(int itemId);
Expandir
ILibrary.java
1 KB
import java.util.Scanner;

public class LibraryMain {
    public static void main(String[] args) {
        ILibrary library = new Library();
        Scanner scanner = new Scanner(System.in);
Expandir
LibraryMain.java
2 KB
X1COj — Ontem às 11:45
Crie uma solução para gestão de uma biblioteca, onde serão registados os dados de cada item na biblioteca, que podem ser livros ou DVDs, e indicação sobre se estão disponíveis.
A solução deve permitir adicionar e remover itens à biblioteca, através de um menu, deverá ser possível procurar um item, pelo nome e, no caso de existir, imprimir as suas informações, deverá também ser possível imprimir as informações de todos os itens.
Deve definir as classes, incluindo os construtores e métodos seletores(getters) e/ou modificadores(setters) que considere necessários, os métodos toString, equals e hashCode, para além dos restantes métodos necessários às funcionalidades, de acordo com as seguintes informações:

LibraryItem - representa um item, que pode ser livro (book) ou DVD, que tem associado um identificador, titulo (title), disponibilidde, e nome do utilizador que pede o empréstimo, e o método return;
Book - inclui informação do autor;
DVD - inclui a duração;
Library - permite criar e gerir os itens da biblioteca.
olly. — Ontem às 11:59
quem tem pratica com o stor que deu tp hoje às 9, parece muito tranquilo vir aqui, chat gpt e essas coisas
pelo menos para já
X1COj — Ontem às 13:20
Tiveram que apresentar alguma merda ou dizer o que fizeram?
RafaelClaro — Ontem às 13:38
pq e que usaste um interface em vez de class?
olly. — Ontem às 13:51
esses programas são logo dados, eu não tinha mudado nada ainda
tudo o que está é dado inicialmente
Luis Sousa — Ontem às 15:18
Crie uma solução para gestão de um abrigo para animais de companhia, onde são registados
cães, coelhos ou pássaros.

A solução deve permitir adicionar e remover animais e também associar um padrinho a um
animal, através do identificador do animal; deverá ser possível procurar um animal, pelo
nome, e no caso de existir imprimir a sua informação; deverá também ser possivel imprimir as
Expandir
enunciado.txt
2 KB
o enunciado da P3 
o enunciado muda de turma para turma, mas os exercicios sao bastante parecidos
narciso — Ontem às 15:46
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
Expandir
Main.java
2 KB
public interface IPetShelter {
    public void addAnimal(Animal animal);
    public void removeAnimal(Animal animal);
    public Animal searchForAnimal(String name);
    public boolean sponsorAnimal(int animalId);
    void listAllAnimals();
Expandir
IPetShelter.java
1 KB
francisco04 — Hoje às 15:13
Crie um programa em java para gestão das plantas de um parque de cidade onde são registados todas as plantas de maior porte: arvores, arbustos e palmeiras.


A solução deve permitir adicionar e remover plantas e também associar um patrocinador (sponsor) a uma
planta, através do identificador da planta; deverá ser possível procurar uma planta, pela
especie, e no caso de existir imprimir a sua informação de todas as especies; deverá também ser possivel imprimir as
informações de todas as plantas registadas no parque, devera ainda ser possivel mostar uam lista das especies registadas bem como o respetivo numero de exemplares

Deve definir as classes, incluindo os construtores e métodos seletores (getters) e/ou
modificadores (setters) que considere necessários, os métodos toString, equals e hashCode,
para além dos restantes métodos necessários às funcionalidades, de acordo com as seguintes
informações:
• plant - representa uma planta, que pode ser classificada como arvore (tree), arbustro (shrub), ou palmeira (palmtree), com identificador unico e informaçao da especie, altura, idade, e nome do patrocinador, se existir;
• tree-inclui informação se é de folha perene (evergreen);
• shrub - inclui informação se dá flor e se sim a respetiva cor:
.palmtree- inclui informação do habitat, que pode ser semi-desertico ou temperado;
.ParkManager- permite fazer a gestão dos registos das plantas do parque;
import java.util.Scanner;

public class Main {

    public void addPlant(Plant plant);
        private int id;
        private String title;
        private boolean available;
        private String borrowerName;


    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ParkManager pManager = new ParkManager("Serralves");

        int choice = 0;
        do {
            System.out.println("Choose an option:");
            System.out.println("1. Add plant");
            System.out.println("2. Remove plant");
            System.out.println("3. Search for species");
            System.out.println("4. Sponsor a plant");
            System.out.println("5. View all plants");
            System.out.println("6. Summary of species");
            System.out.println("7. Exit");

            choice = scanner.nextInt();

            switch (choice) {
                case 1:
		            // adicionar planta
                case 2:
                    // remover planta
                case 3:
                    // procurar planta
                case 4:
                    // patrocinar planta
                case 5:
                    // imprimir a informação de todas as plantas
                case 6:
                    // imprimir resumo com a informação relativa a todas
                    // especies
                case 7:
                    System.out.println("Goodbye!");
                    break;
                default:
                    // imprimir mensagem de erro
            }

        } while (choice != 7);
    }
}
@Override
    public abstract String toString();

    @Override
    public abstract boolean equals(Object obj);

    @Override
    public abstract int hashCode();
}



package AvaliacaoAula;

public abstract class Plant {
    private int id;
    private String species;
    private double height;
    private int age;
    private String sponsor;

    public Plant(int id, String species, double height, int age) {
        this.id = id;
        this.species = species;
        this.height = height;
        this.age = age;
        this.sponsor = null;
    }

    public int getId() {
        return id;
    }

    public String getSpecies() {
        return species;
    }

    public double getHeight() {
        return height;
    }

    public int getAge() {
        return age;
    }

    public String getSponsor() {
        return sponsor;
    }
... (43 linhas)
Recolher
Main.java
5 KB
public interface IParkManager {
    public void addPlant(Plant plant);
    public void removePlant(Plant plant);
    public void searchForSpecies(String name);
    public boolean sponsorPlant(int plantId);
    public void listAllPlants();
    public void listSummarySpecies();
}
Recolher
IParkManager.java
1 KB
﻿
import java.util.Scanner;

public class Main {

    public void addPlant(Plant plant);
        private int id;
        private String title;
        private boolean available;
        private String borrowerName;


    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ParkManager pManager = new ParkManager("Serralves");

        int choice = 0;
        do {
            System.out.println("Choose an option:");
            System.out.println("1. Add plant");
            System.out.println("2. Remove plant");
            System.out.println("3. Search for species");
            System.out.println("4. Sponsor a plant");
            System.out.println("5. View all plants");
            System.out.println("6. Summary of species");
            System.out.println("7. Exit");

            choice = scanner.nextInt();

            switch (choice) {
                case 1:
		            // adicionar planta
                case 2:
                    // remover planta
                case 3:
                    // procurar planta
                case 4:
                    // patrocinar planta
                case 5:
                    // imprimir a informação de todas as plantas
                case 6:
                    // imprimir resumo com a informação relativa a todas
                    // especies
                case 7:
                    System.out.println("Goodbye!");
                    break;
                default:
                    // imprimir mensagem de erro
            }

        } while (choice != 7);
    }
}
@Override
    public abstract String toString();

    @Override
    public abstract boolean equals(Object obj);

    @Override
    public abstract int hashCode();
}



package AvaliacaoAula;

public abstract class Plant {
    private int id;
    private String species;
    private double height;
    private int age;
    private String sponsor;

    public Plant(int id, String species, double height, int age) {
        this.id = id;
        this.species = species;
        this.height = height;
        this.age = age;
        this.sponsor = null;
    }

    public int getId() {
        return id;
    }

    public String getSpecies() {
        return species;
    }

    public double getHeight() {
        return height;
    }

    public int getAge() {
        return age;
    }

    public String getSponsor() {
        return sponsor;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setSponsor(String sponsor) {
        this.sponsor = sponsor;
    }

    @Override
    public abstract String toString();

    @Override
    public abstract boolean equals(Object obj);

    @Override
    public abstract int hashCode();
}



Crie uma solução para gestão das plantas de um parque de cidade onde são registados todas as plantas de maior porte: arvores, arbustos e palmeiras.


A solução deve permitir adicionar e remover plantas e também associar um patrocinador (sponsor) a uma
planta, através do identificador da planta; deverá ser possível procurar uma planta, pela
especie, e no caso de existir imprimir a sua informação de todas as especies; deverá também ser possivel imprimir as
informações de todas as plantas registadas no parque, devera ainda ser possivel mostar uam lista das especies registadas bem como o respetivo numero de exemplares

Deve definir as classes, incluindo os construtores e métodos seletores (getters) e/ou
modificadores (setters) que considere necessários, os métodos toString, equals e hashCode,
para além dos restantes métodos necessários às funcionalidades, de acordo com as seguintes
informações:
• plant - representa uma planta, que pode ser classificada como arvore (tree), arbustro (shrub), ou palmeira (palmtree), com identificador unico e informaçao da especie, altura, idade, e nome do patrocinador, se existir;
• tree-inclui informação se é de folha perene (evergreen);
• shrub - inclui informação se dá flor e se sim a respetiva cor:
.palmtree- inclui informação do habitat, que pode ser semi-desertico ou temperado;
.ParkManager- permite fazer a gestão dos registos das plantas do parque;
Main.java
5 KB