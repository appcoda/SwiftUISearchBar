//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Simon Ng on 24/3/2020.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import Foundation
import CoreData

enum Priority: Int {
    case low = 0
    case normal = 1
    case high = 2
}

struct ToDoItem: Identifiable {
    var id = UUID()
    var name: String = ""
    var priorityNum: Priority = .normal
    var isComplete: Bool = false
}



