package aula11.ex1;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class test1 {
    public static void main(String[] args) {
        String filename = "major.txt";
        String outputFilename = "output.txt";

        try {
            Map<String, Integer> wordPairsCount = countWordPairs(filename);
            writeWordPairsCount(wordPairsCount, outputFilename);
            System.out.println("Word pairs count saved to " + outputFilename);
        } catch (IOException e) {
            System.out.println("An error occurred: " + e.getMessage());
        }
    }

    private static Map<String, Integer> countWordPairs(String filename) throws IOException {
        Map<String, Integer> wordPairsCount = new HashMap<>();

        try (BufferedReader reader = new BufferedReader(new FileReader(filename))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] words = line.split("[\\t\\n.,:'‘’;?!-*{}=+&/()\\[\\]”“\"\\\\]");

                for (int i = 0; i < words.length - 1; i++) {
                    String word1 = words[i];
                    if (word1.length() >= 3) {
                        for (int j = i + 1; j < words.length; j++) {
                            String word2 = words[j];
                            if (word2.length() >= 3) {
                                String pair = word1 + "=" + word2;
                                wordPairsCount.put(pair, wordPairsCount.getOrDefault(pair, 0) + 1);
                            }
                        }
                    }
                }
            }
        }

        return wordPairsCount;
    }

    private static void writeWordPairsCount(Map<String, Integer> wordPairsCount, String filename) throws IOException {
        try (FileWriter writer = new FileWriter(filename)) {
            for (Map.Entry<String, Integer> entry : wordPairsCount.entrySet()) {
                writer.write(entry.getKey() + "={" + entry.getValue() + "}\n");
            }
        }
    }
}
