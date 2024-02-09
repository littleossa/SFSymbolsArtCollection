//
//  PartyAnimalsPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct PartyAnimalsPreviewView: View {
        
    var body: some View {
        ZStack {
            ForEach(PartyAnimalsArtView.Element.allCases) {
                SymbolArtPreviewView(element: $0.value)
            }
        }
    }
}

#Preview {
    PartyAnimalsPreviewView()
        .environment(ArtWorkModel.preview)
}
