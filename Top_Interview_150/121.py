# INCOMPLETE

class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        bestProfit = 0

        for i in range(len(prices)):
            for j in range(i+1,len(prices)):#Not the same day and not going backwards in time
                if (prices[j] - prices[i]) > bestProfit:  # newProfit > currentProfit
                    bestProfit = (prices[j] - prices[i])

        return bestProfit