//
//  Assignment.swift
//  NewSideProject
//
//  Created by  on 11/27/19.
//  Copyright © 2019 2EApps. All rights reserved.
//

import UIKit

class Assignment: Codable
{
    var name: String
    var dueDate: String
    var isCompleted: Bool
    init()
    {
        name = "ToDo"
        dueDate = "Tomorrow"
        isCompleted = false
    }
    
    init(theName: String, theDueDate: String)
    {
        name = theName
        dueDate = theDueDate
        isCompleted = false
        
    }
}
