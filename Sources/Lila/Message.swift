import Foundation

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isUser: Bool

    var displayText: String {
        if isUser { return text }
        return String(text.dropFirst(10))
    }
}
