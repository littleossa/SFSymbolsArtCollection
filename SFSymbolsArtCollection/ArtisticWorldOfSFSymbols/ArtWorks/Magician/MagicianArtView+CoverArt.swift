//
//  MagicianArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension MagicianArtView {
    
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
    MagicianArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
