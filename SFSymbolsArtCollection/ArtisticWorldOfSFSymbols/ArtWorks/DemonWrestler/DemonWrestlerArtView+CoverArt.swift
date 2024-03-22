//
//  DemonWrestlerArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension DemonWrestlerArtView {
    
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
    DemonWrestlerArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
