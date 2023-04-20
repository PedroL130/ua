package aula5;
import java.util.Scanner;
import java.util.List;
import java.sql.DataTruncation;
import java.time.Year;
import java.util.ArrayList;

public class DateYMD {

    private int day, month, year;

    public DateYMD(int day, int month, int year) {
        if (!valid(day, month, year)) {
            throw new IllegalArgumentException("Invalid date1");
        }
        this.day = day;
        this.month = month;
        this.year = year;
    }

    static public boolean validMonth(int month) {
        if (month > 1 || month < 12) {
            return true;
        } else {
            return false;
        }
    }

    static public int monthDays(int month, int year) {
        if (!validMonth(month)) {
            throw new IllegalArgumentException("Invalid month");
        }
        if (month == 2) {
            if (leapYear(year)) {
                return 29;
            } else {
                return 28;
            }
        } else {
            if (month % 2 == 0) {
                return 31;
            } else {
                return 30;
            }
        }

    }

    static public boolean leapYear(int year) {
        if (year<0) {
            throw new IllegalArgumentException("Invalid date1");
        }

        if (year % 400 == 0 && year % 4 == 0 && year % 100 != 0) {
            return true;
        } else {
            return false;
        }
    }

    static public boolean valid(int day, int month, int year) {
        if (validMonth(month) && validDay(day, month, year) && year > 0) {
            return true;
        } else {
            return false;
        }
    }

    static public boolean validDay(int day, int month, int year) {
        if (validMonth(month) && day <= monthDays(month, year) && day >0) {
            return true;
        } else {
            return false;
        }
    }

    public void set(int day, int month, int year) {
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public int getDay() {
        return day;
    }

    public int getMonth() {
        return month;
    }

    public int getYear() {
        return year;
    }

    public void increment() {
        if (day == monthDays(month, year)){
            this.day=1;
            if (month==12){
                this.year++;
                this.month=1;
            }else{
                this.month++;
            }  
        }else{
            this.day++;
        }
        
    }

    public void addDays(int days) {

        if(days+day > monthDays(days, days)){
            if (month==12){
                this.year++;
                this.month=1;
            }else{
                this.month++;
            } 
        }

        if (day == monthDays(month, year)){
            
            this.day=days;
            if (month==12){
                this.year++;
                this.month=1;
            }else{
                this.month++;
            }  
        }else{
            this.day++;
        }
        
    }

    public void decrement() {
        if (day == 1){
            
            if (month==1){
                this.year--;
                this.month=12;
                
            }else{
                this.month--;
            }  
            this.day=monthDays(month, year);
        }else{
            this.day--;
        }
    }

    // método toString que devolva a data no formato AAAA-MM-DD?
    
    public String toString() {
        return String.format("%04d-%02d-%02d", year, month, day);
    }
}

public class ex_1 {

    public static void menu() {
        String menulist = "//Date operations://1 - create new date//2 - show current date//3 - increment date//4 - decrement date//0 - exit";
        String[] menu1 = menulist.split("//");

        for (int i = 0; i < 7; i++) {
            System.out.println(menu1[i]);
        }
    }

    public static void main(String[] args) {
        DateYMD data = null;
        int option = -1;
        int year = 0, day = 0, month = 0;
        Scanner sc = new Scanner(System.in);

        while (option != 0) {
            menu();
            option = sc.nextInt();
            switch (option) {
                case 1:
                    System.out.println("insira a data no formato AAAA-MM-DD");
                    String[] op1 = sc.next().split("-");
                    
                    if (op1.length < 0 || op1.length > 3){
                        System.out.println("Data invalida, insira a data no formato AAAA-MM-DD");
                        break;
                    }
                    year = Integer.parseInt(op1[0]);
                        
                    month = Integer.parseInt(op1[1]);
                    day = Integer.parseInt(op1[2]);
                    data = new DateYMD(day, month, year);
                    
                    try {
                        
                        data = new DateYMD(day, month, year);
                    } catch (IllegalArgumentException e) {
                        // TODO: handle exception
                        System.out.println("data invalida2");
                        break;
                    }
                    break;
                case 2:
                    if (data != null) {
                        System.out.println("Current date: " + data.toString());
                    } else {
                        System.out.println("No date created yet");
                    }
                    break;
                case 3:
                    if (data != null) {
                        data.increment();
                        System.out.println("Date incremented: " + data.toString());
                    } else {
                        System.out.println("No date created yet");
                    }
                    break;
                case 4:
                    if (data != null) {
                        data.decrement();
                        System.out.println("Date decremented: " + data.toString());
                    } else {
                        System.out.println("No date created yet");
                    }
                    break;
                case 0:
                    System.out.println("Exiting program");
                    break;
                default:
                    System.out.println("Invalid option");
            }

        }
        sc.close();

        
    }
}
