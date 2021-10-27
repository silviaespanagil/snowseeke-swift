//
//  FavoritesModel.swift
//  snowseek
//
//  Created by Silvia España on 27/10/21.
//

import SwiftUI


class Favorites: ObservableObject {
    // the actual resorts the user has favorited
    private var favResorts: Set<String>

    // the key we're using to read/write in UserDefaults
    private let saveKey = "Favorites"

    init() {
        // load our saved data

        // still here? Use an empty array
        self.favResorts = []
    }

    // returns true if our set contains this resort
    func contains(_ resort: Resort) -> Bool {
        favResorts.contains(resort.id)
    }

    // adds the resort to our set, updates all views, and saves the change
    func add(_ resort: Resort) {
        objectWillChange.send()
        favResorts.insert(resort.id)
        save()
    }

    // removes the resort from our set, updates all views, and saves the change
    func remove(_ resort: Resort) {
        objectWillChange.send()
        favResorts.remove(resort.id)
        save()
    }

    func save() {
        // write out our data
    }
}
