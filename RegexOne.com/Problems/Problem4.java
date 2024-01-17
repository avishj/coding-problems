// Source: https://web.archive.org/web/20240117024607/https://regexone.com/problem/matching_html

import java.util.regex.Pattern;

public class Problem4 {
    public static void main(String[] args) {
        String regex = "^<(\\w+\\b).*>.*</\\1>$";
        assert Pattern.matches(regex, "<a>This is a link</a>");
        assert Pattern.matches(regex, "<a href='https://regexone.com'>Link</a>");
        assert Pattern.matches(regex, "<div class='test_style'>Test</div>");
        assert Pattern.matches(regex, "<div>Hello <span>world</span></div>");
    }
}