class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        num_str = ''.join(map(str,digits))
        num = str(int(num_str)+1)
        result = [int(i) for i in num]
        return result
        