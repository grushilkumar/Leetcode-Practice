class Solution:
    def addBinary(self, a: str, b: str) -> str:
        summation = int(a,2)+int(b,2)
        num = bin(summation)
        return(num[2:])