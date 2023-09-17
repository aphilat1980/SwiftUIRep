//
//  InfoRow.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 10.09.2023.
//

import SwiftUI

struct InfoRow: View {
    var post: Film
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(35)
                .padding(.leading, 12)
            
            Text(post.title)
                .font(.title2)
                .padding(10)
            
            Spacer()
        }
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(post: database[0])
    }
}
