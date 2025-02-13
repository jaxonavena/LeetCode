# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    nums = (nums1 + nums2).sort
    i = nums.length / 2

    return nums[i].to_f if nums.length.odd?
    return (nums[i - 1].to_f + nums[i].to_f) / 2.0
end
