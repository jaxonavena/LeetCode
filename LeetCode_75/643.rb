# INCOMPLETE

# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
    left = 0
    right = k - 1
    max = nil

    while right <= nums.length - 1
        curr = nums[left..right]
        average = curr.inject(0, :+) / k.to_f
        max = average if max == nil || average > max
        left += 1
        right += 1
    end
    max
end
