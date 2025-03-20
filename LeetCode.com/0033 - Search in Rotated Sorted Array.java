class Solution {
    public int search(int[] nums, int target) {
        int left = 0, right = nums.length - 1, mid;
        while (left < right) {
            mid = (left + right) >>> 1; // or low + (high - low) / 2
            if (nums[left] <= nums[mid]) { // left half incl mid is sorted
                if (nums[left] <= target && target <= nums[mid]) { // target in left half
                    right = mid;
                } else { // target in right half
                    left = mid + 1;
                }
            } else { // if left half is not sorted, right half must be sorted
                if (nums[mid] < target && target <= nums[right]) { // right half excl mid is sorted
                    left = mid + 1;
                } else { // target in left half
                    right = mid;
                }
            }
        }
        return nums[left] == target ? left : -1;
    }
}