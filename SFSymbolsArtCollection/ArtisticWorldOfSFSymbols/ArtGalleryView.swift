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
    
    private let model: ArtWorkModel
    private let columns: [GridItem]
    
    var body: some View {
        
        VStack {
            
            // Navigation pathの状態によって、この部分の表示非表示を切り替えれるか？
//            Spacer()
//                .frame(height: 60)
//            
//            Text("SF Symbols Art")
//                .font(.largeTitle)
//                .bold()
//            
//            Text("is just the art created by combining SF Symbols")
//            
            NavigationStack {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        
                        Group {
                            NavigationLink {
                                MagicianArtView()
                            } label: {
                                MagicianArtView.CoverArt()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                            
                            NavigationLink {
                                CrayonBoyArtView()
                            } label: {
                                CrayonBoyArtView.CoverArt()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                            
                            NavigationLink {
                                WorldPeaceArtView()
                            } label: {
                                WorldPeaceArtView.CoverArt()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                            
                            NavigationLink {
                                PartyAnimalsArtView()
                            } label: {
                                PartyAnimalsArtView.CoverArt()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                            
                            NavigationLink {
                                ArmHairArtView()
                            } label: {
                                ArmHairArtView.CoverArt()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                            
                            NavigationLink {
                                AfroBoyArtView()
                            } label: {
                                AfroBoyArtView.CoverArt()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                            
                            NavigationLink {
                                NosebleedArtView()
                            } label: {
                                NosebleedArtView.CoverArt()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                            
                            NavigationLink {
                                ImWearingPantsArtView()
                            } label: {
                                ImWearingPantsArtView.CoverArt()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                        }
                    }
                    .padding(.horizontal, 24)
                }
                .navigationTitle("Art Gallery")
            }
        }
        .environment(model)
    }
}

#Preview {
    ArtGalleryView(screenSize: .init(width: 1024,
                                     height: 1024))
}
