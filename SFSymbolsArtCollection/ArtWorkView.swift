//
//  ArtWorkView.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/10.
//

import SwiftUI

struct ArtWorkView: View {
    
    @Binding var artwork: ArtWork
    
    var body: some View {
        
        switch artwork {
        case .flyingFlower:
            FlyingFlower()
        case .crayonBoy:
            CrayonBoy()
        case .magician:
            Magician()
        case .worldPeace:
            WorldPeace()
        case .partyAnimals:
            PartyAnimals()
        case .armHair:
            ArmHair()
        case .electroMagneticWaveClub:
            ElectroMagneticWaveClub()
        case .fireworks:
            Fireworks()
        }
    }
}

struct ArtWorkView_Previews: PreviewProvider {
    static var previews: some View {
        ArtWorkView(artwork: .constant(.flyingFlower))
    }
}
