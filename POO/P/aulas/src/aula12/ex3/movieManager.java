package aula12.ex3;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

public class movieManager {

    private ArrayList<MoviesRegister> movies_list;

    public movieManager() {
        movies_list = new ArrayList<>();
    }

    public void readMovies() throws FileNotFoundException {

        Scanner sc = new Scanner(new File("src/aula12/ex3/movies.txt"), "UTF-8");
        while (sc.hasNext()) {
            String[] data = sc.nextLine().split("\t");
            if (data[0].equals("name")){
                continue;
            }
            String name = data[0];
            double score = Double.parseDouble(data[1]);
            String rating = data[2];
            String genre = data[3];
            int runningTime = Integer.parseInt(data[4]);
            MoviesRegister movie = new MoviesRegister(name, score, rating, genre, runningTime);
            movies_list.add(movie);
        }

    }

    public void printMovies() {
        for (MoviesRegister movie : movies_list) {
            System.out.println("Name: " + movie.getName() +
                    ", Score: " + movie.getScore() +
                    ", Rating: " + movie.getRating() +
                    ", Genre: " + movie.getGenre() +
                    ", Running Time: " + movie.getTime());
        }
    }

    public void sortMoviesByName() {
        movies_list.sort((a, b) -> a.getName().compareToIgnoreCase(b.getName()));

    }

    public void sortMoviesByScore() {
        movies_list.sort((m1, m2) -> Double.compare(m2.getScore(), m1.getScore()));
    }

    public void sortMoviesByRunningTime() {
        movies_list.sort((m1, m2) -> Integer.compare(m1.getTime(), m2.getTime()));
    }

    public void printDistinctGenres() {
        Set<String> genres = new HashSet<>();
        for (MoviesRegister movie : movies_list) {
            genres.add(movie.getGenre());
        }

    }

    public Map<String, Integer> countMoviesByGenre() {
        Map<String, Integer> genreCount = new HashMap<>();
        for (MoviesRegister movie : movies_list) {
            String genre = movie.getGenre();
            genreCount.put(genre, genreCount.getOrDefault(genre, 0) + 1);
        }
        return genreCount;
    }

    public List<MoviesRegister> filterMoviesByScoreAndGenre(double minScore, String genre) {
        List<MoviesRegister> selectedMovies = new ArrayList<>();
        for (MoviesRegister movie : movies_list) {
            if (movie.getScore() > minScore && movie.getGenre().equals(genre)) {
                selectedMovies.add(movie);
            }
        }
        return selectedMovies;
    }

    public void writeSelectedMovies(String filename, List<MoviesRegister> selectedMovies) throws IOException {
        try (FileWriter writer = new FileWriter(filename)) {
            for (MoviesRegister movie : selectedMovies) {
                writer.write(movie.getName() + "\t" + movie.getScore() + "\t" + movie.getRating() +
                        "\t" + movie.getGenre() + "\t" + movie.getTime() + "\n");
            }
        }
    }

}
