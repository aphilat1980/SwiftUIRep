//
//  SettingView.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 11.09.2023.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var titleOn: Bool
    
    @State private var isChanging = false
    @State private var date = Date()
    @State private var toggleOn = false
    @State private var numberOfLikes = 0
    @Binding var rowHeight: Double
    
    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    Text("Установите настройки приложения")
                    Text(colorScheme == .dark ? "Dark Theme enabled" : "Light Theme enabled")
                    DatePicker("Дата", selection: $date, displayedComponents: .date)
                } header: {
                    Text("Основные настройки")
                }
                
                Section {
                    Toggle("Заголовок InfoView", isOn: $titleOn.animation())
                    if titleOn {
                        Text("Navigation Title enabled")
                    }
                } header: {
                    Text("Вспомогательные настройки")
                }
                
                Section {
                    
                    Slider(value: $rowHeight, in: 60...100) {changing in
                        isChanging = changing
                    }
                    if isChanging {
                        InfoRow(post: database[0])
                            .frame(height: rowHeight)
                    }
                } header: {
                    Text("Настройка высоты строки в таблице")
                }
                
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(titleOn: .constant(false), rowHeight: .constant(60.0))
    }
}
