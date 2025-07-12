import SwiftUI

struct TaskListView: View {
    var body: some View {
        Text("Task List")
            .navigationTitle("Tasks")
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TaskListView()
        }
    }
}
