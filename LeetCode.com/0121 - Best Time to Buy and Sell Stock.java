class Solution {
    public int maxProfit(int[] prices) {
        int overallMax = 0, currentMax = 0;
        for (int i = 1; i < prices.length; ++i) {
            currentMax += prices[i] - prices[i - 1]; // add diff b/w prices
            currentMax = Math.max(0, currentMax); // if return goes -ve restart from next index
            overallMax = Math.max(overallMax, currentMax);
        }
        return overallMax;
    }
}