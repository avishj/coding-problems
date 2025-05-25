import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String string = input.next();
        char lastSeen = '\u0000';
        int maxLength = 0, currentLength = 0;
        for (char c : string.toCharArray()) {
            if (lastSeen == c) {
                ++currentLength;
            } else {
                lastSeen = c;
                maxLength = (maxLength > currentLength) ? maxLength : currentLength;
                currentLength = 1;
            }
        }
        maxLength = (maxLength > currentLength) ? maxLength : currentLength;
        System.out.println(maxLength);
        input.close();
    }
}
