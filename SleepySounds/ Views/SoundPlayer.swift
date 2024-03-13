//
//  SoundPlayer.swift
//  SleepySounds
//
//  Created by Amaury Durand-Noel on 13/03/2024.
//

import SwiftUI
import AVKit

struct SoundPlayer: View {
    
    @State var audioPlayer: AVAudioPlayer!
    
    var sound : Sounds
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        self.audioPlayer.play()}) {
                            Image(systemName: "play.circle.fill").resizable()
                                .frame(width: 50, height: 50)
                                .aspectRatio(contentMode: .fit)
                        }
                    Spacer()
                    Button(action: {self.audioPlayer.pause()}) {
                        Image(systemName: "pause.circle.fill").resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                }
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource:sound.soundpath,ofType:"mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf:URL(fileURLWithPath: sound!))
        }
    }
}

#Preview {
    SoundPlayer(sound: ModelData().sounds[0])
}
