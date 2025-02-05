# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    # Boyer-Moore Voting Algorithm, which finds the majority element in O(n) time and O(1) space.
    # n = nums.length
    # thresh = n / 2
    # candidate = -1
    # votes = 0

    # nums.each_with_index do |num, i|
    #     if votes == 0
    #         candidate = nums[i]
    #         votes = 1
    #     else
    #         if candidate == nums[i]
    #             votes += 1
    #         else
    #             votes -= 1
    #         end
    #     end
    # end

    # count = 0

    # n.times {|i| count += 1 if (nums[i] == candidate)}
            
            
    # return candidate if (count > thresh)


    nums.sort[nums.length / 2]
end
