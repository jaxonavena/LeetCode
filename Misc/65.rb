# INCOMPLETE

# @param {String} s
# @return {Boolean}
def is_number(s)
    # 2
    # 0089
    # -0.1
    #  +3.14
    # 4.
    # -.9
    # 2e10
    # -90E3
    # 3e+7
    # +6e-1
    # 53.5e93
    # -123.456e789
    return s.match(/^(?!.*[eE]$)[\-\+]?\d*\.?\d+[eE]?[\-\+]?\d*/) ? true : false
end
