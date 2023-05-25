package aula09.ex3;

import java.util.ArrayList;
import java.util.List;



public class PlaneManager {
    private List<Plane> planes;

    public PlaneManager() {
        planes = new ArrayList<>();
    }
    
    public void addPlane(Plane plane){
        planes.add(plane);
    }

    public void removePlane(String id){
        if (searchId(id)!=-1)
            planes.remove(searchId(id));
        else
            System.out.println("aviao nao existe");
    }

    public int searchId(String id){
        int i=0;
        for (Plane p:planes){
            if (p.getId().equals(id)){
                return i;
            }
            i++;
        }
        return -1;
    }

    public Plane searchPlane(String id){
        if (searchId(id)!=-1)
            return planes.get(searchId(id));
        else
            System.out.println("aviao nao existe");
            return null;
    }

    public List<Plane> getCommercialPlanes(){
        List<Plane> commercialPlanes = new ArrayList<>();
        for (Plane p:planes){
            if (p.getModel().equals("Comercial")){
                commercialPlanes.add(p);
            }
        }
        return commercialPlanes;
    }

    public List<Plane> getMilitaryPlanes(){
        List<Plane> militaryPlanes = new ArrayList<>();
        for (Plane p:planes){
            if (p.getModel().equals("Militar")){
                militaryPlanes.add(p);
            }
        }
        return militaryPlanes;
    }

    public void printAllPlanes(){
        for (Plane p:planes){
            System.out.println(p.toString());
        }
    }

    public Plane getFastestPlane(){
        double vm=0;
        Plane fastestPlane = null;
        for (Plane p:planes){
            if (p.getMaxSpeed()>vm){
                vm=p.getMaxSpeed();
                fastestPlane=p;
            }
        }
        return fastestPlane;
    }

}