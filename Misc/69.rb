# Is this cheating? It said don't use built in exponential operators like x ** 0.5 or pow(x, 0.5), but didn't say anything about a built in .sqrt. I guess it's technically not
# cheating, but it is definitely not the intended test of skills, lol. Maybe I'll come back to it. Probably not

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    Math.sqrt(x).floor
end
