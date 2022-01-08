func findNewIndex(row: Int, col: Int, size: Int) -> (Int, Int) {
    (size - 1 -  col, row)
}
func rotate(array: [[Int]], by k: Int) -> [[Int]] {
    array.enumerated().map { (row, rowArray) in
        return rowArray.enumerated().map { (col, element) in
            let (row, col) = findNewIndex(row: row, col: col, size: rowArray.count)
            return array[row][col]
       }
    }
}

var arr = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]
arr.forEach { print($0) }
print()
rotate(array: arr, by: 7).forEach { print($0) }
