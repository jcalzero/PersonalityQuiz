import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case normalMonkey = "🐵", shyMonkey = "🙈", quietMonkey = "🙊", badListenerMonkey = "🙉"
    
    var definition: String {
        switch self {
        case .normalMonkey:
            return "You are incredibly outgoing!"
        case .shyMonkey:
            return "You are shy and very to yourself!"
        case .quietMonkey:
            return "You are a great listener but sometimes don't express yourself as much as you should!"
        case .badListenerMonkey:
            return "You are a bad listener but a great opinion giver!"
        }
    }
}
