//
//  PartyAnimalsArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension PartyAnimalsArtView {
    
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
    PartyAnimalsArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
