import SwiftUI

struct Draft: View {
	@State var taskTitle = ""
	@EnvironmentObject var userData: UserData

	var body: some View {
		TextField("Add New Task", text: $taskTitle, onCommit: {
			self.createTask()
			self.userData.isEditing = false
		})
			.padding()
    }


	func createTask() {
		let newTask = Task(title: self.taskTitle, isDone: false)
		self.userData.tasks.insert(newTask, at: 0)
		self.taskTitle = ""
	}
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}
