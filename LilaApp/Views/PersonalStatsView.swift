import SwiftUI

struct PersonalStatsView: View {
    var body: some View {
        Text("Personal Stats")
            .navigationTitle("Stats")
    }
}

struct PersonalStatsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PersonalStatsView()
        }
    }
}
