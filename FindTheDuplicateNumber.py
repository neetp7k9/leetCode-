class Solution(object):
    def findDuplicate(self, nums):
        now = nums[0]
        while(now != nums[now]):
            nums[now], now = now, nums[now]
        return now
