import java.util.*;

class Solution {
    public int lengthOfLongestSubstring(String s) {
        Map<Character, Integer> seen = new HashMap<>();
        int left = 0, maxLength = 0;
        for (int right = 0; right < s.length(); ++right) {
            char c = s.charAt(right);
            if (seen.containsKey(c)) {
                left = Math.max(left, seen.get(c) + 1);
            }
            seen.put(c, right);
            maxLength = Math.max(maxLength, right - left + 1);
        }
        return maxLength;
    }
}