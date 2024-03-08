class Solution:
    def maxFrequencyElements(self, nums: List[int]) -> int:
        num = dict()
        for i in nums:
            if i not in num:
                num[i] =1
            else:
                num[i] +=1
        max_count = 0
        total_max_count = 0
        for i in num:
            if num[i]> max_count:
                max_count = num[i]
        for i in num:
            if num[i] == max_count:
                total_max_count += max_count    
        print(max_count)
        return total_max_count
        