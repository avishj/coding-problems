// Source: https://web.archive.org/web/20240117004009/https://regexone.com/problem/matching_phone_numbers

import java.util.regex.Pattern;

public class Problem2 {
    public static void main(String[] args) {
        String regex = "^(\\d{1,3})?[\\s-]?\\(?(\\d{3})\\)?[\\s-]?\\d{3}[\\s-]?\\d{4}$";
        assert Pattern.matches(regex, "415-555-1234");
        assert Pattern.matches(regex, "650-555-2345");
        assert Pattern.matches(regex, "(416)555-3456");
        assert Pattern.matches(regex, "202 555 4567");
        assert Pattern.matches(regex, "4035555678");
        assert Pattern.matches(regex, "1 416 555 9292");
    }
}
