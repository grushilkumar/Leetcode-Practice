class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        num = 0
        for i in range(len(nums)):
            if  nums[i] == target:
                return i
            elif target < nums[i]:
                return i
            elif i== len(nums)-1 and  nums[-1]< target:
                return i+1
        