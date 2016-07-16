//: Playground - noun: a place where people can play

import Cocoa

// read-only subscript
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print(threeTimesTable[5])

// matrix structre
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            return grid[(row * columns) + column]
        }
        set {
            grid[(row * column) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix.grid

matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
matrix.grid

matrix[0, 1]
matrix[1, 0]

// I don't understand!