//
//  FireworksArtView.swift
//  SFSymbolsArtCollection
//
//  Created Lil Ossa
//

import SwiftUI

struct FireworksArtView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        
        ZStack {
            Color.midnightNavy

            ForEach(Element.allCases) {
                SymbolArtDisplayView(shouldResizeForCoverArt: false, element: $0.value)
            }
        }
        .navigationTitle("Fireworks")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItemGroup(placement: .bottomBar) {
                Spacer()
                
                PlayButton {
                    isAnimating = true
                }
                .font(.system(size: 32))
                .disabled(isAnimating)
            }
        })
    }
}

#Preview {
    NavigationStack {
        FireworksArtView()
            .environment(ArtWorkModel.preview)
    }
}
