//
//  SwiftUIView.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 15.09.2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        List (database[0].actors) {person in
            
            PersonView(person: person)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
