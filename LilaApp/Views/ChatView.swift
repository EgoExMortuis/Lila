import SwiftUI

struct ChatView: View {
    var body: some View {
        Text("Chat with Lila")
            .navigationTitle("Chat")
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ChatView()
        }
    }
}
