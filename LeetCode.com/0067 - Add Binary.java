// Source: https://web.archive.org/web/20240423220614/https://leetcode.com/problems/add-binary/

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.stream.Collectors;

class Solution {
    public String addBinary(String a, String b) {
        Deque<Character> sumQueue = new ArrayDeque<>();
        int aLength = a.length(), bLength = b.length(), maxLength = Math.max(aLength, bLength);
        boolean carryOn = false;
        for (int i = 1; i <= maxLength; ++i) {
            char aCurrentChar = (aLength - i >= 0) ? a.charAt(aLength - i) : '0';
            char bCurrentChar = (bLength - i >= 0) ? b.charAt(bLength - i) : '0';
            if (aCurrentChar == '0' && bCurrentChar == '0') {
                if (carryOn) {
                    carryOn = false;
                    sumQueue.push('1');
                } else {
                    sumQueue.push('0');
                }
            } else if ((aCurrentChar == '0' && bCurrentChar == '1') || (aCurrentChar == '1' && bCurrentChar == '0')) {
                if (carryOn) {
                    sumQueue.push('0');
                } else {
                    sumQueue.push('1');
                }
            } else if (aCurrentChar == '1' && bCurrentChar == '1') {
                if (carryOn) {
                    sumQueue.push('1');
                } else {
                    carryOn = true;
                    sumQueue.push('0');
                }
            }
        }
        if (carryOn) {
            sumQueue.push('1');
        }
        return sumQueue.stream().map(Object::toString).collect(Collectors.joining());
    }
}