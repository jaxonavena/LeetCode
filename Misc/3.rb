# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    left = 0
    right = 0
    max = 0
    letters = Hash.new(0)

    while right <= s.length - 1
        if letters[s[right]] > 0 # repeat, slide window
            left += 1
            right = left
            letters = Hash.new(0)
        else # new letter, increment right
            letters[s[right]] = 1
            max = letters.size if max < letters.size
            right += 1
        end
    end

    max
end
