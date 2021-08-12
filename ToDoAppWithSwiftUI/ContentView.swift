import SwiftUI

struct ContentView: View {
    var body: some View {
		NavigationView {
			List {
				ListRow(task: "Sample")
				Text("+")
					.font(.title)
			}
			.navigationBarTitle(Text("Tsks"))
			.navigationBarItems(trailing: Text("Delete"))
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
