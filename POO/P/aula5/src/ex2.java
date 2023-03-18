import java.util.Scanner;
import java.util.ArrayList;

class CalendarYMD {
    private int year, weekDayOfYear, weekDayOfMonth;

    public CalendarYMD(int year, int weekday) {
        if (!(validWeekDay() && validYear())){
            throw new IllegalArgumentException("dados invalidos");
        }else{
            this.year = year;
            this.weekDayOfYear = weekday;
        }
    }

    public int getYear() {
        return year;
    }

    public int getWeekdayOfYear() {
        return weekDayOfYear;
    }

    public boolean validWeekDay() {
        if (weekDayOfYear >= 1 && weekDayOfYear <= 7) {
            return true;
        } else {
            return false;
        }
    }

    public boolean validYear(){
        if (year >= 1) {
            return true;
        }else{
            return false;
        }
    }

    public int weekDayOfMonth(int month){
        if (validYear() && validWeekDay()){
            
            return (weekDayOfYear - 1) % 7 + 1;
        }else{
            throw new IllegalArgumentException("dados invalidos");
        }

        for(int i = 1;i<=month;i++){
            
        }

    }
}