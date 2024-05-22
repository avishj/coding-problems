// Source: https://web.archive.org/web/20240424230955/https://leetcode.com/problems/happy-number/

import java.util.HashSet;
import java.util.Set;

class Solution {
    public boolean isHappy(int n) {
        Set<Integer> history = new HashSet<>();
        while (n != 1 && !history.contains(n)) {
            history.add(n);
            int sum = 0;
            while (n > 0) {
                sum += (n % 10) * (n % 10);
                n /= 10;
            }
            n = sum;
        }
        if (n == 1) {
            return true;
        }
        return false;
    }
}