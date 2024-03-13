//
//  SoundDetail.swift
//  SleepySounds
//
//  Created by Amaury Durand-Noel on 05/03/2024.
//

import SwiftUI

struct SoundDetail: View {
    
    var sound : Sounds
    
    
    var body: some View {
        
        
        VStack {
            Image("RainFast")
                .resizable()
                .frame(height: 300)
                .aspectRatio(contentMode: .fill)
            CircleImage(image: sound.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text(sound.name)
                    .font(.title)
                HStack {
                    Text(sound.description)
                    Spacer()
                    if sound.isFavorite {
                                    Image(systemName: "star.fill")
                                        .foregroundStyle(.yellow)
                                }
                    
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                
                Divider()
                VStack(alignment: .leading){
                    SoundPlayer(sound: sound)
                }
            }
            .padding()
            Spacer()
            
            
        }
    }
}

#Preview {
    SoundDetail(sound: ModelData().sounds[0])
}
