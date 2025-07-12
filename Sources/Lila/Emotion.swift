import Foundation

enum Emotion: String, CaseIterable {
    case blink
    case happy
    case sad
    case neutral

    /// 10 character token prefix embedded in responses
    var token: String {
        switch self {
        case .blink: return "<blink>   "
        case .happy: return "<happy>   "
        case .sad: return "<sad>     "
        case .neutral: return "<neutral> "
        }
    }

    /// Parse a token prefix back into an emotion
    static func fromTokenHeader(_ header: String) -> Emotion {
        let trimmed = header.trimmingCharacters(in: .whitespaces)
        switch trimmed {
        case "<blink>": return .blink
        case "<happy>": return .happy
        case "<sad>": return .sad
        case "<neutral>": return .neutral
        default: return .neutral
        }
    }

    static func random() -> Emotion {
        Emotion.allCases.randomElement()!
    }
}
