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
        self.columns = Array(repeating: GridItem(spacing: model.galleryColumnSpacing),
                             count: model.galleryColumnCount)
    }
}

struct ArtGalleryView: View {
    
    private let model: ArtWorkModel
    private let columns: [GridItem]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    
                    Group {
                        NavigationLink {
                            AfroBoyArtView()
                        } label: {
                            AfroBoyPreviewView()
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
                        }
                    }
                    .padding(model.galleryColumnSpacing)
                    .background(RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 4))
                    .padding(.top, 24)
                }
                .padding(.horizontal, 24)
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
