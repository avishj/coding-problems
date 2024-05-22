// Source: https://web.archive.org/web/20240521162806/https://leetcode.com/problems/find-the-difference-of-two-arrays/

use std::collections::HashSet;

impl Solution {
    pub fn find_difference(nums1: Vec<i32>, nums2: Vec<i32>) -> Vec<Vec<i32>> {
        let nums1 = nums1.into_iter().collect::<HashSet<_>>();
        let mut nums2 = nums2.into_iter().collect::<HashSet<_>>();
        let mut nums1copy = nums1.clone();
        nums1copy.retain(|e| !nums2.contains(&e));
        nums2.retain(|e| !nums1.contains(&e));
        vec![
            nums1copy.into_iter().collect::<Vec<i32>>(),
            nums2.into_iter().collect::<Vec<i32>>(),
        ]
    }
}
