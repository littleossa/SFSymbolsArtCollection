//
//  SweetBeanBunManArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct SweetBeanBunManArtView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            ForEach(Element.allCases) {
                AnimatableSymbolView(element: $0.value, isAnimating: isAnimating)
            }
        }
        .navigationTitle("Sweet bean bun man")
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
        SweetBeanBunManArtView()
            .environment(ArtWorkModel.preview)
    }
}
