//
//  InfoView.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 10.09.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        
        NavigationView {
            
            List(database) {post in
                
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
                
            }
            .navigationTitle("Films List")
            .listStyle(.plain)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
