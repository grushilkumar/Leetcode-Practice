class Solution:
    def reverseWords(self, s: str) -> str:
        lis = s.split(" ")
        lis.reverse()
        lis = [i for i in lis if i]
        return (' '.join(lis)).strip()
        