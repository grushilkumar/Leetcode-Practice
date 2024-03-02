class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if not strs:
            return ""
        prefix = ""
        strs.sort()
        print(strs[0])
        print(strs[-1])
        for i in range(len(strs[0])):
            if strs[0][i] != strs[-1][i]:
                return(prefix)
            prefix += strs[0][i]
        return(prefix)
        