//
//  ArtGalleryView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension ArtGalleryView {
    
    init(screenSize: CGSize) {
        self.model = ArtWorkModel(screenSize: screenSize)
        self.columns = Array(repeating: GridItem(.fixed(model.galleryColumnLength), spacing: model.galleryColumnSpacing),
                             count: model.galleryColumnCount)
    }
}

struct ArtGalleryView: View {
    
    @State private var path = NavigationPath()
    private let model: ArtWorkModel
    private let columns: [GridItem]
    
    var body: some View {
        
        NavigationStack(path: $path) {
            ScrollView {
                LazyVGrid(columns: columns) {
                    
                    ForEach(ArtWorkPath.allCases) { path in
                        NavigationLink(value: path) {
                            path.coverArt
                                .galleryGridItemView(
                                    backgroundColor: path.coverArtBackground,
                                    length: model.galleryColumnLength
                                )
                        }
                    }
                }
                .padding(.horizontal, 24)
                .navigationDestination(for: ArtWorkPath.self) { path in
                    path.destination
                        .navigationTitle(path.rawValue)
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
            .navigationTitle("Art Gallery")
        }
        .environment(model)
    }
}

#Preview {
    ArtGalleryView(screenSize: .init(width: 1024,
                                     height: 1024))
}

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
