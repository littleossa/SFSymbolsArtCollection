//
//  AfroBoyArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension AfroBoyArtView {
    
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
    AfroBoyArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
