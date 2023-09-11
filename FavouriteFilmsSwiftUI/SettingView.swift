//
//  SettingView.swift
//  FavouriteFilmsSwiftUI
//
//  Created by Александр Филатов on 11.09.2023.
//

import SwiftUI

struct SettingView: View {
    
    @State private var date = Date()
    @State private var toggleOn = false
    @State private var numberOfLikes = 0
    @State private var sliderValue = 10.0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Установите настройки приложения")
                    DatePicker("Дата", selection: $date, displayedComponents: .date)
                } header: {
                    Text("Основные настройки")
                }
                
                Section {
                    Toggle("Показывать титры", isOn: $toggleOn)
                    Stepper("Количество лайков", value: $numberOfLikes, in: 0...1000)
                    Text("Количество лайков равно  \(numberOfLikes)")
                    Slider(value: $sliderValue, in: 0...100)
                } header: {
                    Text("Второстепенные настройки")
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
