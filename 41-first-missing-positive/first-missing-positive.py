class Solution:
    def firstMissingPositive(self, nums: List[int]) -> int:

        # def swap(arr, i, j):
        #     arr[i], arr[j] = arr[j], arr[i]
        
        n = len(nums)
        i = 0

        for i in range(n):
            while 0<nums[i]<=n  and nums[i] != nums[nums[i]-1]:
                corrected_index = nums[i]-1
                nums[i],nums[corrected_index] =nums[corrected_index],nums[i]
                # swap(nums,i,nums[i]-1) 


        for i in range(n):
            if nums[i] != i + 1:
                return i + 1
        
        # If all positive integers from 1 to n are present, return n + 1
        return n + 1