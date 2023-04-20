package IParkManager;

public interface IParkManager {

    public void addPlant(Plant plant);
    public void removePlant(Plant plant);
    public void searchForSpecies(String name);
    public boolean sponsorPlant(int plantId);
    public void listAllPlants();
    public void listSummarySpecies();
}

class ParkManager{
    private Plant[] plantas;
    private String nomePark;
    
    public ParkManager(String nome){
        this.nomePark=nome;
    }

    public void addPlant(Plant p){
        Plant[] x = new Plant[this.getSize()+1];

        System.arraycopy(this.plantas, 0, x, 0, this.getSize());
        x[this.getSize()]=p;
        this.plantas=x;
        
    }

    public int getSize(){
        return this.plantas.length;
    }

    public boolean valid(Plant p2){
        for(Plant p : this.plantas){
            if (p2==p){
                return true;
            }
        }
        return false;
    }

    public void searchForSpecies(String name){
        for(Plant p : this.plantas){
            if (name.equals(p.getPlant())){
                System.out.printf("Planta: %s,Sponsor: %s,Idade: %s,Altura: %s, Id: %s ", p.getPlant(),p.getPatrocinador(),p.getIdade(),p.getAltura(),p.getId());
            }
        }
    }

    public boolean sponsorPlant(int plantId){
        for(Plant p : this.plantas){
            if (p.getId()==plantId){
                return true;
            }
        }
        return false;
    }

    public void listAllPlants(){
        for(Plant p : this.plantas){
            System.out.printf("Planta: %s,Sponsor: %s,Idade: %s,Altura: %s, Id: %s ", p.getPlant(),p.getPatrocinador(),p.getIdade(),p.getAltura(),p.getId());
        }
    }

    public void listSummarySpecies(){
        int tree=0,Shrub=0,PalmTree=0;
        for(Plant p : this.plantas){
            if (p.getPlant().equals("Tree")){
                tree++;
            }else if (p.getPlant().equals("Shrub")){
                Shrub++;
            }else if (p.getPlant().equals("PalmTree")){
                PalmTree++;
            }
        } 
        System.out.printf("Tree: %d,Shrub: %d,PalmTree: %d",tree,Shrub,PalmTree);

    }
}


