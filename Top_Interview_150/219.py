# INCOMPLETE

class Solution:
    def containsNearbyDuplicate(self, nums: List[int], k: int) -> bool:
        if len(nums) > 0:
            print(len(nums))
            for i in range(len(nums)):
                if key:
                    i -= 1
                    j -= 1
                for j in range(len(nums)):
                    print(f"i, j {i}, {j}")
                    if nums[i] == nums[j] and i != j:
                        if abs(i - j) <= k:
                            return True
                    elif i == j:
                        continue
                    else:
                        nums = nums[1:]
                        key = True


        return False

