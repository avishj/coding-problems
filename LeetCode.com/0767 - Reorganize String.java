class Solution {
    public String reorganizeString(String s) {
        int[] counts = new int[26];
        for (char c : s.toCharArray()) {
            ++counts[c - 'a'];
        }
        int maxCountIdx = 0;
        for (int i = 0; i < counts.length; ++i) {
            if (counts[maxCountIdx] < counts[i]) {
                maxCountIdx = i;
            }
        }
        if (counts[maxCountIdx] > (s.length() + 1) / 2) {
            return "";
        }
        char[] output = new char[s.length()];
        int outputIdx = 0;
        while (counts[maxCountIdx] > 0) {
            output[outputIdx] = (char) (maxCountIdx + 'a');
            outputIdx += 2;
            --counts[maxCountIdx];
        }
        for (int i = 0; i < counts.length; ++i) {
            while (counts[i] > 0) {
                if (outputIdx >= output.length) {
                    outputIdx = 1;
                }
                output[outputIdx] = (char) (i + 'a');
                outputIdx += 2;
                --counts[i];
            }
        }
        return String.valueOf(output);
    }
}