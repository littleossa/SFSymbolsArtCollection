//
//  CrayonBoyArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension CrayonBoyArtView {
    
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
    CrayonBoyArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
