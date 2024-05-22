// Source: https://web.archive.org/web/20240424140134/https://leetcode.com/problems/climbing-stairs/

class Solution {
    public int climbStairs(int n) {
        int current = 0, previous = 1;
        for (int i = n; i >= 0; --i) {
            current = current + previous;
            previous = current - previous;
        }
        return current;
    }
}