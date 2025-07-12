import SwiftUI

struct MessageView: View {
    let message: Message

    var body: some View {
        HStack {
            if message.isUser { Spacer() }
            Text(message.displayText)
                .padding(8)
                .background(message.isUser ? Color.blue.opacity(0.2) : Color.gray.opacity(0.2))
                .cornerRadius(8)
            if !message.isUser { Spacer() }
        }
        .padding(.horizontal)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message(text: "Hello", isUser: true))
    }
}
