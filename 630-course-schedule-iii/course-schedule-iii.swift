import Collections

class Solution {
    func scheduleCourse(_ courses: [[Int]]) -> Int {
        let sortedcourses = courses.sorted(by: {$0[1] < $1[1]})       
        
        var totalTime = 0
        var heap = Heap<Int>()
        
        for i in 0..<sortedcourses.count {
            let duration = sortedcourses[i][0]
            let lastday = sortedcourses[i][1]

           if totalTime + duration <= lastday {
                heap.insert(duration)
                totalTime += duration
            }else if let max = heap.max, max > duration {
                totalTime = totalTime - max + duration
                heap.popMax()
                heap.insert(duration)
            }
        }

        return heap.count
    }
}