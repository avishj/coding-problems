// Source: https://web.archive.org/web/20240117030302/https://regexone.com/problem/extracting_log_data

import java.util.regex.Pattern;

public class Problem7 {
    public static void main(String[] args) {
        String regex = "^.*at\\s[\\w\\.]*\\.(\\w+)\\(([a-zA-Z]+.java):(\\d+)\\)";
        assert !Pattern.matches(regex, "W/dalvikvm( 1553): threadid=1: uncaught exception");
        assert !Pattern.matches(regex, "E/( 1553): FATAL EXCEPTION: main");
        assert !Pattern.matches(regex, "E/( 1553): java.lang.StringIndexOutOfBoundsException");
        assert Pattern.matches(regex, "E/( 1553):   at widget.List.makeView(ListView.java:1727)");
        assert Pattern.matches(regex, "E/( 1553):   at widget.List.fillDown(ListView.java:652)");
        assert Pattern.matches(regex, "E/( 1553):   at widget.List.fillFrom(ListView.java:709)");
    }
}
