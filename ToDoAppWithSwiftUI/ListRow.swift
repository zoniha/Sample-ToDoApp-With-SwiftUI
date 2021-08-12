import SwiftUI

struct ListRow: View {
	let task: String
	var isDone: Bool

	var body: some View {
		HStack {
			if isDone {
				Text("☑")
				Text(task)
					.strikethrough(color: Color.blue)
					.fontWeight(.ultraLight)
			} else {
				Text("□")
				Text(task)
			}
		}
	}
}

struct ListRow_Previews: PreviewProvider {
	static var previews: some View {
		ListRow(task: "Sample", isDone: true)
	}
}
