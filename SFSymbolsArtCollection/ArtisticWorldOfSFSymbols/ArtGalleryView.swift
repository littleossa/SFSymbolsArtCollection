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
            
            Spacer()
                .frame(height: 60)
            
            Text("SF Symbols Art")
                .font(.largeTitle)
                .bold()
            
            Text("is just the art created by combining SF Symbols")
            
            NavigationStack {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        
                        Group {
                            NavigationLink {
                                AfroBoyArtView()
                            } label: {
                                AfroBoyPreviewView()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                            
                            NavigationLink {
                                NosebleedArtView()
                            } label: {
                                NosebleedArtPreviewView()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                            
                            NavigationLink {
                                ImWearingPantsArtView()
                            } label: {
                                ImWearingPantsPreviewView()
                                    .galleryGridItemView(length: model.galleryColumnLength)
                            }
                            
                            NavigationLink {
                                AfroBoyArtView()
                            } label: {
                                AfroBoyPreviewView()
                            }
                            
                            NavigationLink {
                                AfroBoyArtView()
                            } label: {
                                AfroBoyPreviewView()
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
