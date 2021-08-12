import SwiftUI

struct ContentView: View {
	@EnvironmentObject var userData: UserData

	var body: some View {
		NavigationView {
			List {
				ForEach(userData.tasks) { task in
					Button(action: {
						guard let index = self.userData.tasks.firstIndex(of: task) else {
							return
						}

						self.userData.tasks[index].isDone.toggle()
					})
					{
						ListRow(task: task.title, isDone: task.isDone)
					}
				}
				if self.userData.isEditing {
					Draft()
				} else {
					Button(action: {
						self.userData.isEditing = true
					})
					{
						Text("＋")
							.font(.title)
					}
				}
			}
			.navigationBarTitle(Text("Tsks"))
			.navigationBarItems(trailing: Button(action: {
				DeleteTask()
			}, label: {
				Text("Delete")
			}))
		}
	}

	func DeleteTask() {
		let necessaryTask = self.userData.tasks.filter({!$0.isDone})
		self.userData.tasks = necessaryTask
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.environmentObject(UserData())
	}
}
