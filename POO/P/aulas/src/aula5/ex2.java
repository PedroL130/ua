import java.util.Scanner;
import java.util.ArrayList;

class CalendarYMD {
    private int year, weekDayOfYear, weekDayOfMonth,firstDayOfWeek;
    private int day = weekDayOfYear;

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

    public int firstWeekDayOfMonth(int month){
        
        //for(int i = 1;i<=month;i++){
            
        
        
        for (int m = 1; m < month; m++) {
            if (day == 7)
                day = 0;
            int days = DateYMD.monthDays(m, this.year);
            day += days % 7 - 1;
            if (day > 7)
                day -= 7;
            day++;
        }
        return day == 7 ? 7 : day%7;

    }
}