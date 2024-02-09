//
//  CrayonBoyPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct CrayonBoyPreviewView: View {
        
    var body: some View {
        ZStack {
            ForEach(CrayonBoyArtView.Element.allCases) {
                SymbolArtPreviewView(element: $0.value)
            }
        }
    }
}

#Preview {
    CrayonBoyPreviewView()
        .environment(ArtWorkModel.preview)
}
