//
//  ContentView.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 10.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            InfoView()
                .tabItem {
                    Label("Info View", systemImage: "list.and.film")
                }
            HelloView()
                .tabItem {
                    Label("HelloView", systemImage: "hand.raised.fill")
                }
            SettingView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
