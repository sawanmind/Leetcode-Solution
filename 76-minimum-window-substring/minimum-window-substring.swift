class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        
        let s = Array(s)
        let t = Array(t)

        var result = ""
        var size = 0
        var left = 0
        var minlen = Int.max
        var minstart = 0

        var dicT = [Character: Int]()

        for char in t {
            dicT[char, default: 0] += 1
        }

        var dicS = [Character: Int]()

        for right in 0..<s.count {

            let char = s[right]

            if let _ = dicT[char] {
                dicS[char, default: 0] += 1

                if dicS[char] == dicT[char] {
                    size += 1
                }
            }


            while size == dicT.count {
                if right - left + 1 < minlen {
                    minlen = right - left + 1
                    minstart = left
                }

                let leftchar = s[left]
                if let _ = dicT[leftchar] {
                    if dicS[leftchar] == dicT[leftchar] {
                        size -= 1
                    }

                    dicS[leftchar, default:0] -= 1
                }

                left += 1
            }
        }

        return minlen == Int.max ? "" : String(s[minstart..<minstart+minlen])
    }
}