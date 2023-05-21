package aula12.ex3;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class movieManager {

    private ArrayList<movies> movies;

    public movieManager() {
            movies = new ArrayList<>();
    }


    public void readMovies(String filename) throws IOException {
        
        try (Scanner sc = new Scanner(new File("src/aula12/ex3/movies.txt"),"UTF-8")) {
            String line = sc.nextLine(); // Ignore header line
            while (sc.hasNext()) {
                String[] data = line.split("\t");
                String name = data[0];
                double score = Double.parseDouble(data[1]);
                String rating = data[2];
                String genre = data[3];
                int runningTime = Integer.parseInt(data[4]);
                movies movie = new movies(name, score, rating, genre, runningTime);
                movies.add(movie);
            }
        }
    }

    public void printMovies() {
        for (movies movie : movies) {
            System.out.println("Name: " + movie.getName() +
                    ", Score: " + movie.getScore() +
                    ", Rating: " + movie.getRating() +
                    ", Genre: " + movie.getGenre() +
                    ", Running Time: " + movie.getTime());
        }
    }

    public void sortMoviesByName() {
        Collections.sort(movies,(m1, m2) -> String.equals(m2.getName(), m1.getName()));
    }

    public void sortMoviesByScore() {
        Collections.sort(movies, (m1, m2) -> Double.compare(m2.getScore(), m1.getScore()));
    }

    public void sortMoviesByRunningTime() {
        Collections.sort(movies, (m1, m2) -> Integer.compare(m1.getTime(), m2.getTime()));
    }

    public void printDistinctGenres() {
        Set<String> genres = new HashSet<>();
        for (Movie movie : movies) {
            genres.add(movie.getGenre());
        }

        System.out.println("Distinct Genres:");
        for (String genre : genres) {
            System.out.println("Genre: " + genre + ", Count: " + countMoviesByGenre(genre));
        }
    }

    public Map<String, Integer> countMoviesByGenre() {
        Map<String, Integer> genreCount = new HashMap<>();
        for (Movie movie : movies) {
            String genre = movie.getGenre();
            genreCount.put(genre, genreCount.getOrDefault(genre, 0) + 1);
        }
        return genreCount;
    }

    public List<Movie> filterMoviesByScoreAndGenre(double minScore, String genre) {
        List<Movie> selectedMovies = new ArrayList<>();
        for (Movie movie : movies) {
            if (movie.getScore() > minScore && movie.getGenre().equals(genre)) {
                selectedMovies.add(movie);
            }
        }
        return selectedMovies;
    }

    public void writeSelectedMovies(String filename, List<Movie> selectedMovies) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filename))) {
            for (Movie movie : selectedMovies) {
                writer.write(movie.getName() + "\t" + movie.getScore() + "\t" + movie.getRating() +
                        "\t" + movie.getGenre() + "\t" + movie.getRunningTime() + "\n");
            }
        }
    }

}
