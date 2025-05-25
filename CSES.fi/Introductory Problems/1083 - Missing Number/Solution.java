import java.util.Arrays;
import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        long n = input.nextLong();
        input.nextLine();
        long sumToN = n * (n + 1) / 2;
        long givenNumbersSum = Arrays.stream(input.nextLine().split(" "))
                .mapToLong(Long::parseLong).sum();
        System.out.println(sumToN - givenNumbersSum);
        input.close();
    }
}
