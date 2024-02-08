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
        case .crayonBoy:
            EmptyView()
        case .magician:
            EmptyView()
        case .worldPeace:
            EmptyView()
        case .partyAnimals:
            PartyAnimals()
        case .armHair:
            ArmHair()
        case .demonWrestler:
            DemonWrestler()
        case .fireworks:
            Fireworks()
        }
    }
}

struct ArtWorkView_Previews: PreviewProvider {
    static var previews: some View {
        ArtWorkView(artwork: .constant(.crayonBoy))
    }
}
