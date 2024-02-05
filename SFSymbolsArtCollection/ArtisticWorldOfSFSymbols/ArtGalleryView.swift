//
//  ArtGalleryView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension ArtGalleryView {
    
    init(screenSize: CGSize) {
        self._model = State(wrappedValue: ArtWorkModel(screenSize: screenSize))
    }
}

struct ArtGalleryView: View {
    
    @State private var model: ArtWorkModel
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    AfroBoyArtView()
                } label: {
                    Text("Afro boy")
                }
            }
            .navigationTitle("Gallery")
        }
        .environment(model)
    }
}

#Preview {
    ArtGalleryView(screenSize: .init(width: 1024,
                                     height: 1024))
}
