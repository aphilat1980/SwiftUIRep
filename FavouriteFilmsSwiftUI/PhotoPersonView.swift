//
//  PhotoPersonView.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 16.09.2023.
//

import SwiftUI


struct PhotoPersonView: View {
    
    @Binding var person:Person
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack {
            
            person.foto
                .resizable()
                .frame(height: 500)
                .scaledToFill()
            
            Text(person.name)
                .font(.title)
            
            Button ("Back") {
                self.presentationMode.wrappedValue.dismiss()
           }

            
        }
        
    }
}

struct PhotoPersonView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPersonView(person: .constant(database[0].director))
    }
}
