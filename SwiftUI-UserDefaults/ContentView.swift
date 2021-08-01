//
//  ContentView.swift
//  SwiftUI-UserDefaults
//
//  Created by Arpit Dixit on 01/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var settingViewModel = SettingsViewModel()
    
    var body: some View {
        VStack {
            Toggle(isOn: $settingViewModel.isOn, label: {
                Text("")
            })
            .fixedSize()
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
        .background(settingViewModel.isOn ? Color.green : Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
