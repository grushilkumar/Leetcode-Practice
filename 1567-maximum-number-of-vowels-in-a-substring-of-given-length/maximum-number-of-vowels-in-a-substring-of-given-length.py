class Solution:
    def maxVowels(self, s: str, k: int) -> int:
        vowels = ['a','e','i','o','u']
        vowel_count = 0
        max_vowel_count = 0
        left = 0

        for right in range(len(s)):
            if right-left+1>k:
                if s[left] in vowels:
                    vowel_count-=1
                left = left + 1
            print(right,vowel_count)
            if s[right] in vowels:
                vowel_count+=1
                max_vowel_count = max(vowel_count,max_vowel_count)
        return max_vowel_count