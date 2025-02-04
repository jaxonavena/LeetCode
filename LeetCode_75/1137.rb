# @param {Integer} n
# @return {Integer}
def tribonacci(n, memo = {})
    return n if n < 2
    return 1 if n == 2
    return memo[n] if memo.key?(n)
    
    memo[n] = tribonacci(n - 3, memo) + tribonacci(n - 2, memo) + tribonacci(n - 1, memo)
end
