class Solution:
    def firstMissingPositive(self, nums: List[int]) -> int:
        n = len(nums)
        if 1 not in nums:
            return 1
        if n == 1:
            return 2 if nums[0] == 1 else 1
        for i in range(n):
            if nums[i] <= 0 or nums[i] > n:
                nums[i] = 1
        for i in range(n):
            index = abs(nums[i]) - 1
            if nums[index] > 0:
                nums[index] = -nums[index]
        
        # Find the first positive number
        for i in range(n):
            if nums[i] > 0:
                return i + 1
        
        # If all numbers are present from 1 to n, return n + 1
        return n + 1