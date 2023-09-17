//
//  HelloView.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 11.09.2023.
//

import SwiftUI
import AVKit

struct FilmTrailerView: View {
    
    @Binding var film: Film
    @State var isShowing: Bool = false
    @State var persona:Person = database[0].director


    var body: some View {
        
        ScrollView {
            Text(film.title)
                .font(.title)
                .foregroundColor(.blue)
                .padding()
            Text ("Film Trailer")
                .bold()
            let player = AVPlayer(url:Bundle.main.url(forResource: film.trailerName, withExtension: "mp4")!  )
            VideoPlayer(player: player)
                    .frame(height: 250)
                    .onAppear {
                        player.play()
                    }
                    .onDisappear {
                        player.pause()
                    }
            Text ("Director")
                    .bold()
            Button {
                self.persona = film.director
                isShowing.toggle()
            } label: {
                PersonView(person: film.director)
            }
                .sheet(isPresented: $isShowing) {
                    PhotoPersonView(person: $persona)
                }
                
            Text ("Actors")
                .bold()
            
            ForEach(film.actors) { i in
                Button {
                    self.persona = i
                    isShowing.toggle()
                } label: {
                    PersonView(person: i)
                }
                   .sheet(isPresented: $isShowing) {
                        PhotoPersonView(person: $persona)
                    }
            }
        }
    }
}
        
        


struct FilmTrailerView_Previews: PreviewProvider {
    static var previews: some View {
        FilmTrailerView(film: .constant(database[0]))
    }
}
