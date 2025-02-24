class Solution {
    func isValid(_ s: String) -> Bool {
       var map: [Character:Character] = [")":"(","]":"[","}":"{"]
       var s = s

       var stack = [Character]()

       for char in s {
        if let last = map[char] {
            if stack.isEmpty  || stack.removeLast() != last {return false}
        }else {
            stack.append(char)
        }
       }

       return stack.isEmpty
    }

      func bruteforce(_ s: String) -> Bool {
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