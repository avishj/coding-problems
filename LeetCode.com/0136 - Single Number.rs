// Source: https://web.archive.org/web/20240509224052/https://leetcode.com/problems/single-number/

impl Solution {
    pub fn single_number(nums: Vec<i32>) -> i32 {
        nums.into_iter()
            .reduce(|acc, e| acc ^ e)
            .unwrap()
            .to_owned()
    }
}
