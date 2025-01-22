# INCOMPLETE

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    pete = {}
    t.each_char.with_index do |char, i|
        pete[char] = i
    end

    i = 0
    prev = -1
    while i < s.length
        key = s[i] # current char
        return false unless pete.keys.include?(key) # it is at least present

        val = pete[key] # corresponding i
        val > prev ? prev = val : return false
       
        i+=1
    end
    true
end
