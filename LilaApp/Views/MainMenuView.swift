import SwiftUI

struct MainMenuView: View {
    var body: some View {
        VStack(spacing: 20) {
            NavigationLink("Chat with Lila") {
                ChatView()
            }
            NavigationLink("Task List") {
                TaskListView()
            }
            NavigationLink("Calendar / Event Creation") {
                CalendarView()
            }
            NavigationLink("Personal Stats") {
                PersonalStatsView()
            }
            NavigationLink("Mind Palace") {
                MindPalaceView()
            }
        }
        .navigationTitle("Main Menu")
        .padding()
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainMenuView()
        }
    }
}
