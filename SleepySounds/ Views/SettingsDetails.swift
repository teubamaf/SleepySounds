//
//  Settings.swift
//  SleepySounds
//
//  Created by Amaury Durand-Noel on 13/03/2024.
//

import SwiftUI
import MessageUI

struct SettingsDetails: View {
    var body: some View {
        ZStack{
            Text("Settings").font(.title2)
        }
        Spacer()
        VStack(){
            Text("Bugs ?")
            Text("Contact me at")
            Text("contact@amaurydurand.dev")
        }
        HStack(alignment: .bottom) {
            Text("Created with ♥ by Amaury")
        }.padding()
    }
}

#Preview {
    SettingsDetails()
}
