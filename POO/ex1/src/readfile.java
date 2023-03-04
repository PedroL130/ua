import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class readfile {
    public static void main(String[] args){
        Path file = Paths.get("hello.txt");
        try{
            Files.readAllLines(file).stream().forEach(System.out::println);
        }catch (IOException e) {
			System.out.println("Certifique-se que o ficheiro \"major.txt\" está na raiz da pasta do projeto");
		}
    }
    
}
