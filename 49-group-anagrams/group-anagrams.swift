class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        bruteforce(strs)
    }

    func bruteforce(_ strs: [String]) -> [[String]] {
        var dic = [String: [String]]()

        for str in strs {
            dic[String(str.sorted()), default: []].append(str)
        }

        return Array(dic.values)
    }
}