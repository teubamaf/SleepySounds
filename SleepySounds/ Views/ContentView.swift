//
//  ContentView.swift
//  SleepySounds
//
//  Created by Amaury Durand-Noel on 04/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SoundsList().tabItem {
                Text("Sounds")
                Image(systemName:"headphones")
            }
            /*SoundPlayer().tabItem {
                    Image(systemName:"playpause.circle.fill")
                    Text("Player")
                }*/
            SettingsDetails().tabItem {
                    Image(systemName:"gearshape.fill")
                    Text("Settings")
                }
            
            
        }
    }
}

#Preview {
    ContentView().environment(ModelData())
}
