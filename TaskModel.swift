//
//  TaskModel.swift
//  TaskIt
//
//  Created by jerkface on 9/8/15.
//  Copyright (c) 2015 FoMo. All rights reserved.
//

import Foundation
import CoreData

//objective c bridge
@objc(TaskModel)

class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
