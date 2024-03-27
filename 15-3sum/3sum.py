class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        nums.sort()
        result = []
        for i in range(len(nums)-2):
            if i>0 and nums[i] == nums[i-1]:
                continue
            l = i+1
            r = len(nums)-1
            while l<r:
                total = nums[i]+nums[l]+nums[r]
                if total < 0:
                    l += 1
                elif total > 0:
                    r -=1
                else:
                    list1 = [nums[i],nums[l],nums[r]]
                    result.append(list1)
                    while l<r and nums[l] == list1[1]:
                        l += 1
                    while l<r and nums[r] == list1[2]:
                        r -= 1
        return(result)