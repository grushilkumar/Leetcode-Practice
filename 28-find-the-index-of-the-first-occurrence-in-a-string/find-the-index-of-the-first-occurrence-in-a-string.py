class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        if needle in haystack:
            idx = haystack.index(needle)
        else:
            return -1
        return idx 
        