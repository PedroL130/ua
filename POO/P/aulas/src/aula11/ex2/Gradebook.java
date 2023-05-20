package aula11.ex2;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;


public class Gradebook{
    
    private HashMap<String, List<Double>> mapStudents;
    List<String> words2 = new ArrayList<>();
    public Gradebook() {
        mapStudents = new HashMap<>();
    }

    public void load(String file) {
        try {
            Scanner input = new Scanner(new File("src/aula11/ex2/alunos.txt"), "UTF-8");
            

            while (input.hasNext()) {

              
                String[] words= input.nextLine().split("\\|");

                
                System.out.println(words[1]);

                List<Double> grade = new ArrayList<>();

                for (int i = 1; i < words.length; i++) {
                    try {
                        grade.add(Double.parseDouble(words[i]));
                    } catch (Exception e) {
                        // TODO: handle exception
                        System.out.println("erro");
                    }
                }

                this.mapStudents.put(words[0], grade); 
            }

        } catch (FileNotFoundException e) {
            // TODO: handle exception
            System.out.println("file invalido");
        }

    }

    public void addStudent(Student aluno) {
        // TODO: add student
        this.mapStudents.put(aluno.getName(), aluno.getGrades());

    }

    public void removeStudent(String aluno) {
        // TODO: add student
        this.mapStudents.remove(aluno);

    }


    public void printAllStudents() {
        // TODO: print all students
        System.out.println(this.mapStudents);

    }

    public Student getStudent(String aluno) {
        Student aluno1 = new Student(aluno, mapStudents.get(aluno));
        return aluno1;
    }

    public List<String> getWords2() {
        return words2;
    }

    public double calculateAverageGrade(String aluno){
        double soma = 0;
        int n = 0;
        for (int i = 0; i < mapStudents.get(aluno).size(); i++) {
            soma += mapStudents.get(aluno).get(i);
            n++;
        }
        return soma / n;
    }
}
