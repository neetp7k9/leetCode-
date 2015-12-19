class Solution {
public:
    int findMin(vector<int>& nums) {
        if(nums.size() == 1)
            return nums[0];
        if(nums.front() < nums.back())
            return nums[0];
        int l = 0;
        int r = nums.size() - 1;
        while(r>=l){
            int mid = (r+l)/2;
            if(nums[mid] > nums[r]){
                l = mid + 1;
            }else if(nums[mid] < nums[mid - 1]){
                return nums[mid];
            }else{
                r = mid -1;
            }
        }
        return nums[l];
    }
};
