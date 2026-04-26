class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
    var array = nums
    var result: [Int] = []
    
    for i in array.indices {
        let numsExceptElemnet = array.enumerated()
            .filter { $0.offset != i}
            .map {$0.element}
        let value = numsExceptElemnet.reduce(1, *)
        result.append(value)
        
    }
    return result
}
}
