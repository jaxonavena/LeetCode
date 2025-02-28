# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    digits[-1] += 1

    while i = digits.find_index { |num| num > 9 }
        digits[i] = 0

        if i > 0
            digits[i - 1] += 1
        else
            digits.insert(0, 1)
        end
    end
    digits
end
