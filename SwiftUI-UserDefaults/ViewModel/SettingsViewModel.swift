//
//  SettingViewModel.swift
//  SwiftUI-UserDefaults
//
//  Created by Arpit Dixit on 01/08/21.
//

import Foundation

class SettingsViewModel: ObservableObject {
    
    @Published var isOn: Bool = UserDefaults.standard.bool(forKey: "iSOn") {
        didSet {
            UserDefaults.standard.set(isOn, forKey: "iSOn")
        }
    }
}
