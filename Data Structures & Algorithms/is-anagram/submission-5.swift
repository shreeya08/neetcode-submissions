class Solution {
    func isAnagram(_ string1: String, _ string2: String) -> Bool {
    var counts1: [Character: Int] = [:]
    var counts2: [Character: Int] = [:]
    guard string1.count == string2.count else { return false }
    string1.forEach { counts1[$0, default: 0] += 1 }
    string2.forEach { counts2[$0, default: 0] += 1 }
    
    return counts1 == counts2
}
}