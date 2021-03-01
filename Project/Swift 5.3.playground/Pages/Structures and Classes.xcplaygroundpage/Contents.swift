import Foundation

struct Resolution {
    var width: Int = 0
    var height: Int = 0
}

class VideoMode {
    var macbook: Resolution = Resolution(width: 1000, height: 2000)
    var interlaced: Bool = false
    var frameRate: Float = 0.0
    var name: String?
}

let video: VideoMode = VideoMode()

print(video.macbook.self)


//Structures and Enumerations Are Value Types

enum Direcctions {
    case north, south, east, west
    mutating func turnNorth() -> Void {
        self = .north
    }
}

var oldDir: Direcctions = Direcctions.west
let newDir: Direcctions = oldDir
oldDir.turnNorth()

print(oldDir)
print(newDir)
