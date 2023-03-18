import java.util.Scanner;

class DateYMD {
    private int day;
    private int month;
    private int year;

    public DateYMD(int day, int month, int year) {
        if (!valid(day, month, year)) {
            throw new IllegalArgumentException("Invalid date");
        }
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public static boolean validMonth(int month) {
        return month >= 1 && month <= 12;
    }

    public static int monthDays(int month, int year) {
        if (!validMonth(month)) {
            throw new IllegalArgumentException("Invalid month");
        }
        if (month == 2) {
            return leapYear(year) ? 29 : 28;
        } else if (month == 4 || month == 6 || month == 9 || month == 11) {
            return 30;
        } else {
            return 31;
        }
    }

    public static boolean leapYear(int year) {
        if (year % 4 != 0) {
            return false;
        } else if (year % 100 != 0) {
            return true;
        } else if (year % 400 != 0) {
            return false;
        } else {
            return true;
        }
    }

    public static boolean valid(int day, int month, int year) {
        if (!validMonth(month)) {
            return false;
        }
        int maxDays = monthDays(month, year);
        return day >= 1 && day <= maxDays;
    }

    public void set(int day, int month, int year) {
        if (!valid(day, month, year)) {
            throw new IllegalArgumentException("Invalid date");
        }
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
        int maxDays = monthDays(month, year);
        if (day == maxDays) {
            day = 1;
            if (month == 12) {
                month = 1;
                year++;
            } else {
                month++;
            }
        } else {
            day++;
        }
    }

    public void decrement() {
        if (day == 1) {
            if (month == 1) {
                month = 12;
                year--;
            } else {
                month--;
            }
            day = monthDays(month, year);
        } else {
            day--;
        }
    }

    @Override
    public String toString() {
        return String.format("%04d-%02d-%02d", year, month, day);
    }
}



public class ex1{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        DateYMD date = null;
        int option;

        do {
            System.out.println("Date operations:");
            System.out.println("1 - create new date");
            System.out.println("2 - show current date");
            System.out.println("3 - increment date");
            System.out.println("4 - decrement date");
            System.out.println("0 - exit");
            System.out.print("Enter option: ");
            option = sc.nextInt();

            switch (option) {
                case 1:
                    System.out.print("Enter day (1-31): ");
                    int day = sc.nextInt();
                    System.out.print("Enter month (1-12): ");
                    int month = sc.nextInt();
                    System.out.print("Enter year: ");
                    int year = sc.nextInt();
                    try {
                        date = new DateYMD(day, month, year);
                        System.out.println("Date created: " + date);
                    } catch (IllegalArgumentException e) {
                        System.out.println("Invalid date");
                    }
                    break;
                case 2:
                    if (date != null) {
                        System.out.println("Current date: " + date);
                    } else {
                        System.out.println("No date created yet");
                    }
                    break;
                case 3:
                    if (date != null) {
                        date.increment();
                        System.out.println("Date incremented: " + date);
                    } else {
                        System.out.println("No date created yet");
                    }
                    break;
                case 4:
                    if (date != null) {
                        date.decrement();
                        System.out.println("Date decremented: " + date);
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
        } while (option != 0);
        sc.close();
    }
}
