import SwiftUI

struct MindPalaceView: View {
    var body: some View {
        Text("Mind Palace")
            .navigationTitle("Mind Palace")
    }
}

struct MindPalaceView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MindPalaceView()
        }
    }
}
