# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
    arr.each.with_index do |n, i|
        return true if arr.include?(n*2) and arr.find_index(n*2) != i
    end
    false
end
