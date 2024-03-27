class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        nums = nums1+nums2
        nums.sort()
        n = len(nums)
        if n%2 == 0:
            x = float(nums[(n//2)-1]+nums[(n//2)])/2
        else:
            a = ((n-1)//2)
            x = nums[a]
        return x
        