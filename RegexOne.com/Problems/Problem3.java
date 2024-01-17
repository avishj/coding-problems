// Source: https://web.archive.org/web/20240117011501/https://regexone.com/problem/matching_emails

import java.util.regex.Pattern;

public class Problem3 {
    public static void main(String[] args) {
        // Does not handle any special characters in the email or subdomain emails!
        String regex = "^([\\w\\.]+)\\+?[\\w\\.]*@([\\w\\.]+)$";
        assert Pattern.matches(regex, "tom@hogwarts.com");
        assert Pattern.matches(regex, "tom.riddle@hogwarts.com");
        assert Pattern.matches(regex, "tom.riddle+regexone@hogwarts.com");
        assert Pattern.matches(regex, "tom@hogwarts.eu.com");
        assert Pattern.matches(regex, "potter@hogwarts.com");
        assert Pattern.matches(regex, "harry@hogwarts.com");
        assert Pattern.matches(regex, "hermione+regexone@hogwarts.com");
    }
}
