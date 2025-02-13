class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var rows = grid.count
        var cols = grid[0].count
        var count = 0
  

        for row in 0..<rows {
            for col in 0..<cols {
                if grid[row][col] == "1" {
                    count += 1
                    search(row, col)
                }
            }
        }

        func search(_ row: Int, _ col: Int) {
            if row < 0 || row >= rows || col < 0 || col >= cols || grid[row][col] == "0" {
                return
            }

            grid[row][col] = "0"

            search(row + 1, col)
            search(row - 1, col)
            search(row, col + 1)
            search(row, col - 1)
        }

        return count
    }
}