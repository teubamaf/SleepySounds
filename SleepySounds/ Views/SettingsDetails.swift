//
//  Settings.swift
//  SleepySounds
//
//  Created by Amaury Durand-Noel on 13/03/2024.
//

import SwiftUI

struct SettingsDetails: View {
    @State private var isModalPresented = false

        var body: some View {
            ZStack{
                VStack(alignment: .leading){
                    Text("Created by Amaury")
                    HStack{
                        Button(action: {
                                self.isModalPresented = true
                            }) {
                                Text("Bugs ?")
                            }
                            .sheet(isPresented: $isModalPresented) {
                                ModalTexte(texte: "Décriver votre problème", onClose: {
                                    self.isModalPresented = false
                                })
                            }
                    }
                }
                
                
                
            }
            
        }
    }


struct ModalTexte: View {
    var texte: String
    let onClose: () -> Void

    var body: some View {
        VStack {
            Text(texte)
            Button(action: {
                onClose()
            }) {
                Text("Fermer")
            }
        }
    }
}


#Preview {
    SettingsDetails()
}
