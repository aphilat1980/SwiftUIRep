//
//  InfoView.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 10.09.2023.
//

import SwiftUI

struct InfoView: View {
    
    @Binding var titleOn: Bool
    @Binding var rowHeight:Double
    @Binding var film: Film
    
    var body: some View {
        
        NavigationView {
            
            List(database) {post in
                
                NavigationLink {
                    InfoDetails(post: post)
                        .onAppear {
                            self.film = post
                        }
                } label: {
                    InfoRow(post: post)
                        .frame(height: rowHeight)
                }
                
            }
            .navigationTitle(titleOn ? "Films List" : "")
            .listStyle(.plain)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(titleOn: .constant(true), rowHeight: .constant(60.0), film: .constant(database[0]))
    }
}
