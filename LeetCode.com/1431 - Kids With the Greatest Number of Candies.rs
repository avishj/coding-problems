// Source: https://web.archive.org/web/20240520201634/https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/

// Version 1

use std::cmp;

impl Solution {
    pub fn kids_with_candies(candies: Vec<i32>, extra_candies: i32) -> Vec<bool> {
        let mut max_candies = candies.iter().max().unwrap();
        let mut output = Vec::new();
        for candy in candies.iter() {
            match max_candies.cmp(&(*candy + extra_candies)) {
                cmp::Ordering::Greater => output.push(false),
                _ => output.push(true),
            }
        }
        output
    }
}

// Version 2

use std::cmp;

impl Solution {
    pub fn kids_with_candies(candies: Vec<i32>, extra_candies: i32) -> Vec<bool> {
        let max_candies = *candies.iter().max().unwrap();
        candies
            .into_iter()
            .map(|c| c + extra_candies >= max_candies)
            .collect()
    }
}
