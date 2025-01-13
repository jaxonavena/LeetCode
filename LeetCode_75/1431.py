class Solution(object):
    def kidsWithCandies(self, candies, extraCandies):
        """
        :type candies: List[int]
        :type extraCandies: int
        :rtype: List[bool]
        """
        max_candy = max(candies)
        result = []

        for kid in candies:
            if kid + extraCandies >= max_candy:
                result.append(True)
            else:
                result.append(False)


        return result