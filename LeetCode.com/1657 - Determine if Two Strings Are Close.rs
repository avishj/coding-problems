// Source: https://web.archive.org/web/20240522181415/https://leetcode.com/problems/determine-if-two-strings-are-close/

impl Solution {
    pub fn close_strings(word1: String, word2: String) -> bool {
        if word1.len() != word2.len() {
            return false;
        }
        let mut word1_counts: [u32; 26] = [0; 26];
        let mut word2_counts: [u32; 26] = [0; 26];
        word1.bytes().for_each(|e| {
            word1_counts[(e - 97) as usize] += 1;
        });
        word2.bytes().for_each(|e| {
            word2_counts[(e - 97) as usize] += 1;
        });
        for i in 0..26 {
            if (word1_counts[i] == 0 && word2_counts[i] != 0)
                || (word1_counts[i] != 0 && word2_counts[i] == 0)
            {
                return false;
            }
        }
        word1_counts.sort_unstable();
        word2_counts.sort_unstable();
        word1_counts == word2_counts
    }
}
