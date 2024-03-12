//
//  CircleImage.swift
//  SleepySounds
//
//  Created by Amaury Durand-Noel on 08/03/2024.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: 200, height:200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("FastRain"))
}
