import SwiftUI

struct Task: Identifiable, Equatable {
	let id = UUID()
	var title: String
	var isDone: Bool

	init(title: String, isDone: Bool) {
		self.title = title
		self.isDone = isDone
	}
}
