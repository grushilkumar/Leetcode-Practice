# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:

        lis1 = 0
        lis2 = 0
        i =1
        while l1.next != None:
            lis1 += l1.val*i
            i = i*10
            l1 = l1.next
        lis1 += l1.val*i
        j=1
        while l2.next != None:
            lis2 += l2.val*j
            j = j*10
            l2 = l2.next
        lis2 += l2.val*j

        total = lis1 + lis2
        result = []
        for num in str(total):
            result.append(int(num))

        dummy_head = ListNode(0)
        current = dummy_head
        for digit in reversed(result):
            current.next = ListNode(digit)
            current = current.next
        print(dummy_head)
        return dummy_head.next
        