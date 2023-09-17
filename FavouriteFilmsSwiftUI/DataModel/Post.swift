//
//  Post.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 10.09.2023.
//

import SwiftUI

struct Film: Identifiable {
    
    var id: Int
    var title: String
    var description: String
    var image: Image
    var director: Person
    var actors: [Person]
    var trailerName: String
    
}

struct Person: Identifiable {
    
    var id: Int
    var name: String
    var foto: Image
    
}
