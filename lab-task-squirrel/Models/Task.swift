//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite climbing place.",
                 description: "Where do you go to boulder and get a great workout?"),
            Task(title: "The best vegan pizza in Arkansas",
                 description: "Which vegan restaurant has the best pizza?"),
            Task(title: "The karaoke bar you and your friends hang out at.",
                 description: "Which bar has great vibes and a great selection of karaoke songs?"),
            Task(title: "The first place you went after finishing a half marathon.",
                 description: "They have great vegan tacos and popsicles.")
        ]
    }
}
