//
//  Task.swift
//  StateDemo
//
//  Created by David Rocharz on 9/22/24.
//


//
//  Task.swift
//  NightWatch
//
//  Created by David Rocharz on 9/22/24.
//
import Foundation

class Task: ObservableObject {
    
    internal init(name: String, isCompleted: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isCompleted = isCompleted
        self.lastCompleted = lastCompleted
    }
    
    let name: String
    @Published var isCompleted: Bool
    var lastCompleted: Date?
}
