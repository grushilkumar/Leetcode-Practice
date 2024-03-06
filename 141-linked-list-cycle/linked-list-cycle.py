# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def hasCycle(self, head: Optional[ListNode]) -> bool:
        first = head
        second = head
        while(second!=None and second.next!=None):
            second=second.next.next
            first=first.next
            if(second==first):
                return True
        return False