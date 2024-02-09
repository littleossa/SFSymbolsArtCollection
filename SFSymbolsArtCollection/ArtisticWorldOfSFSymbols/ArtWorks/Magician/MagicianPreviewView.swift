//
//  MagicianPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct MagicianPreviewView: View {
    
    var body: some View {
        ZStack {
            ForEach(MagicianArtView.Element.allCases) {
                SymbolArtPreviewView(element: $0.value)
            }
        }
    }
}

#Preview {
    MagicianPreviewView()
        .environment(ArtWorkModel.preview)
}
