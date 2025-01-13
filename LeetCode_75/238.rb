# INCOMPLETE

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  answer = []
  return Array.new(nums.length, 0) if nums.count(0) > 1
  nums.each.with_index do |num, i|
      ans = (nums - [nums[i]]).inject(1) {|product, num| num * product}
      answer.append(ans)
  end

  # Criteria: answer[i] == (nums - [nums[i]]).inject(1) {|product, num| num * product }
  answer
end