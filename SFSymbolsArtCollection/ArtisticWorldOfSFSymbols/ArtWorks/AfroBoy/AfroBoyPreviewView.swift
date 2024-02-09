//
//  AfroBoyPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct AfroBoyPreviewView: View {
        
    var body: some View {
        ZStack {
            ForEach(AfroBoyArtView.Element.allCases) {
                SymbolArtDisplayView(element: $0.value)
            }
        }
    }
}

#Preview {
    AfroBoyPreviewView()
        .environment(ArtWorkModel.preview)
}
