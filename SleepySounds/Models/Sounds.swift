//
//  Sounds.swift
//  SleepySounds
//
//  Created by Amaury Durand-Noel on 05/03/2024.
//

import Foundation
import SwiftUI


struct Sounds : Hashable, Codable{
    var id: Int
    var name: String
    var description: String
    var soundsPath: String
    
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }}


