# INCOMPLETE

class Solution:
    def minCostClimbingStairs(self, cost: List[int]) -> int:
        if len(cost) == 1:
            return cost[0]
        if len(cost) == 2:
            return cost[1]

        return min(self.minCostClimbingStairs(cost) + cost[], self.minCostClimbingStairs(cost) + cost[])