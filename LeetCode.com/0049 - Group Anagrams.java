import java.util.*;

class Solution {
    public List<List<String>> groupAnagrams(String[] strs) {
        Map<String, List<String>> map = new HashMap<>();
        for (String str : strs) {
            char[] strChr = str.toCharArray();
            Arrays.sort(strChr);
            map.computeIfAbsent(new String(strChr), _ -> new ArrayList<>()).add(str);
        }
        return new ArrayList<>(map.values());
    }
}