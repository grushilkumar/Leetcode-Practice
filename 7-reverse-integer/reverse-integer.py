class Solution:
    def reverse(self, x: int) -> int:
        i = 1
        sum = 0
        flag = False
        for n in str(x):
            if n == '-':
                flag = True
            else:
                sum = sum+ int(n)*i
                i = i*10
        if sum < 2147483647:
            if flag == True:
                return (-sum)
            return sum
        else:
            return 0
        