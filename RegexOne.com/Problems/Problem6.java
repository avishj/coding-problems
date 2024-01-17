// Source: https://web.archive.org/web/20240117025911/https://regexone.com/problem/trimming_whitespace

import java.util.regex.Pattern;

public class Problem6 {
    public static void main(String[] args) {
        String regex = "^\\s*(.*)\\s*$";
        assert Pattern.matches(regex, "			The quick brown fox...");
        assert Pattern.matches(regex, "   jumps over the lazy dog.");
    }
}
