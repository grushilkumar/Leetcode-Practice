class Solution:
    def longestPalindrome(self, s: str) -> str:
        longest_palindrome = ""
        
        for i in range(len(s)):
            # Odd length palindrome
            odd_palindrome = self.expand_around_center(s, i, i)
            if len(odd_palindrome) > len(longest_palindrome):
                longest_palindrome = odd_palindrome
            
            # Even length palindrome
            even_palindrome = self.expand_around_center(s, i, i + 1)
            if len(even_palindrome) > len(longest_palindrome):
                longest_palindrome = even_palindrome
        
        return longest_palindrome
    
    def expand_around_center(self, s: str, left: int, right: int) -> str:
        while left >= 0 and right < len(s) and s[left] == s[right]:
            left -= 1
            right += 1
        return s[left + 1:right]