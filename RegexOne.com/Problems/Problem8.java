// Source: https://web.archive.org/web/20240117031015/https://regexone.com/problem/extracting_url_data

import java.util.regex.Pattern;

public class Problem8 {
    public static void main(String[] args) {
        String regex = "^([a-zA-Z]+)://([\\w\\-\\.]+)(:(\\d+))?/.*$";
        Pattern.matches(regex, "ftp://file_server.com:21/top_secret/life_changing_plans.pdf");
        Pattern.matches(regex, "https://regexone.com/lesson/introduction#section");
        Pattern.matches(regex, "file://localhost:4040/zip_file");
        Pattern.matches(regex, "https://s3cur3-server.com:9999/");
        Pattern.matches(regex, "market://search/angry%20birds");
    }
}
