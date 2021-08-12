//
//  ToDoAppWithSwiftUIApp.swift
//  ToDoAppWithSwiftUI
//
//  Created by zoniha on 2021/08/12.
//

import SwiftUI

@main
struct ToDoAppWithSwiftUIApp: App {
    var body: some Scene {
		WindowGroup {
            ContentView()
				.environmentObject(UserData())
        }
    }
}
