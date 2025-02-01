# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    stack = []
    ans = []
    n = n
    backtrack = lambda do |leftCount, rightCount|
        if leftCount == rightCount && leftCount == n
            ans.append(stack.join(""))
        end

        if leftCount < n
            stack.append("(")
            backtrack.call(leftCount + 1, rightCount)
            stack.pop()
        end

        if rightCount < leftCount
            stack.append(")")
            backtrack.call(leftCount, rightCount + 1)
            stack.pop()
        end
    end

    backtrack.call(0,0)
    ans
end
