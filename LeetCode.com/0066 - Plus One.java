// Source: https://web.archive.org/web/20240424170928/https://leetcode.com/problems/plus-one/

class Solution {
    public int[] plusOne(int[] digits) {
        boolean carryFlag = false;
        for (int i = digits.length - 1; i >= 0; --i) {
            if (i == digits.length - 1) {
                if (digits[i] < 9) {
                    digits[i] += 1;
                    break;
                } else {
                    digits[i] = 0;
                    carryFlag = true;
                }
            } else if (carryFlag) {
                if (digits[i] < 9) {
                    digits[i] += 1;
                    carryFlag = false;
                    break;
                } else {
                    digits[i] = 0;
                }
            }
        }
        if (carryFlag) {
            int[] newDigits = new int[digits.length + 1];
            System.arraycopy(digits, 0, newDigits, 1, digits.length);
            newDigits[0] = 1;
            return newDigits;
        }
        return digits;
    }
}