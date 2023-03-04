public class hello {
    int x = 568;
    public static void main(String[] args) {
        hello myObj = new hello();
        System.out.println("Hello");
        System.out.println(myObj.x);
    }
    public int getX() {
        return x;
    }
    public void setX(int x) {
        this.x = x;
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + x;
        return result;
    }
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        hello other = (hello) obj;
        if (x != other.x)
            return false;
        return true;
    } 
}