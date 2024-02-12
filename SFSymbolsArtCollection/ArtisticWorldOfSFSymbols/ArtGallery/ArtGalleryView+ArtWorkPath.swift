//
//  ArtGalleryView+ArtWorkPath.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension ArtGalleryView {
    
    enum ArtWorkPath: String, CaseIterable, Identifiable {
        case magician = "Magician"
        case crayonBoy = "Crayon boy"
        case worldPeace = "World peace"
        case partyAnimals = "Party animals"
        case armHair = "Arm hair"
        case demonWrestler = "Demon wrestler"
        case fireworks = "Fireworks"
        case afroBoy = "Afro boy"
        case sweetBeanBunMan = "Sweet bean bun man"
        case nosebleed = "Nosebleed"
        case imWearingPants = "ImWearingPants"
        
        var id: String { rawValue }
        
        @ViewBuilder
        var coverArt: some View {
            switch self {
            case .magician:
                MagicianArtView.CoverArt()
            case .crayonBoy:
                CrayonBoyArtView.CoverArt()
            case .worldPeace:
                WorldPeaceArtView.CoverArt()
            case .partyAnimals:
                PartyAnimalsArtView.CoverArt()
            case .armHair:
                ArmHairArtView.CoverArt()
            case .demonWrestler:
                DemonWrestlerArtView.CoverArt()
            case .fireworks:
                FireworksArtView.CoverArt()
            case .afroBoy:
                AfroBoyArtView.CoverArt()
            case .sweetBeanBunMan:
                SweetBeanBunManArtView.CoverArt()
            case .nosebleed:
                NosebleedArtView.CoverArt()
            case .imWearingPants:
                ImWearingPantsArtView.CoverArt()
            }
        }
        
        var coverArtBackground: Color {
            self == .fireworks ? .midnightNavy : .white
        }
        
        @ViewBuilder
        var destination: some View {
            switch self {
            case .magician:
                MagicianArtView()
            case .crayonBoy:
                CrayonBoyArtView()
            case .worldPeace:
                WorldPeaceArtView()
            case .partyAnimals:
                PartyAnimalsArtView()
            case .armHair:
                ArmHairArtView()
            case .demonWrestler:
                DemonWrestlerArtView()
            case .fireworks:
                FireworksArtView()
            case .afroBoy:
                AfroBoyArtView()
            case .sweetBeanBunMan:
                SweetBeanBunManArtView()
            case .nosebleed:
                NosebleedArtView()
            case .imWearingPants:
                ImWearingPantsArtView()
            }
        }
    }
}

