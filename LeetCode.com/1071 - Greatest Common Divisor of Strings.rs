// Source: https://web.archive.org/web/20240520205258/https://leetcode.com/problems/greatest-common-divisor-of-strings/

impl Solution {
    fn gcd(mut a: usize, mut b: usize) -> usize {
        while b != 0 {
            let temp = b;
            b = a % b;
            a = temp;
        }
        a
    }
    pub fn gcd_of_strings(str1: String, str2: String) -> String {
        println!("{}", Self::gcd(str1.len(), str2.len()));
        if str1.clone() + &str2 == str2.clone() + &str1 {
            str1[0..Self::gcd(str1.len(), str2.len())].to_owned()
        } else {
            "".to_owned()
        }
    }
}
