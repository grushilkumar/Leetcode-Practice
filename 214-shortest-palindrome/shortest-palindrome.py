class Solution:
    def shortestPalindrome(self, s: str) -> str:
        if not s:
            return s
        for i in range(len(s),0,-1):
            if self.checkPalindrome(s[:i]):
                return s[i:][::-1]+s
        return s[::-1]+s
    
    def checkPalindrome(self,s: str) -> bool:
        return s==s[::-1]
        