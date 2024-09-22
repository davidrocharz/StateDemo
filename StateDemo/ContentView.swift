//
//  ContentView.swift
//  StateDemo
//
//  Created by David Rocharz on 9/22/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var task: Task
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: task.isCompleted ? "checkmark.square" : "square")
                    .contentTransition(.symbolEffect(.replace))
                Text(task.name)
            }.font(.title).fontWeight(.semibold)
            ControlPanel()
        }
    }
}

struct ControlPanel: View {
    @EnvironmentObject var task: Task
    
    var body: some View {
        VStack {
            if task.isCompleted {
                Button(action: {
                    task.isCompleted = false
                }) { Text("Reset") }
                    .padding(.top)
                    .foregroundStyle(.red).font(.title2)
            } else {
                Button(action: {
                    task.isCompleted = true
                }) { Text("Mark Complete") }.padding(.top).font(.title2)
            }
        }
    }
}

#Preview {
    let previewTask = Task(name: "Preview Task", isCompleted: false, lastCompleted: nil)
    ContentView()
        .environmentObject(previewTask)
}
