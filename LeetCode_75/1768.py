class Solution:
  def mergeAlternately(self, word1: str, word2: str) -> str:
      answer = []
      for i in range(max(len(word1),len(word2))):
          if i < len(word1):
              answer.append(word1[i])
          if i < len(word2):
              answer.append(word2[i])

      return ''.join(answer)