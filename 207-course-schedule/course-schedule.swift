class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var inDegree = Array(repeating: 0, count: numCourses)
        var adjlist = Array(repeating: [Int](), count: numCourses)
        var order = [Int]()

        for pre in prerequisites {
            adjlist[pre[0]].append(pre[1])
            inDegree[pre[1]] += 1
        }

        var queue = [Int]()

        for course in 0..<numCourses {
            if inDegree[course] == 0 {
                queue.append(course)
            }
        }

        while !queue.isEmpty {
            let curr = queue.removeFirst()

            order.append(curr)

            for child in adjlist[curr] {
                inDegree[child] -= 1

                if inDegree[child] == 0 {
                    queue.append(child)
                }
            }
        }

        if order.count != numCourses {return false}

        return true
    }
}