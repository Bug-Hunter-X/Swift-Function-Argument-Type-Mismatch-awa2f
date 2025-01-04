func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}

func calculateAreaSafely(length: Double, width: String) -> Double? {
    guard let doubleWidth = Double(width) else {
        return nil // Handle the case where the width cannot be converted to a Double
    }
    return length * doubleWidth
}

let area = calculateArea(length: 10, width: 5) // Correct usage
print(area) // Output: 50.0

let area2 = calculateAreaSafely(length: 10, width: "5") // safer usage with error handling

if let safeArea = area2 {
    print(safeArea) // Output: 50.0
} else {
    print("Error: Invalid width")
}

let area3 = calculateAreaSafely(length: 10, width: "abc") // Handle non-numeric input

if let safeArea = area3 {
    print(safeArea) 
} else {
    print("Error: Invalid width") //Output: Error: Invalid width 
}