class Solution:
    def isValid(self, s: str) -> bool:
        s = s+"a"
        s = [i for i in s]
        s.pop()
        result = []
        for i in s:
            if i in ("(","[","{") :
                result.append(i)
            elif len(result)>0:
                if i == ")" and result[-1]=="(":
                    result.pop()
                elif i == "}" and result[-1]=="{":
                    result.pop()
                elif i == "]" and result[-1]=="[":
                    result.pop()
                else:
                    result.insert(0,i)
            else:
                return False
        if len(result)>0:
            return False
        else:
            return True
        