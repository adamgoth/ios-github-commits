//
//  Commit+CoreDataProperties.swift
//  github-commits
//
//  Created by Adam Goth on 11/22/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import Foundation
import CoreData

extension Commit {
    @nonobjc public class func createFetchRequest() -> NSFetchRequest<Commit> {
        return NSFetchRequest<Commit>(entityName: "Commit");
    }
    
    @NSManaged public var date: Date
    @NSManaged public var message: String
    @NSManaged public var sha: String
    @NSManaged public var url: String
}
