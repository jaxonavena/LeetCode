class Solution(object):
    def canPlaceFlowers(self, flowerbed, n):
        """
        :type flowerbed: List[int]
        :type n: int
        :rtype: bool
        """
        possible_n_count = 0
        touching_a_1 = False
        just_placed_n = False

        for flower in flowerbed:
            if flower == 0 and touching_a_1 == False and just_placed_n == False:
                possible_n_count += 1
                just_placed_n = True

            elif flower == 0:
               just_placed_n = False
               touching_a_1 = False

            elif flower == 1 and just_placed_n == True:
                possible_n_count -= 1

            elif flower == 1:
                touching_a_1 = True

        if possible_n_count >= n:
            return True
        else:
            return False