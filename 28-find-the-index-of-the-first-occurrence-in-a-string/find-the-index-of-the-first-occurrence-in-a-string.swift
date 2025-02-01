class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        bruteforce(haystack, needle)
    }

    func bruteforce(_ haystack: String, _ needle: String) -> Int {
        var haystack = Array(haystack)
        var needle = Array(needle)
        let range = haystack.firstRange(of: needle)

        return range?.distance(from: haystack.startIndex, to: range!.lowerBound) ?? -1
    }
}