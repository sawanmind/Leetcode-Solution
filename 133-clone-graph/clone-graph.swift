/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var neighbors: [Node?]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.neighbors = []
 *     }
 * }
 */

class Solution {
    func cloneGraph(_ node: Node?) -> Node? {
        guard let node = node else {return node}

        var dic = [Node: Node]()
        
        let clone = Node(node.val)
        dic[node] = clone

        var queue = [Node]()
        queue.append(node)

        while !queue.isEmpty {
            let curr = queue.removeFirst()

            for neigh in curr.neighbors {
                guard let neigh = neigh else {return nil}
                if dic[neigh] == nil {
                    dic[neigh] = Node(neigh.val)
                    queue.append(neigh)
                }
                

                dic[curr]?.neighbors += [dic[neigh]!]
            }

            
        }

        return clone
    }
}