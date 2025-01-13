class Solution:
    def reverseVowels(self, s: str) -> str:
        """
        :type s: str
        :rtype: str
        """
        s_list = list(s)
        print(s_list)
        vowels = ["a","e","i","o","u","A","E","I","O","U"]
        indeces = []
        letters = []
        i = 0

        for letter in s_list:
            print("Current letter at index ", i)
            print(letter)
            if letter in vowels:
                letters.append(letter)
                indeces.append(i)

            i += 1

        print("S: ", s.lower())
        print("Indeces: ", indeces)
        print("Letters: ", letters)
        letters.reverse()
        print("Reversed Letters: ", letters)

        j = 0
        for index in indeces:
            s_list.pop(index)
            s_list.insert(index, letters[j])
            j += 1


        return ''.join(s_list)