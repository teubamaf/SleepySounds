//
//  SoundsList.swift
//  SleepySounds
//
//  Created by Amaury Durand-Noel on 05/03/2024.
//

import SwiftUI

struct SoundsList: View {
    
    @State private var showFavoritesOnly = false
    
    var filteredSounds: [Sounds] {
            sounds.filter { sound in
                (!showFavoritesOnly || sound.isFavorite)
            }
        }
    
    
    
    var body: some View {
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites")
                    
                }
                ForEach(filteredSounds) { sound in
                    NavigationLink{
                        SoundDetail(sound: sound)
                    } label: {
                        SoundsRow(sound: sound)
                    }
                }
            }
                .navigationTitle("Sounds")
            }detail: {
                Text("Select a sound")
            }
        }
        
    }


#Preview {
    SoundsList()
}
