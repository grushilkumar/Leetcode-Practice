class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        i = 0
        j = 0
        word = ''
        while i<len(word1) or j<len(word2):
            if i<len(word1):
                word = word+word1[i]
                i+=1
            if j<len(word2):
                word = word+word2[j]
                j+=1
        return(word)