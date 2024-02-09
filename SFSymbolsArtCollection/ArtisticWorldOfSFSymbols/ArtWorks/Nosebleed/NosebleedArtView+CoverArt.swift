//
//  NosebleedArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension NosebleedArtView {
    
    struct CoverArt: View {
            
        var body: some View {
            
            ZStack {
                ForEach(Element.allCases) {
                    SymbolArtDisplayView(element: $0.value)
                }
            }
        }
    }
}

#Preview {
    NosebleedArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
