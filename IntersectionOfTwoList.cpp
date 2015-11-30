/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
class Solution {
public:
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
        int lenA = 0;
        ListNode* node_now = headA;  
        while(node_now != NULL)
        {
            node_now = node_now->next;
            lenA++;
        }
        int lenB = 0;
        node_now = headB;  
        while(node_now != NULL)
        {
            node_now = node_now->next;
            lenB++;
        }
        if(lenA >= lenB)
            for(int i=0;i<(lenA-lenB);i++)
                headA = headA->next;
        else
            for(int i=0;i<(lenB-lenA);i++)
                headB = headB->next;
        while(headA != NULL)
        {
            if(headA == headB)
                return headA;
            headA = headA->next;
            headB = headB->next;
        }
        return NULL;
    }
};
