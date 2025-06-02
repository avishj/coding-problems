import java.util.Arrays;

class Solution {
    public int missingNumber(int[] nums) {
        long expectedSum = nums.length * (nums.length + 1) / 2;
        long actualSum = Arrays.stream(nums).sum();
        return (int) (expectedSum - actualSum);
    }
}