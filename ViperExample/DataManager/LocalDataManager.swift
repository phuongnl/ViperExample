//
//  LocalDataManager.swift
//  ViperExample
//
//  Created by Phuong Nguyen on 11/16/17.
//  Copyright © 2017 Phuong Nguyen. All rights reserved.
//

import UIKit
import CoreData

private let kContact = "Contact"

class LocalDataManager {
    
    class func saveContact(firstName: String?, lastName: String?) -> Contact? {
        guard let contact = NSEntityDescription.insertNewObject(forEntityName: kContact, into: CoreDataStore.persistentContainer.viewContext) as? Contact else {
            return nil
        }
        contact.firstName = firstName
        contact.lastName = lastName
        CoreDataStore.saveContext()
        return contact
    }
    
    class func getAllContact() -> [Contact] {
        var contacts = [Contact]()
        do {
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: kContact)
            if let arrayContact = try CoreDataStore.persistentContainer.viewContext.fetch(fetchRequest) as? [Contact] {
                contacts.append(contentsOf: arrayContact)
            }
        } catch {
            log.error("Could not fetch: \(error), \(error.localizedDescription)")
        }
        return contacts
    }
    
}
