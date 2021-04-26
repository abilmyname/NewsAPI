//
//  FavoriteNews+CoreDataProperties.swift
//  NewsAPI
//
//  Created by Apple on 20/04/21.
//
//

import Foundation
import CoreData


extension FavoriteNews {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavoriteNews> {
        return NSFetchRequest<FavoriteNews>(entityName: "FavoriteNews")
    }

    @NSManaged public var desc: String?
    @NSManaged public var id: UUID?
    @NSManaged public var image: String?
    @NSManaged public var title: String?
    
    public var wrappedId: UUID?{
        id
    }
    
    public var wrappedTitle: String{
        title ?? "unknwon title"
    }
    
    public var wrappedImage: String{
        image ?? "unknwon image"
    }
    
    public var wrappedDesc: String{
        desc ?? "unknwon description"
    }

}

extension FavoriteNews : Identifiable {

}
