import SwiftUI

struct CalendarView: View {
    var body: some View {
        Text("Calendar / Event Creation")
            .navigationTitle("Calendar")
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CalendarView()
        }
    }
}
