# @param {String} s
# @param {Integer[]} spaces
# @return {String}
def add_spaces(s, spaces)
    spaces.reverse.each do |spc_idx|
        s.insert(spc_idx, " ")
    end
    s
end
