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
