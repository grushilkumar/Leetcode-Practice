class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        substring = ""
        result = []
        for i in s:
            if i not in substring:
                substring += i
            else:
                result.append(substring)
                substring = substring[substring.index(i) + 1:] + i
        result.append(substring)
        maxlen = max(len(sub) for sub in result)
        return maxlen