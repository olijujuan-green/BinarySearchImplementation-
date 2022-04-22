class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        return recursiveSearch(nums, target, 0, nums.count - 1)
    }
    
    func recursiveSearch (_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
        
        if left > right {
            return -1
        }
        
        let mid = left + (right - left) / 2
        
        if target < nums[mid] {
            return recursiveSearch(nums, target, left, mid - 1)
        } else if target > nums[mid] {
            return recursiveSearch(nums, target, mid + 1, right)
        } else {
            return mid
        }
        
        
        
        
    }
}