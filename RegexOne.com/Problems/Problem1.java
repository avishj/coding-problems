import java.util.regex.Pattern;

public class Problem1 {
    public static void main(String[] args) {
        String regex = "-?[\\d\\.,]*e?[\\d\\.,]*";
        assert Pattern.matches(regex, "3.14529");
        assert Pattern.matches(regex, "-255.34");
        assert Pattern.matches(regex, "128");
        assert Pattern.matches(regex, "1.9e10");
        assert Pattern.matches(regex, "123,340.00");
        assert !Pattern.matches(regex, "720p");
    }
}