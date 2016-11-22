//
//  ViewController.swift
//  github-commits
//
//  Created by Adam Goth on 11/21/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import CoreData
import UIKit

class ViewController: UITableViewController {
    
    var container: NSPersistentContainer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let container = NSPersistentContainer(name: "Project38")
        
        container.loadPersistentStores { storeDescription, error in
            if let error = error {
                print("Unresolved error \(error)")
            }
        }
        
    }
    
    func saveContext() {
        if container.viewContext.hasChanges {
            do {
                try container.viewContext.save()
            } catch {
                print("An error occured while saving: \(error)")
            }
        }
    }

}

