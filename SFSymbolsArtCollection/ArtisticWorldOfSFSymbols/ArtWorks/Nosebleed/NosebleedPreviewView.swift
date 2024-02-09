//
//  NosebleedPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct NosebleedArtPreviewView: View {
        
    var body: some View {
        
        ZStack {
            ForEach(NosebleedArtView.Element.allCases) {
                SymbolArtDisplayView(element: $0.value)
            }
        }
    }
}

#Preview {
    NosebleedArtPreviewView()
        .environment(ArtWorkModel.preview)
}
