class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
      var map: [String: [String]] = [:]
      strs.forEach {
        map[String($0.sorted()),default: []].append($0)
      }
      return Array(map.values)
    }
}