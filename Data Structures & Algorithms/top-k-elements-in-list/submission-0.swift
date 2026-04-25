class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dict: [Int: Int] = [:]
    nums.forEach { dict[$0, default: 0] += 1 }
    
    return dict
    .sorted { $0.value > $1.value }
    .prefix(k)
    .map { $0.key }
}
}
