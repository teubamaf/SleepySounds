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
        
        
        ScrollView{
            VStack{
                CircleImage(image: sound.image).offset(y:100)
                
            }
            
            VStack(alignment: .leading) {
                Divider()
                Text(sound.name)
                    .font(.title)
                HStack {
                    Spacer()
                    Text(sound.description)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
            }
        }
    }
}

#Preview {
    SoundDetail(sound: ModelData().sounds[0])
}
