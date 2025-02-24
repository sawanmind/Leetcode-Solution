class Solution {
    func isValid(_ s: String) -> Bool {
        var s = s
        let count = s.count / 2
        var index = 0

        while index < count && !s.isEmpty {

            s = s.replacingOccurrences(of: "()", with: "")
            s = s.replacingOccurrences(of: "{}", with: "")
            s = s.replacingOccurrences(of: "[]", with: "")


            index += 1
        }

        return s.isEmpty
    }
}