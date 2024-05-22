// Source: https://web.archive.org/web/20240506213551/https://leetcode.com/problems/length-of-last-word/

class Solution {
    public int lengthOfLastWord(String s) {
        int lastWordLength = 0, currentWordLength = 0;
        for (int i = 0; i < s.length(); ++i) {
            if (s.charAt(i) != ' ') {
                ++currentWordLength;
            } else {
                if (currentWordLength > 0) {
                    lastWordLength = currentWordLength;
                }
                currentWordLength = 0;
            }
        }
        if (currentWordLength > 0) {
            return currentWordLength;
        }
        return lastWordLength;
    }
}