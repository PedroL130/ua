package aula12.ex3;


public class movies {
    private String name;
    private double score;
    private String rating;
    private String genre;
    private int Time;

    public movies(String name, double score, String rating, String genre, int time) {
        this.name = name;
        this.score = score;
        this.rating = rating;
        this.genre = genre;
        this.Time = time;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getTime() {
        return Time;
    }

    public void setTime(int time) {
        Time = time;
    }

    
}
