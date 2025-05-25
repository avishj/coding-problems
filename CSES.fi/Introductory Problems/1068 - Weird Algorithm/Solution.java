import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        long n = input.nextLong();
        while (n != 1) {
            System.out.print(n + " ");
            if ((n & 1) == 0) {
                n /= 2;
            } else {
                n = (3 * n) + 1;
            }
        }
        System.out.print(n);
        input.close();
    }
}