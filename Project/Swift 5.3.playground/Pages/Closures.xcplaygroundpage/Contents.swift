import Foundation

var names: [String] = ["Charles", "Eric", "Hank", "Eve"]

names.sorted { (a, b) -> Bool in
    a < b
}

names.filter { (a) -> Bool in
    a.hasPrefix("E")
}
