class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
    let n = nums.count
    var res = Array(repeating: 1, count: n)
    
    // Prefix pass
    var left = 1
    for i in 0..<n {
        res[i] = left
        left *= nums[i]
    }
    
    // Suffix pass
    var right = 1
    for i in stride(from: n - 1, through: 0, by: -1) {
        res[i] *= right
        right *= nums[i]
    }
    
    return res
}
}
