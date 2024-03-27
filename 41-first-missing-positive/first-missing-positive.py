class Solution:
    def firstMissingPositive(self, nums: List[int]) -> int:
        nums.sort()
        if 1 not in nums:
            return 1
        if len(nums) == 1:
            if nums[0]>1 or nums[0]<1:
                return 1
        if nums[-1]<0:
                return 1

        for i in range(len(nums)):
            if i> 0:
                if int(nums[0])>1:
                    return 1
                elif nums[i]-1 != nums[i-1] and nums[i-1]>0 and nums[i] != nums[i-1]:
                    print('hi')
                    return nums[i-1]+1
        return nums[len(nums)-1]+1
        