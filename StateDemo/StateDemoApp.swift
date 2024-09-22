//
//  StateDemoApp.swift
//  StateDemo
//
//  Created by David Rocharz on 9/22/24.
//

import SwiftUI

@main
struct StateDemoApp: App {
    @StateObject private var task = Task(name: "Complete This Task", isCompleted: false, lastCompleted: nil)
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(task)
        }
    }
}
