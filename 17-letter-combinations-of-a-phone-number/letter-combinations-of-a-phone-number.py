class Solution:
    def letterCombinations(self, digits: str) -> List[str]:
        length = len(digits)
        k = {2:['a','b','c'],3:['d','e','f']
        ,4:['g','h','i'],5:['j','k','l'],6:['m','n','o'],7:['p','q','r','s'],8:['t','u','v'],9:['w','x','y','z']
        }
        if length < 1:
            return []
        if length == 1:
            result = [x for x in k[int(digits[0])] ]
            return result
        elif length  == 2:
            result = [x+y for x in k[int(digits[0])] for y in k[int(digits[1])]]
            return result
        elif length  == 3:
            result = [x+y+z for x in k[int(digits[0])] for y in k[int(digits[1])] for z in k[int(digits[2])]]
            return result
        elif length  == 4:
            result = [x+y+z+i for x in k[int(digits[0])] for y in k[int(digits[1])] for z in k[int(digits[2])] for i in k[int(digits[3])]]
            return result
        