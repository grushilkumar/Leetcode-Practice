class Solution:
    def minimumAbsDifference(self, arr: List[int]) -> List[List[int]]:
        nums = sorted(arr)
        print(nums)
        output = []
        mindiff = nums[-1]-nums[0]
        for i in range(len(nums)-1):
            diff = nums[i+1]-nums[i]
            if diff < mindiff:
                mindiff = diff
                output = [[nums[i],nums[i+1]]]
            elif diff == mindiff:
                output.append([nums[i],nums[i+1]])
        return output
        