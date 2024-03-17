class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        idx = -1
        count = 0
        for i in range(n):
            nums1[idx] = nums2[count]
            count += 1
            idx -= 1
        nums1 = nums1.sort()
            
        