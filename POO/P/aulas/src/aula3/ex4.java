import java.util.Scanner;
import utils.*;
import java.util.Random;
import java.lang.Math;

public class ex4 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("insira o numero de alunos da turma ");
        int alunos = input.nextInt();

        double[] np = new double[alunos];
        double[] nt = new double[alunos];
        double[] nf = new double[alunos];

        Random gerador = new Random();
        

        for (int i = 0; i < np.length; i++){
            
            np[i] = gerador.nextDouble(20);
            
        }
            
        for (int i = 0; i < nt.length; i++){
            
            nt[i] = gerador.nextDouble(20);
            
        }
        
        for (int i = 0; i < nf.length; i++){
            
            nf[i] = 0.4 * nt[i] + 0.6 * np[i] ;
            if (np[i] <7 || nt[i] <7) {
                nf[i] = 66;
            }else{
                nf[i] = Math.round(nf[i]);
            }
            
        }

        System.out.println("notap  notat  pauta");
        for (int i = 0; i < nf.length; i++){
            
            System.out.printf("%2.1f %5.1f %5.0f \n",  np[i] , nt[i] , nf[i]);
    
        }



        input.close();

    }
}
