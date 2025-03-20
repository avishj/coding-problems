import java.util.*;

class Solution {
    public List<List<Integer>> threeSum(int[] nums) {
        if (nums == null || nums.length < 3) {
            return new ArrayList<>();
        }
        Arrays.sort(nums);
        List<List<Integer>> output = new ArrayList<>();
        for (int i = 0; i < nums.length - 2; ++i) {
            if (i > 0 && nums[i] == nums[i - 1]) { // skip if current is same as previous to prevent duplicates
                continue;
            }
            if (nums[i] > 0) { // smallest >0 means no solution; early exit
                break;
            }
            int left = i + 1, right = nums.length - 1;
            while (left < right) {
                int sum = nums[i] + nums[left] + nums[right];
                if (sum < 0) {
                    ++left;
                } else if (sum > 0) {
                    --right;
                } else {
                    output.add(List.of(nums[i], nums[left], nums[right]));
                    while (left < right && nums[left] == nums[left + 1]) { // skip dupes
                        ++left;
                    }
                    while (left < right && nums[right] == nums[right - 1]) { // skip dupes
                        --right;
                    }
                    ++left;
                    --right;
                }
            }
        }
        return output;
    }
}