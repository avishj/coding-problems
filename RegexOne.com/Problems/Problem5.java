// Source: https://web.archive.org/web/20240117025353/https://regexone.com/problem/matching_filenames

import java.util.regex.Pattern;

public class Problem5 {
    public static void main(String[] args) {
        String regex = "^(.+)\\.(jpg|png|gif)$";
        assert !Pattern.matches(regex, ".bash_profile");
        assert !Pattern.matches(regex, "workspace.doc");
        assert Pattern.matches(regex, "img0912.jpg");
        assert Pattern.matches(regex, "updated_img0912.png");
        assert !Pattern.matches(regex, "documentation.html");
        assert Pattern.matches(regex, "favicon.gif");
        assert !Pattern.matches(regex, "img0912.jpg.tmp");
        assert !Pattern.matches(regex, "access.lock");
    }
}