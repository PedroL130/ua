public class recursiva {
    public static void main(String[] args) {
        recursion1(100);
        
    }
    public static void recursion1(int x) {
        System.out.print(x + ",");
        x -= 10;
        if (x>-100){
            recursion1(x);
        }
        
    }
    
}
