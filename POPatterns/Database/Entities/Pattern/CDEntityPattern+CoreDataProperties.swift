//
//  CDEntityPattern+CoreDataProperties.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 19.03.2024.
//
//

import Foundation
import CoreData


extension CDEntityPattern {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDEntityPattern> {
        return NSFetchRequest<CDEntityPattern>(entityName: "CDEntityPattern")
    }

    @NSManaged public var image: Data?
    @NSManaged public var itemTitle: String?
    @NSManaged public var itemDescription: String?
    @NSManaged public var orderID: Int16

}

extension CDEntityPattern : Identifiable {

}
