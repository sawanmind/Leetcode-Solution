class Solution {
    func solveNQueens(_ n: Int) -> [[String]] {
        var board = Array(repeating: Array(repeating: ".", count: n), count: n)
        var cols = board[0].count

        var colset = Set<Int>()
        var leftD = Set<Int>()
        var rightD = Set<Int>()
        var result = [[String]]()

        solve(0)

        func solve(_ row: Int) {
            if row == n {
                let res = board.map {$0.reduce("") {$0 + $1}}
                result.append(res)
                return
            }

            for col in 0..<cols {
                if isValid(row, col) {
                    board[row][col] = "Q"
                    colset.insert(col)
                    leftD.insert(row - col)
                    rightD.insert(row + col)

                    solve(row + 1)

                    board[row][col] = "."
                    colset.remove(col)
                    leftD.remove(row - col)
                    rightD.remove(row + col)
                }
            }
        }


        func isValid(_ row: Int, _ col: Int) -> Bool {
            if colset.contains(col) || leftD.contains(row - col) || rightD.contains(row + col) {
                return false
            }

            return true
        }

        return result
    }
}