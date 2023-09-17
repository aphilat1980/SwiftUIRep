//
//  PersonView.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 15.09.2023.
//

import SwiftUI

struct PersonView: View {
    
    var person: Person
    
    var body: some View {
        
        HStack{
            
            person.foto
                .resizable()
                .frame(width: 70, height: 90)
                .scaledToFill()
            
            Text(person.name)
            
            Spacer()
            
        }
        .padding(.leading)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: database[0].actors[0])
    }
}
