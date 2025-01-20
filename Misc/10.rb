# INCOMPLETE

# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  return s == p if !p.include?(".") and !p.include?("*") # exact match?

  if p.include?(".") and !p.include?("*") # . but no *
      return false unless s.length == p.length # must be the same length
      p.each_char.with_index do |char, i|
          return false unless (char == s[i] or char == ".") # must be the same char or .
      end
      return true

  elsif !p.include?(".") and p.include?("*") # * but no .
      p.each_char.with_index do |pat, i|
          lock = false
          if pat == "*"
              zero_or_many = p[i-1]
              lock = true
          end

          if lock
              s.each_char.with_index do |let, j|
                  if i >= j # if we're at or beyond the *
                      return false unless s[j] == zero_or_many
                  end
              end
          end
      end

  else # both . and *

  end

end
