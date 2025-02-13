class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var board = board
        var rows = board.count
        var cols = board[0].count
        let word = Array(word) 
        var visited = Array(repeating: Array(repeating: false, count: cols), count: rows)

        for row in 0..<rows {
            for col in 0..<cols {
                if search(row, col, 0) { return true}
            }
        }

        return false

        func search(_ row: Int, _ col: Int, _ i: Int) -> Bool {
            if i == word.count {return true}

            if row < 0 || row >= rows || col < 0 || col >= cols || visited[row][col] || 
            board[row][col] != word[i] {return false}

            visited[row][col] = true

            let found = search(row + 1, col, i + 1) || search(row - 1, col, i + 1) || search(row, col + 1, i + 1) || search(row, col - 1, i + 1)

            visited[row][col] = false

            return found
        }
    }
}