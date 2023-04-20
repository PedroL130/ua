package aula06;

import java.lang.reflect.Array;
import java.util.List;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.regex.Pattern;

import aula5.*;

class Contatos {

    private String number;
    private String email;
    private Pessoa p;
    private static int id;

    public Contatos(Pessoa p, String email, String number) {

        if (email == null || email.isEmpty() || number == null || number.isEmpty()) {
            throw new IllegalArgumentException("Either email or phone must be provided");
        } else {
            this.setEmail(email);
            this.setPerson(p);
            this.setPhone(number);
            this.id = Contatos.id++;
        }

    }

    public boolean validMail(String email) {
        String[] arr = email.split("@");
        String[] fin = email.split("\\.");

        if (arr.length != 2 || fin.length < 2) {
            return false;
        } else if (fin[fin.length - 1].equals("pt") || fin[fin.length - 1].equals("com")) {
            return true;
        } else {
            return false;
        }

    }

    public boolean vaildNumber(String number) {

        if (!number.matches("^9[0-9]{8}$")) {
            return false;
        } else {
            return true;
        }
    }

    public int getId() {
        return id;
    }

    public Pessoa getPessoa() {
        return p;
    }

    public void setPerson(Pessoa p) {
        if (p == null) {
            throw new IllegalArgumentException("pessoa nao pode ser nula");
        } else {
            this.p = p;
        }
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        if (!validMail(email)) {
            throw new IllegalArgumentException("email invalido");
        } else {
            this.email = email;
        }
    }

    public String getNumber() {
        return number;
    }

    public void setPhone(String number) {
        if (!vaildNumber(number)) {
            throw new IllegalArgumentException("Invalid number");
        } else {
            this.number = number;
        }

    }

    public String toString() {
        return String.format("nome: %s, id: %d, email: %s", p.getNome(), id, email);
    }

}

public class ex2 {
    public static Scanner sc = new Scanner(System.in);
    private static Contatos[] contato;

    public static int menu() {

        System.out.println("1. Inserir contacto");
        System.out.println("2. Alterar contacto");
        System.out.println("3. Apagar contacto");
        System.out.println("4. Procurar contacto");
        System.out.println("5. Listar contactos");
        System.out.println("0. Sair");
        System.out.print("Digite a opção: ");
        
        return sc.nextInt();
        
    }

    public static boolean pessoaExiste(int cc) {
        for (Contatos c : contato) {
            if (c.getPessoa().getCC() == cc) {
                System.out.print("Já existe um contacto para essa pessoa, pretende criar um novo? (s/n): ");
                String answer = sc.nextLine();
                return answer.equals("s");
            }
        }
        return true;
    }

    /**
     * @return
     */
    public static Contatos searchContato(Contatos contato){
        System.out.print("Digite o nome ou numero: ");
        String index = sc.nextLine();
        int i=0;
        for (Contatos c : contato) {
            if (c.getNumber().equals(index) || c.getPessoa().getNome().equals(index)) {
                i++;
            }
        }
        if (i==2){
            System.out.println("insira id");
            int id = sc.nextInt();
            for (Contatos c : contato) {
                if (c.getId()==id) {
                    return c;
                }
            }
        }else{
            for (Contatos c : contato) {
                if (c.getNumber().equals(index) || c.getPessoa().getNome().equals(index)) {
                    return c;
                } else{
                    return null;
                }
                
            }
        }
    }   

    public static void main(String[] args) {

        int option = menu();
        

        switch (option) {
            case 1:
                System.out.println("insira os dados");
                System.out.print("Insira o nome: ");
                String name = sc.next();
                System.out.print("Insira o cc: ");
                int cc = sc.nextInt();
                System.out.print("Insira a data de nascimento (formado: dd-mm-yyyy): ");
                String date = sc.nextLine();
                String[] dateParts = date.split("-");
                DateYMD birthDate = new DateYMD(Integer.parseInt(dateParts[0]), Integer.parseInt(dateParts[1]),
                        Integer.parseInt(dateParts[2]));
                System.out.print("Insira o email: ");
                String email = sc.nextLine();
                System.out.print("Insira o telefone: ");
                String phone = sc.nextLine();
                Pessoa p = new Pessoa(name, cc, birthDate);

                Contatos contact = new Contatos(p, email, phone);

                if (contato == null) {
                    contato = new Contatos[1];
                    contato[0] = contact;
                } else {
                    if (pessoaExiste(cc)) {
                        break;
                    } else {
                        Contatos[] newContacts = new Contatos[contato.length + 1];
                        System.arraycopy(contato, 0, newContacts, 0, contato.length);
                        newContacts[contato.length] = contact;
                        contato = newContacts;
                    }

                }

            case 2:

        }

    }
}