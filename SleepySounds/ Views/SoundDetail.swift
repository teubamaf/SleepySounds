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
        VStack{
            VStack(alignment: .leading) {
                Text(sound.name).font(.title)
                
                HStack{
                    Text(sound.description)
                }
            }
        }
    }
}

#Preview {
    SoundDetail(sound: ModelData().sounds[0])
}
