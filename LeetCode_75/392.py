# INCOMPLETE

class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        t = list(t)
        temp = t.copy()
        for letter in temp:
            if letter not in s:
                t.remove(letter)

        print(t)

        return s in ''.join(t)
