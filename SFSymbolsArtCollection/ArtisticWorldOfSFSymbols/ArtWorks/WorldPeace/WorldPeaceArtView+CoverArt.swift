//
//  WorldPeaceArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension WorldPeaceArtView {
    
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
    WorldPeaceArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
