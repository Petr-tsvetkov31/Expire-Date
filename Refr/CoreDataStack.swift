//
//  CoreDataStack.swift
//  ExpireDate
//
//  Created by Петя Цветков  on 28/11/2016.
//  Copyright © 2016 Петя Цветков . All rights reserved.
//

import CoreData

class CoreDataStack {
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CoreDataModel")
        
        container.loadPersistentStores { (storeDescripton, error) in
            if let error = error {
                fatalError("Unresolved error \(error)")
            }
        }
        
        return container
        
    }()
    
    func saveContext() {
        let context = persistentContainer.viewContext
        
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                fatalError("Unresolved error \(error)")
            }
        }
    }
    
}
