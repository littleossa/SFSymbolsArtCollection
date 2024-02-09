//
//  WorldPeacePreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct WorldPeacePreviewView: View {
        
    var body: some View {
        
        ZStack {
            ForEach(WorldPeaceArtView.Element.allCases) {
                SymbolArtDisplayView(element: $0.value)
            }
        }
    }
}

#Preview {
    WorldPeacePreviewView()
        .environment(ArtWorkModel.preview)
}
