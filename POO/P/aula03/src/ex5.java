import java.util.Scanner;
import utils.*;


public class ex5 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("insira a data no formato mm/yyyy ");    
        String data = input.nextLine();
        int mes,ano;

        try {
            mes = Integer.parseInt(data.split("/")[0]);
            ano = Integer.parseInt(data.split("/")[1]);
        } catch (NumberFormatException e) {
            System.out.println("Data inválida");
            return;
        }

        while ((mes<1 || mes>12 || ano <2000 || ano > 2023  )){
            System.out.println("Data inválida, insira outra");
            data = input.nextLine();
            try {
                mes = Integer.parseInt(data.split("/")[0]);
                ano = Integer.parseInt(data.split("/")[1]);
            } catch (NumberFormatException e) {
                System.out.println("Data inválida");
                return;
            }
        }

        System.out.print("insira o dia da semana que comeca esse mes(de 1 a 7) "); 
        int dia_da_semana = input.nextInt();

        while (dia_da_semana<1 || dia_da_semana>7){
            System.out.print("dia invalido, insira outro(de 1 a 7) "); 
            dia_da_semana = input.nextInt();
        }

        String[] meses = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
        
        System.out.printf("%13s %5s \n",meses[mes-1],ano);

        int DiasDoMes = userinput.calcularDiasNoMes(mes, ano);
        
        System.out.printf(" Su  Mo  Tu  We  Th  Fr  Sa\n");

        if(dia_da_semana==7){
            
    
            for (int i=1; i <= DiasDoMes; i++){
                System.out.printf("%3d ", i);
    
                if ((i ) % 7 == 0 && i !=1) {
                    System.out.println();
                }
            }
        }else{
            for (int i = 1; i < dia_da_semana; i++) {
                System.out.printf(" %3s"," ");
            }
        
            
            for (int i = 1; i <= DiasDoMes; i++) {
                System.out.printf("%3d ", i);
        
                if ((i + dia_da_semana - 1) % 7 == 0) {
                    System.out.println();
                }
            }
        }

        System.out.print("\n");

        

        



        input.close();

    }
}
