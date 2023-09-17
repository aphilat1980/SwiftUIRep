//
//  InfoDetails.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 10.09.2023.
//

import SwiftUI

struct InfoDetails: View {
    var post: Film
    
    var body: some View {
        ScrollView {
            
            post.image
                .resizable()
            
            Text(post.title)
                .font(.largeTitle).fontWeight(.bold)
                .foregroundColor(.blue)
            
            Text(post.description)//.multilineTextAlignment(.)
                .padding()
                .padding(.top, -25)
        }
        
    }
}

struct InfoDetails_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetails(post: database[3])
    }
}
