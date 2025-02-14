# INCOMPLETE

# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
    return true if s == p
    # return true if p == "*"
    return false if s.length != p.length and p.include?("*") == false

    star_lock = false

    s.each_char.with_index do |char, i|
        puts "\nlock: #{star_lock}"
        puts "char: #{char}"
        puts "p[i]: #{p[i]}"
        
        if char == p[i]
            star_lock = false
        elsif char != p[i] and p[i] == "?"
            star_lock = false
        elsif char != p[i] and p[i] == "*" # first hit of star
            star_lock = true
        elsif star_lock
            next
        else
            return false
        end
    end

    return true
end
