class Solution {
    func isAnagram(_ string1: String, _ string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}
}