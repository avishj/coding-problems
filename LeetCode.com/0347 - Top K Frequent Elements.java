import java.util.*;

class Solution {
    public int[] topKFrequent(int[] nums, int k) {
        Map<Integer, Integer> freq = new HashMap<>();
        for (int num : nums) {
            freq.compute(num, (_, v) -> (v == null) ? 1 : v + 1);
        }
        Queue<Integer> minHeap = new PriorityQueue<>((a, b) -> freq.get(a) - freq.get(b));
        for (int num : freq.keySet()) {
            minHeap.offer(num);
            if (minHeap.size() > k) {
                minHeap.poll();
            }
        }
        int[] result = new int[k];
        for (int i = k - 1; i >= 0; --i) {
            result[i] = minHeap.poll();
        }
        return result;
    }
}