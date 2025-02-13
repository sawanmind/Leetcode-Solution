class Solution {
    func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
        var result = Set<String>()
        var trie = Trie()

        for word in words {
            trie.insert(word)
        }

        var board = board
        var rows = board.count
        var cols = board[0].count
        let directions = [(0,1),(0,-1),(1,0),(-1,0)]

        for row in 0..<rows {
            for col in 0..<cols {
                search(row, col, trie)
            }
        }

        return Array(result)

        func search(_ row: Int, _ col: Int, _ trie: Trie) {
            if row < 0 || row >= rows || col < 0 || col >= cols {return}

            let char = board[row][col]

            guard let node = trie.child[char] else {
                return
            }

            if let word = node.word {
                result.insert(word)
            }

            board[row][col] = "#"

            for dir in directions {
                let newrow = dir.0 + row
                let newcol = dir.1 + col

                search(newrow, newcol, node)
            }

             board[row][col] = char
        }
    }
}

class Trie {
    var child = [Character: Trie]()
    var word: String?

    init() {}

    func insert(_ word: String) {
        var node = self

        for char in word {
            if node.child[char] == nil {
                node.child[char] = Trie()
            }

            node = node.child[char]!
        }

        node.word = word
    }

}