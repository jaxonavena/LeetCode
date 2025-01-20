# @param {String} s
# @return {String}
def remove_stars(s)
    stack = []
    s.each_char do |char|
        unless char == "*"
            stack.append(char)
        else
            stack.pop
        end
    end
    stack.join
end
