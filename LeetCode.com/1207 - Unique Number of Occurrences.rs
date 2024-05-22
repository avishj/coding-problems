// Source: https://web.archive.org/web/20240521162335/https://leetcode.com/problems/unique-number-of-occurrences/

use std::collections::{HashMap, HashSet};

impl Solution {
    pub fn unique_occurrences(arr: Vec<i32>) -> bool {
        let mut map = HashMap::new();
        arr.iter().for_each(|e| {
            map.entry(e).and_modify(|v| *v += 1).or_insert(1);
        });
        map.values().collect::<HashSet<_>>().len() == map.len()
    }
}
