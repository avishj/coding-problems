// Source: https://web.archive.org/web/20240423212603/https://leetcode.com/problems/sqrtx/

class Solution {
    public int mySqrt(int x) {
        if (x == 0 || x == 1) {
            return x;
        }
        int left = 1, right = x, middle;
        long middleSquared;
        while (left <= right) {
            middle = left + (right - left) / 2;
            middleSquared = (long) middle * (long) middle;
            if (middleSquared == x) {
                return middle;
            } else if (middleSquared > x) {
                right = middle - 1;
            } else {
                left = middle + 1;
            }
        }
        return right;
    }
}