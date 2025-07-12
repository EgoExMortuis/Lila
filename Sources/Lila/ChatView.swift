import SwiftUI

struct ChatView: View {
    @State private var inputText: String = ""
    @State private var messages: [Message] = []
    @State private var avatarEmotion: Emotion = .neutral

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                AvatarView(emotion: avatarEmotion)
                    .padding(.top)
                Spacer()
            }
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 8) {
                        ForEach(messages) { message in
                            MessageView(message: message)
                                .id(message.id)
                        }
                    }
                }
                .onChange(of: messages.count) { _ in
                    if let last = messages.last {
                        proxy.scrollTo(last.id, anchor: .bottom)
                    }
                }
            }
            HStack {
                TextField("Message", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Send") {
                    sendMessage()
                }
            }
            .padding()
        }
    }

    private func sendMessage() {
        let userMessage = Message(text: inputText, isUser: true)
        messages.append(userMessage)
        inputText = ""

        // Mock AI response
        let emotion = Emotion.random()
        let responseText = emotion.token + "Hello from Lila!"
        let aiMessage = Message(text: responseText, isUser: false)
        messages.append(aiMessage)

        let header = String(responseText.prefix(10))
        avatarEmotion = Emotion.fromTokenHeader(header)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
