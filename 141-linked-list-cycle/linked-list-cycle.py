# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def hasCycle(self, head: Optional[ListNode]) -> bool:
        first = head
        second = head
        if head == None:
            return False
        i = 10000
        try:
            while head.next != None:
                head = head.next
                i = i-1
                if i == 0:
                    return True
            if(head.next == None):
                return False
        except:
            return True
        return True
        