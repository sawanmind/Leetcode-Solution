class Solution {
    func isValid(_ s: String) -> Bool {
       bruteforce(s)
    }

    func optimised(_ s: String) -> Bool {
        var s = s
        var map: [Character:Character] = [")": "(", "}": "{", "]": "["]

        var stack = [Character]()

        for close in s {
            if let open = map[close] {
                if stack.isEmpty || stack.removeLast() != open {return false}
            }else {
                stack.append(close)
            }
        }

        return stack.isEmpty
    }

    func bruteforce(_ s: String) -> Bool {
        var isChanged = true
        var s = s

        while isChanged {
            isChanged = false

            if s.contains("()") {
                s = s.replacingOccurrences(of: "()", with: "")
                isChanged = true
            }

            if s.contains("{}") {
                s = s.replacingOccurrences(of: "{}", with: "")
                isChanged = true
            }

            if s.contains("[]") {
                s = s.replacingOccurrences(of: "[]", with: "")
                isChanged = true
            }
        }

        return s.isEmpty
    }




















}