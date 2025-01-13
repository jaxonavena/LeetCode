class Solution:
    def countBits(self, n: int) -> List[int]:
        counts = []
        for decimal in range(n+1):
            count = 0
            bin_str = str(bin(decimal))
            print(bin_str)
            for bit in bin_str:
                if bit == "1":
                    count += 1

            counts.append(count)

        return counts