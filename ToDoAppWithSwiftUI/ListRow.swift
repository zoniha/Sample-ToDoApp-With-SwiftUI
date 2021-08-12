import SwiftUI

struct ListRow: View {
	let task: String

    var body: some View {
		HStack {
			Text("□")
			Text(task)
		}
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
		ListRow(task: "Sample")
    }
}
