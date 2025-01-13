class Solution:
    def largestAltitude(self, gain: List[int]) -> int:
        a = 0
        best = 0
        for g in gain:
            a += g
            best = a if a > best else best

        return best