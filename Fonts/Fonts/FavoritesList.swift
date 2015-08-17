//
//  FavoritesList.swift
//  Fonts
//
//  Created by Wei Wang on 6/17/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import Foundation
import UIKit

class FavoritesList {
    
    class var sharedFavoriteList: FavoritesList {
        struct Singleton {
            static let instance = FavoritesList()
        }
        return Singleton.instance
    }
    
    private(set) var favorites: [String]
    
    init() {
        let defaults = NSUserDefaults.standardUserDefaults()
        let storedFavorites = defaults.objectForKey("favorites") as? [String]
        favorites = storedFavorites != nil ? storedFavorites! : []
    }
    
    func addFavorite(fontName: String) {
        if (!contains(favorites, fontName)) {
            favorites.append(fontName)
            saveFavorites()
        }
    }
    
    func removeFavorites(fontName: String) {
        if let index = find(favorites, fontName) {
            favorites.removeAtIndex(index)
            saveFavorites()
        }
    }
    
    private func saveFavorites() {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(favorites, forKey: "favorites")
        defaults.synchronize()
    }
}