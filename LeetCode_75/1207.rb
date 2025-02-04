# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
    map = Hash.new(0)
    arr.each { |num| map[num] += 1 }
    Set.new(map.values).size == map.values.size
end
