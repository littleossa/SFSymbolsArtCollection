//
//  WorldPeaceArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct WorldPeaceArtView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        
        ZStack {
            ForEach(Element.allCases) {
                AnimatableSymbolView(element: $0.value, isAnimating: isAnimating)
            }
        }
        .navigationTitle("World Peace")
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
        WorldPeaceArtView()
            .environment(ArtWorkModel.preview)
    }
}
