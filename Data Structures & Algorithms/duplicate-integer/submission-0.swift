class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var result = Set<Int>()
        for num in nums {
            if result.contains(num) {
                return true
            } else {
                result.insert(num)
            }
        }
        return false
    }
}

