import Foundation

//Example 1
struct BlackJack {
    var rank: Rank, suit: Suit
    
    enum Suit: Character {
        case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
    }
    
    enum Rank: Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king, ace
        
        struct Values {
            let first: Int, second: Int?
        }
        
        var value: Values {
            switch self {
            case .ace:
                return Values(first: 1, second: 11)
            case .jack, .queen, .king:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
    }
    
    var description: String {
        var output = "suit is \(suit.rawValue),"
        output += " value is \(rank.value.first)"
        if let second = rank.value.second {
            output += " or \(second)"
        }
        return output
    }
    
}

var c = BlackJack(rank: .ace, suit: .diamonds)
print(c.description)



//Example 2
struct Chess {
    let colour: Colour, pieceType: PieceType
    
    enum Colour: String {
        case whites, blacks
    }
    
    enum PieceType: String {
        case king, queen, rock, bishop, knight, pawn
        
        struct Units {
            let units: Int
        }
        
        var values: Units {
            switch self {
            case .knight, .bishop, .rock:
                return Units(units: 2)
            case .queen, .king:
                return Units(units: 1)
            case .pawn:
                return Units(units: 8)
            }
            
        }
    }
    
    var description: String {
        var output = "Colour is \(colour.rawValue),"
        output += " value is \(pieceType.rawValue) and there are \(pieceType.values.units) piece(s)"
        return output
    }

}

let piece = Chess(colour: .blacks, pieceType: .knight)
print(piece.description)
