class Solution:
    def romanToInt(self, s: str) -> int:

        val = {'I':1,'V':5,'X':10,'L':50,'C':100,'D':500,'M':1000,'IV':4,'IX':9,'XL':40,'XC':90,'CD':400,'CM':900}
        sum = 0
        flag = False
        for i in range(len(s)):
            if flag == True:
                flag = False
                continue
            if((i<len(s)-1) and (concat(s[i],s[i+1]) in val) and (flag == False)):
                flag =  True
                sum += val[concat(s[i],s[i+1])]
                print(1,sum)
                pass
                
            else:
                # if(s[i] in val):
                sum += val[s[i]]
        
        return(sum)