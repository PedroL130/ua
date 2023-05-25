package aula12.ex3;

import java.io.IOException;
import java.util.List;

public class moviesMain {
    public static void main(String[] args) {
        movieManager movieManager = new movieManager();
        try {
            movieManager.readMovies();

            System.out.println("Movies sorted by name:");
            movieManager.sortMoviesByName();
            movieManager.printMovies();
            System.out.println();

            System.out.println("Movies sorted by score (descending):");
            movieManager.sortMoviesByScore();
            movieManager.printMovies();
            System.out.println();

            System.out.println("Movies sorted by running time (ascending):");
            movieManager.sortMoviesByRunningTime();
            movieManager.printMovies();
            System.out.println();

            movieManager.printDistinctGenres();
            System.out.println();

            double minScore = 60.0;
            String userGenre = "comedy";
            List<MoviesRegister> selectedMovies = movieManager.filterMoviesByScoreAndGenre(minScore, userGenre);
            movieManager.writeSelectedMovies("myselection.txt", selectedMovies);
            System.out.println("Selected movies have been written to 'myselection.txt'.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
