//
//  CrayonBoyArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct CrayonBoyArtView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        
        ZStack {
            ForEach(Element.allCases) {
                AnimatableSymbolView(element: $0.value,
                                     isAnimating: isAnimating)
            }
        }
        .navigationTitle("Crayon boy")
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
        CrayonBoyArtView()
            .environment(ArtWorkModel.preview)
    }
}
