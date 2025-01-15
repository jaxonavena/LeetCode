# @param {String} s
# @return {Integer}
def max_score(s)
    scores = {}
    s.each_char.with_index do |_char, i|
        scores[i] = s.slice(0..i).count("0") + s.slice(i+1..).count("1") if i < s.length - 1
    end
    scores.values.max
end
