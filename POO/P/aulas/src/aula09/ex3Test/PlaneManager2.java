package aula09.ex3Test;

import java.util.ArrayList;

public class PlaneManager2 {
    private ArrayList<Plane2> plane;

    public PlaneManager2() {
        plane = new ArrayList<>();
    }


    public ArrayList<Plane2> getPlane() {
        return this.plane;
    }

    public void setPlane(ArrayList<Plane2> plane) {
        this.plane = plane;
    }

    public void removePlane(String id) {
        for (Plane2 p:plane){
            if (p.getId().equals(id))
                plane.remove(p);
        }
    }

    public void addPlane(Plane2 p){
        this.plane.add(p);
    }

    public Plane2 searchPlane(String id){
        for (Plane2 p:plane){
            if (p.getId().equals(id)){
                return p;
            }
        }
        return null;
    }

    public void getCommercialPlanes(){
        for (Plane2 p : plane){
            if (p.getType().equals("Comercial")){
                System.out.println(p.toString());
            }
        }
    }

    public void getMilitaryPlanes(){
        for (Plane2 p : plane){
            if (p.getType().equals("Militar")){
                System.out.println(p.toString());
            }
        }
    }

    public void printAllPlanes(){
        for (Plane2 p : plane){
            System.out.println(p.toString());
        }
    }
    
    public Plane2 getFastestPlane(){
        int fastest = 0;
        Plane2 PFast = null;
        for (Plane2 p : plane){
            if (p.getVMax() > fastest){
                fastest = p.getVMax();
                PFast = p;
            }
        }
        return PFast;
    }

    
    
}
