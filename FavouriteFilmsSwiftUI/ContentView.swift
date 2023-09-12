//
//  ContentView.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 10.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("TITLE_KEY") var titleOn = false
    @AppStorage("ROW_HEIGHT_KEY") var rowHeight = 60.0
    
    //@State private var titleOn: Bool = true
    
    var body: some View {
        
        TabView {
            
            InfoView(titleOn: $titleOn, rowHeight: $rowHeight)
                .tabItem {
                    Label("Info View", systemImage: "list.and.film")
                }
            HelloView()
                .tabItem {
                    Label("HelloView", systemImage: "hand.raised.fill")
                }
            SettingView(titleOn: $titleOn, rowHeight: $rowHeight)
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
