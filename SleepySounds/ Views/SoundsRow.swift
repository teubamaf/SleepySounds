//
//  SoundsRow.swift
//  SleepySounds
//
//  Created by Amaury Durand-Noel on 05/03/2024.
//

import SwiftUI

struct SoundsRow: View {
    
    var sound : Sounds
    
    var body: some View {
        HStack{
            sound.image
                        .resizable()
                        .frame(width : 50, height: 50)
                    Text(sound.name)
            
            Spacer()
            
            if sound.isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                        }
            
        }
        
    }
}

#Preview {
    Group{
        SoundsRow(sound: sounds[0])
        SoundsRow(sound: sounds[1])
    }
    
}
