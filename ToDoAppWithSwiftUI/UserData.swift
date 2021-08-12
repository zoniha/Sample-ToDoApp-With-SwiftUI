import SwiftUI

class UserData: ObservableObject {
	@Published var tasks = [
		Task(title: "ele1", isDone: true),
		Task(title: "ele2", isDone: true),
		Task(title: "ele3", isDone: false)
	]

	@Published var isEditing: Bool = false
}
