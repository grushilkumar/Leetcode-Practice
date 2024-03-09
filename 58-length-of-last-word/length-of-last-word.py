class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        list1 = s.split(" ")
        list1 = [i for i in list1 if i]
        print(list1)
        return len(list1[-1])         