//
//  SleepySoundsApp.swift
//  SleepySounds
//
//  Created by Amaury Durand-Noel on 04/03/2024.
//

import SwiftUI

@main
struct SleepySoundsApp: App {
    @State private var modelData = ModelData()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}

