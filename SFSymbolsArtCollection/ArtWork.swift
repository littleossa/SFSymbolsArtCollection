//
//  ArtWork.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/10.
//

import Foundation

enum ArtWork: Identifiable, CaseIterable {
    case flyingFlower
    case crayonBoy
    case magician
    case worldPeace
    case partyAnimals
    case armHair
    case electroMagneticWaveClub
    case fireworks
    
    var title: String {
        switch self {
        case .flyingFlower:
            return "Flying Flower"
        case .crayonBoy:
            return "Crayon Boy"
        case .magician:
            return "Magician"
        case .worldPeace:
            return "WORLD PEACE"
        case .partyAnimals:
            return "Party Animals"
        case .armHair:
            return "Arm Hair"
        case .electroMagneticWaveClub:
            return "Electro Magnetic Wave Club"
        case .fireworks:
            return "Fireworks"
        }
    }
    
    var id: String { self.title }
}
