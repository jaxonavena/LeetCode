# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  short = str1.length < str2.length ? str1 : str2
  largest = ""
  short.each_char.with_index do |_char, i|
      divisor = short[0..i]
      regex = /\A(#{divisor})+\z/
      largest = short[0..i] if str1 =~ regex and str2 =~ regex
  end
  largest
end