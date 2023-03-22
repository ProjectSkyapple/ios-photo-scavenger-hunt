//
//  Task.swift
//  ios-photo-scavenger-hunt
//
//  Created by Aaron Jacob on 3/21/23.
//

import UIKit
import CoreLocation

class Task {
    var name: String
    var question: String
    var isComplete: Bool
    var image: UIImage?
    var location: CLLocation?
    
    // Task constructor
    init(name: String, question: String, isComplete: Bool) {
        self.name = name
        self.question = question
        self.isComplete = isComplete
    }
    
    // Setter method
    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.location = location
        self.isComplete = true
    }
}

extension Task {
    static var myTasks: [Task] = [
        Task(
            name: "Your go-to lunch place 🍔",
            question: "Where is your go-to lunch place?",
            isComplete: false
        ),
        Task(
            name: "The first place you've ever visited on vacation 🏖️",
            question: "Do you still remember where it was?",
            isComplete: false
        ),
        Task(
            name: "Your favorite animal 🐱",
            question: "It's either any cat, or you don't have an opinion.",
            isComplete: false
        )
    ]
}
