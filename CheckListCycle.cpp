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
    bool hasCycle(ListNode *head) {
        if(head == NULL)
           return false;
        ListNode* walker = head;
        ListNode* runner = head->next;
        while((walker != runner) && (walker != NULL) && (runner !=NULL)){
            if((walker->next != NULL)&&(walker->next->next != NULL)&& (runner->next != NULL)&&(runner->next->next != NULL)&&(runner->next->next->next != NULL)) 
            {
                runner = runner->next->next->next;
                walker = walker->next->next;
            }
            else
            {
                return false;
            }
        }
        if(runner==walker)
        {
            return true;
        }
        else
        {
            return false;
        }
        
    }
};
