# @param {String} s
# @return {String}
def reverse_words(s)
  s.scan(/(\S+)/).reverse.join(" ").lstrip
end